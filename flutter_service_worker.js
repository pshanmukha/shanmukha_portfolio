'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"favicon.png": "d1d5efd743b5bd831ee05782e5dcd051",
"assets/AssetManifest.json": "c9b31b86d694cb77cc7d7680536ef620",
"assets/assets/images/bg.jpg": "f3815a3d06ecf30d53ebb522eb5f1f89",
"assets/assets/images/bg.jpeg": "c6449162dc3940daa640a43101cfd66c",
"assets/assets/images/mypic.jpg": "bac0558068cea44d6d834f4274234f31",
"assets/assets/images/accenture.png": "6f76bb854680185d2a5adf39a4c9822a",
"assets/assets/images/michaelpage.png": "16d697cbbe73ce2c6a49e85b406736ae",
"assets/assets/images/dimiour.jpg": "eea277d07a4aa888044edd3de25fb4b1",
"assets/assets/images/dimiour_vdart.png": "f167af3eb0074a563fd536820055c403",
"assets/assets/icons/github.svg": "9226aa209923e38c0a6ddcb236e2bc68",
"assets/assets/icons/twitter.svg": "a4a0163fef48a4247a305528c07bc4fa",
"assets/assets/icons/dribble.svg": "d392567c5678d42472d2c7b766268101",
"assets/assets/icons/download.svg": "628700a3031424d215a441fab2da1731",
"assets/assets/icons/check.svg": "4220c82511cc1dfb40b8bba7d25c5f55",
"assets/assets/icons/behance.svg": "35ad2d47e647d0b168e7707b2984c6b5",
"assets/assets/icons/linkedin.svg": "5b2195ddf9e879047dd8a163c4194920",
"assets/NOTICES": "e84aa480a3f66b65017eea1d72811491",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "5f72d664707e4d711a1c0c240912cd50",
"assets/AssetManifest.bin.json": "ecbdd0c96ff6746a9b6748ae61603ed3",
"assets/fonts/MaterialIcons-Regular.otf": "e3fd2d2ce8cf8f591c8ba87f678b06a3",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "e1bbfd5f67dc2dcb8ed246439f1db4e9",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"index.html": "13fcb482d0d68c4230d276083e42ea69",
"/": "13fcb482d0d68c4230d276083e42ea69",
"manifest.json": "bb12562bdf5a5cae7c25824b362cc717",
"sp_black1.jpg": "1e921dccc7679ddddf260034a703e9ad",
"flutter_bootstrap.js": "3ede94585e1fc15b261bc3892e31c510",
"main.dart.js": "febd00e79d9773c24f6c6835cc54b535",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/canvaskit.js": "6cfe36b4647fbfa15683e09e7dd366bc",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/chromium/canvaskit.js": "ba4a8ae1a65ff3ad81c6818fd47e348b",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"version.json": "79c0c210ec3de4d439665244313ab36d",
"icons/favicon-96x96.png": "3dea6a430de279ccf891d28d17a045e0",
"icons/apple-icon-120x120.png": "88f1b4d0db089936fdece2580433eabd",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/ms-icon-310x310.png": "ce7bc7fd6a6d6701f912f3db3c6bc3c5",
"icons/manifest.json": "b58fcfa7628c9205cb11a1b2c3e8f99a",
"icons/android-icon-36x36.png": "c5dfcdb431f54bc885877ba6c4dae343",
"icons/android-icon-72x72.png": "14d26ba78b85bea1a3895fe9e7d22754",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/apple-icon-76x76.png": "c03fc577b05c7d6f6f693ad5df4d2112",
"icons/android-icon-96x96.png": "3dea6a430de279ccf891d28d17a045e0",
"icons/android-icon-144x144.png": "67b159b1fa0f9717ae19a42d170a0af9",
"icons/apple-icon-152x152.png": "7309f0388471c84716aa1724516119a3",
"icons/favicon.ico": "7755af7b8b4c4d90ee5315fc1aa4f05b",
"icons/ms-icon-150x150.png": "b030ed65fd4990d3dc11a253bf8cbd7c",
"icons/ms-icon-144x144.png": "67b159b1fa0f9717ae19a42d170a0af9",
"icons/android-icon-192x192.png": "beb3db7e60e9cf8f9859937e7c9e0dab",
"icons/apple-icon.png": "94c1760063f09472ebcd9a67d8d1d4f5",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/browserconfig.xml": "653d077300a12f09a69caeea7a8947f8",
"icons/apple-icon-72x72.png": "14d26ba78b85bea1a3895fe9e7d22754",
"icons/apple-icon-180x180.png": "01a81965add4f65c8a8c3eba2e241399",
"icons/android-icon-48x48.png": "a88c824e14ad3df30f4d96356a9ef463",
"icons/apple-icon-114x114.png": "f866ea7fa92a9ee43dc8e130791b0a15",
"icons/favicon-16x16.png": "152f47c674334d4ea5711be28b22c6dd",
"icons/apple-icon-57x57.png": "5f0756bb0e0d4dac347d566c8ac470ec",
"icons/ms-icon-70x70.png": "69080adac95867ab857d8f9f5a90a0b6",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/apple-icon-144x144.png": "67b159b1fa0f9717ae19a42d170a0af9",
"icons/favicon-32x32.png": "67c63a6d25240e12c7c188c94b554994",
"icons/apple-icon-60x60.png": "3c04364ef93e13e12c94d6e2ff8203c6",
"icons/apple-icon-precomposed.png": "94c1760063f09472ebcd9a67d8d1d4f5"};
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
