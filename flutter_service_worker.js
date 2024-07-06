'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"icons/ms-icon-144x144.png": "67b159b1fa0f9717ae19a42d170a0af9",
"icons/android-icon-48x48.png": "a88c824e14ad3df30f4d96356a9ef463",
"icons/favicon-32x32.png": "67c63a6d25240e12c7c188c94b554994",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/apple-icon-60x60.png": "3c04364ef93e13e12c94d6e2ff8203c6",
"icons/apple-icon-72x72.png": "14d26ba78b85bea1a3895fe9e7d22754",
"icons/apple-icon-144x144.png": "67b159b1fa0f9717ae19a42d170a0af9",
"icons/ms-icon-70x70.png": "69080adac95867ab857d8f9f5a90a0b6",
"icons/apple-icon-180x180.png": "01a81965add4f65c8a8c3eba2e241399",
"icons/ms-icon-310x310.png": "ce7bc7fd6a6d6701f912f3db3c6bc3c5",
"icons/favicon-96x96.png": "3dea6a430de279ccf891d28d17a045e0",
"icons/apple-icon-precomposed.png": "94c1760063f09472ebcd9a67d8d1d4f5",
"icons/favicon.ico": "7755af7b8b4c4d90ee5315fc1aa4f05b",
"icons/android-icon-144x144.png": "67b159b1fa0f9717ae19a42d170a0af9",
"icons/android-icon-192x192.png": "beb3db7e60e9cf8f9859937e7c9e0dab",
"icons/apple-icon-76x76.png": "c03fc577b05c7d6f6f693ad5df4d2112",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/apple-icon-114x114.png": "f866ea7fa92a9ee43dc8e130791b0a15",
"icons/ms-icon-150x150.png": "b030ed65fd4990d3dc11a253bf8cbd7c",
"icons/favicon-16x16.png": "152f47c674334d4ea5711be28b22c6dd",
"icons/apple-icon-120x120.png": "88f1b4d0db089936fdece2580433eabd",
"icons/android-icon-96x96.png": "3dea6a430de279ccf891d28d17a045e0",
"icons/android-icon-72x72.png": "14d26ba78b85bea1a3895fe9e7d22754",
"icons/apple-icon-152x152.png": "7309f0388471c84716aa1724516119a3",
"icons/browserconfig.xml": "653d077300a12f09a69caeea7a8947f8",
"icons/apple-icon.png": "94c1760063f09472ebcd9a67d8d1d4f5",
"icons/manifest.json": "b58fcfa7628c9205cb11a1b2c3e8f99a",
"icons/apple-icon-57x57.png": "5f0756bb0e0d4dac347d566c8ac470ec",
"icons/android-icon-36x36.png": "c5dfcdb431f54bc885877ba6c4dae343",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"flutter_bootstrap.js": "2d6401f56b4d52d4fd6f3f274862959e",
"version.json": "79c0c210ec3de4d439665244313ab36d",
"favicon.png": "d1d5efd743b5bd831ee05782e5dcd051",
"main.dart.js": "a09398e218cc44ac3b50922c87382a87",
"assets/NOTICES": "ab674b382296366545210980b0413075",
"assets/AssetManifest.bin": "ad656c43cd9e91ee290dbd111b9985be",
"assets/assets/icons/dribble.svg": "d392567c5678d42472d2c7b766268101",
"assets/assets/icons/github.svg": "9226aa209923e38c0a6ddcb236e2bc68",
"assets/assets/icons/twitter.svg": "a4a0163fef48a4247a305528c07bc4fa",
"assets/assets/icons/download.svg": "628700a3031424d215a441fab2da1731",
"assets/assets/icons/behance.svg": "35ad2d47e647d0b168e7707b2984c6b5",
"assets/assets/icons/check.svg": "4220c82511cc1dfb40b8bba7d25c5f55",
"assets/assets/icons/linkedin.svg": "5b2195ddf9e879047dd8a163c4194920",
"assets/assets/images/bg.jpg": "f3815a3d06ecf30d53ebb522eb5f1f89",
"assets/assets/images/dimiour.jpg": "eea277d07a4aa888044edd3de25fb4b1",
"assets/assets/images/mypic.jpg": "bac0558068cea44d6d834f4274234f31",
"assets/assets/images/bg.jpeg": "c6449162dc3940daa640a43101cfd66c",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/AssetManifest.bin.json": "1562a126a7c01363b573786ef43b6fe7",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "66ad0a0b1b69380ac26e79dba4f09217",
"assets/AssetManifest.json": "8c0e2eaad9e92e416fd7eaf858662b2f",
"sp_black1.jpg": "1e921dccc7679ddddf260034a703e9ad",
"index.html": "cc8e9fc8513cc4456ce65e3a855a781b",
"/": "cc8e9fc8513cc4456ce65e3a855a781b",
"manifest.json": "bb12562bdf5a5cae7c25824b362cc717"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
