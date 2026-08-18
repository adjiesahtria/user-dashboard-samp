/* ============================================
   VIDEO BACKGROUND MANAGER - FULL FEATURES
   ============================================ */

(function() {
  'use strict';

  // ============================================
  // KONSTANTA
  // ============================================
  const CONFIG = {
    VIDEO_ID: 'bgVideo',
    STORAGE_TIME: 'bgVideoTime',
    STORAGE_MUTED: 'bgVideoMuted',
    SAVE_INTERVAL: 1000,
    DEFAULT_MUTED: true,
    RETRY_DELAY: 3000,
    MAX_RETRIES: 3,
    DEBUG_MODE: false,
  };

  // ============================================
  // DOM REFERENSI
  // ============================================
  const video = document.getElementById(CONFIG.VIDEO_ID);
  const toggle = document.getElementById('soundToggle');
  const icon = document.getElementById('soundIcon');

  if (!video) {
    console.warn('⚠️ Video element dengan ID "' + CONFIG.VIDEO_ID + '" tidak ditemukan.');
    return;
  }

  // ============================================
  // LOGGER
  // ============================================
  const Logger = {
    log(...args) {
      if (CONFIG.DEBUG_MODE) console.log('📹 [VideoBG]', ...args);
    },
    warn(...args) {
      if (CONFIG.DEBUG_MODE) console.warn('⚠️ [VideoBG]', ...args);
    },
    error(...args) {
      console.error('❌ [VideoBG]', ...args);
    },
    info(...args) {
      if (CONFIG.DEBUG_MODE) console.info('ℹ️ [VideoBG]', ...args);
    },
  };

  // ============================================
  // STORAGE MANAGEMENT
  // ============================================
  const StorageManager = {
    get(key, defaultValue = null) {
      try {
        const value = localStorage.getItem(key);
        if (value === null) return defaultValue;
        try {
          return JSON.parse(value);
        } catch {
          return value;
        }
      } catch (error) {
        Logger.warn('Gagal membaca localStorage:', error);
        return defaultValue;
      }
    },

    set(key, value) {
      try {
        const stringValue = typeof value === 'string' ? value : JSON.stringify(value);
        localStorage.setItem(key, stringValue);
        Logger.log('✅ Data tersimpan:', key, value);
        return true;
      } catch (error) {
        Logger.error('Gagal menyimpan ke localStorage:', error);
        return false;
      }
    },

    remove(key) {
      try {
        localStorage.removeItem(key);
        Logger.log('🗑️ Data terhapus:', key);
        return true;
      } catch (error) {
        Logger.error('Gagal menghapus data:', error);
        return false;
      }
    },

    has(key) {
      return localStorage.getItem(key) !== null;
    },

    clearAll() {
      const keys = [CONFIG.STORAGE_TIME, CONFIG.STORAGE_MUTED];
      keys.forEach(key => this.remove(key));
      Logger.log('🧹 Semua data video telah dibersihkan');
    },
  };

  // ============================================
  // VIDEO STATE MANAGEMENT
  // ============================================
  const VideoState = {
    load() {
      return {
        time: parseFloat(StorageManager.get(CONFIG.STORAGE_TIME)) || 0,
        muted: StorageManager.get(CONFIG.STORAGE_MUTED, CONFIG.DEFAULT_MUTED),
      };
    },

    save(state = {}) {
      if (state.time !== undefined) {
        StorageManager.set(CONFIG.STORAGE_TIME, state.time);
      }
      if (state.muted !== undefined) {
        StorageManager.set(CONFIG.STORAGE_MUTED, state.muted);
      }
    },

    saveCurrent() {
      this.save({
        time: video.currentTime,
        muted: video.muted,
      });
    },
  };

  // ============================================
  // UI UPDATER
  // ============================================
  const SoundUI = {
    update(isMuted) {
      if (!toggle || !icon) return;

      const isOn = !isMuted;
      
      toggle.classList.toggle('on', isOn);
      toggle.title = isOn ? 'Matikan suara' : 'Aktifkan suara';
      toggle.setAttribute('aria-label', isOn ? 'Matikan suara' : 'Aktifkan suara');
      icon.className = isOn 
        ? 'fa-solid fa-volume-high' 
        : 'fa-solid fa-volume-xmark';
      
      Logger.log('🔊 UI suara diperbarui:', isOn ? 'ON' : 'OFF');
    },
  };

  // ============================================
  // VIDEO CONTROLLER
  // ============================================
  let retryCount = 0;

  const VideoController = {
    initialize() {
      const state = VideoState.load();

      // Restore posisi video
      video.currentTime = state.time;
      
      // Restore status mute
      video.muted = state.muted;

      // Update UI tombol
      SoundUI.update(state.muted);

      // Mulai putar video
      this.play();

      Logger.info('🎬 Video diinisialisasi', {
        time: video.currentTime,
        muted: video.muted,
      });
    },

    play() {
      video.play().catch((error) => {
        Logger.warn('Autoplay diblokir:', error.message);
        this.showPlayPrompt();
      });
    },

    showPlayPrompt() {
      if (document.querySelector('.play-prompt')) return;
      
      const prompt = document.createElement('div');
      prompt.className = 'play-prompt';
      prompt.style.cssText = `
        position: fixed;
        bottom: 100px;
        left: 50%;
        transform: translateX(-50%);
        background: rgba(20,20,31,0.9);
        backdrop-filter: blur(10px);
        border: 1px solid rgba(139,92,246,0.3);
        border-radius: 16px;
        padding: 16px 24px;
        color: #f1eefb;
        font-size: 14px;
        z-index: 100;
        cursor: pointer;
        text-align: center;
        max-width: 90%;
        box-shadow: 0 8px 32px rgba(0,0,0,0.5);
        transition: all 0.3s ease;
      `;
      prompt.innerHTML = `
        <i class="fa-solid fa-play" style="color: #8b5cf6; margin-right: 10px;"></i>
        Klik untuk memutar video latar
      `;
      
      prompt.addEventListener('click', () => {
        this.play();
        prompt.remove();
      });
      
      document.body.appendChild(prompt);
      
      setTimeout(() => {
        if (prompt.parentNode) {
          prompt.style.opacity = '0';
          setTimeout(() => prompt.remove(), 300);
        }
      }, 10000);
    },

    toggleMute() {
      video.muted = !video.muted;
      
      SoundUI.update(video.muted);
      VideoState.save({ muted: video.muted });

      if (!video.muted) {
        this.play();
      }
      
      Logger.log('🔊 Mute toggled:', video.muted ? 'MUTED' : 'UNMUTED');
    },

    handleEnded() {
      video.currentTime = 0;
      this.play();
      Logger.log('🔄 Video loop');
    },

    handleError(error) {
      retryCount++;
      Logger.error('Error pada video (percobaan ' + retryCount + '/' + CONFIG.MAX_RETRIES + '):', error);
      
      if (retryCount <= CONFIG.MAX_RETRIES) {
        setTimeout(() => {
          this.play();
        }, CONFIG.RETRY_DELAY);
      } else {
        Logger.error('❌ Gagal memutar video setelah ' + CONFIG.MAX_RETRIES + ' percobaan');
        this.showFallback();
      }
    },

    showFallback() {
      const fallback = document.createElement('div');
      fallback.className = 'video-fallback';
      fallback.style.cssText = `
        position: fixed;
        inset: 0;
        z-index: -1;
        background: linear-gradient(145deg, #0e0e18, #07070c);
        display: flex;
        align-items: center;
        justify-content: center;
        color: #8c88a3;
        font-size: 14px;
        font-family: 'Inter', sans-serif;
      `;
      fallback.innerHTML = `
        <div style="text-align: center;">
          <i class="fa-solid fa-video" style="font-size: 48px; color: #8b5cf6; opacity: 0.5; margin-bottom: 16px; display: block;"></i>
          <span>Video latar tidak tersedia</span>
        </div>
      `;
      
      const videoWrap = document.querySelector('.bg-video-wrap');
      if (videoWrap) {
        videoWrap.style.display = 'none';
      }
      
      document.body.prepend(fallback);
      Logger.warn('🎬 Fallback ditampilkan karena video gagal dimuat');
    },

    setupListeners() {
      // ===== TOMBOL SUARA =====
      if (toggle) {
        toggle.addEventListener('click', () => {
          this.toggleMute();
        });
      }

      // ===== SIMPAN STATE PERIODIK =====
      const saveInterval = setInterval(() => {
        VideoState.saveCurrent();
      }, CONFIG.SAVE_INTERVAL);

      // ===== SIMPAN SAAT UNLOAD =====
      window.addEventListener('beforeunload', () => {
        VideoState.saveCurrent();
        clearInterval(saveInterval);
        Logger.log('💾 State tersimpan sebelum unload');
      });

      // ===== SIMPAN SAAT PAUSE =====
      video.addEventListener('pause', () => {
        VideoState.saveCurrent();
      });

      // ===== LOOP VIDEO =====
      video.addEventListener('ended', () => {
        this.handleEnded();
      });

      // ===== TANGANI ERROR =====
      video.addEventListener('error', (error) => {
        this.handleError(error);
      });

      // ===== VISIBILITY CHANGE =====
      let wasPlaying = false;
      document.addEventListener('visibilitychange', () => {
        if (document.hidden) {
          wasPlaying = !video.paused;
          VideoState.saveCurrent();
          video.pause();
          Logger.log('⏸️ Video paused (tab hidden)');
        } else {
          if (wasPlaying) {
            this.play();
            Logger.log('▶️ Video resumed (tab visible)');
          }
        }
      });

      // ===== KEYBOARD SHORTCUTS =====
      document.addEventListener('keydown', (e) => {
        if ((e.key === 'm' || e.key === 'M') && !e.target.matches('input, textarea, select')) {
          e.preventDefault();
          this.toggleMute();
        }
      });

      Logger.log('🎯 Event listeners terpasang');
    },
  };

  // ============================================
  // START APLIKASI
  // ============================================
  Logger.log('🚀 Memulai Video Background Manager...');
  VideoController.initialize();
  VideoController.setupListeners();

  // ============================================
  // EXPOSE GLOBAL API
  // ============================================
  window.VideoBG = {
    toggleMute: () => VideoController.toggleMute(),
    play: () => VideoController.play(),
    getState: () => VideoState.load(),
    clearAll: () => StorageManager.clearAll(),
    debug: {
      enable: () => { CONFIG.DEBUG_MODE = true; Logger.log('🐛 Debug mode ENABLED'); },
      disable: () => { CONFIG.DEBUG_MODE = false; Logger.log('🐛 Debug mode DISABLED'); },
    },
  };

  Logger.log('✅ Video Background Manager siap digunakan!');
  Logger.log('💡 Gunakan window.VideoBG untuk kontrol manual');

})();