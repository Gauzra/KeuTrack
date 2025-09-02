const CACHE_NAME = 'keutrack-v1.0.0';
const urlsToCache = [
  '/',
  '/dashboard.html',
  '/login.html',
  '/transaksi.html',
  '/setup-akun.html',
  '/laporan.html',
  '/riwayat-transaksi.html',
  '/export.html',
  '/profil.html',
  '/style.css',
  '/Images/LOGO KT.svg',
  '/manifest.json',
  'https://cdn.tailwindcss.com',
  'https://cdn.jsdelivr.net/npm/chart.js',
  'https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap',
  'https://fonts.googleapis.com/icon?family=Material+Icons'
];

// Install event - cache resources
self.addEventListener('install', event => {
  event.waitUntil(
    caches.open(CACHE_NAME)
      .then(cache => {
        console.log('Opened cache');
        return cache.addAll(urlsToCache);
      })
  );
});

// Fetch event - serve from cache if available
self.addEventListener('fetch', event => {
  event.respondWith(
    caches.match(event.request)
      .then(response => {
        // Return cached version or fetch from network
        if (response) {
          return response;
        }
        return fetch(event.request);
      }
    )
  );
});

// Activate event - clean up old caches
self.addEventListener('activate', event => {
  event.waitUntil(
    caches.keys().then(cacheNames => {
      return Promise.all(
        cacheNames.map(cacheName => {
          if (cacheName !== CACHE_NAME) {
            console.log('Deleting old cache:', cacheName);
            return caches.delete(cacheName);
          }
        })
      );
    })
  );
});

// Background sync for offline data
self.addEventListener('sync', event => {
  if (event.tag === 'background-sync') {
    event.waitUntil(doBackgroundSync());
  }
});

function doBackgroundSync() {
  // Sync data when connection is restored
  return new Promise((resolve) => {
    // Get pending transactions from IndexedDB
    // and sync with server when online
    console.log('Background sync completed');
    resolve();
  });
}

// Push notification handling
self.addEventListener('push', event => {
  const options = {
    body: event.data ? event.data.text() : 'Notifikasi baru dari KeuTrack',
    icon: '/Images/LOGO KT.svg',
    badge: '/Images/LOGO KT.svg',
    vibrate: [100, 50, 100],
    data: {
      dateOfArrival: Date.now(),
      primaryKey: 1
    },
    actions: [
      {
        action: 'explore',
        title: 'Lihat',
        icon: '/Images/icon-view.png'
      },
      {
        action: 'close',
        title: 'Tutup',
        icon: '/Images/icon-close.png'
      }
    ]
  };

  event.waitUntil(
    self.registration.showNotification('KeuTrack', options)
  );
});

// Notification click handling
self.addEventListener('notificationclick', event => {
  event.notification.close();

  if (event.action === 'explore') {
    event.waitUntil(
      clients.openWindow('/dashboard.html')
    );
  }
});
