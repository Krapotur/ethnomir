'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter.js": "24bc71911b75b5f8135c949e27a2984e",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"manifest.json": "00f2fdf6f22f1b94348d549f0bb18fbc",
"index.html": "4bc280640ec3ab39e57194b18ac16857",
"/": "4bc280640ec3ab39e57194b18ac16857",
"assets/shaders/stretch_effect.frag": "40d68efbbf360632f614c731219e95f0",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin.json": "bf9702fd920a6ef1bf633f2f9aed084d",
"assets/assets/images/cart_empty.png": "2691d77a4d785c5e31f6d398695c94c6",
"assets/assets/images/rest/kochevnik.png": "2bebe4dcfcaac8133a45244180b898cd",
"assets/assets/images/rest/chai.png": "d53e3dd89dc10b83985a1305c116d03c",
"assets/assets/images/rest/borsh.png": "b8ae9afa5a9d16e83884a69946d1de84",
"assets/assets/images/menu/fanta.png": "b44a4b0d533e760103d6a71904f10bc3",
"assets/assets/images/menu/apelsin.png": "f133f05fa1f6e2bfaae536c1b22b822c",
"assets/assets/images/menu/lagman.png": "f17dadf26001366270093181fdac7692",
"assets/assets/images/menu/fastfood.png": "4c83b5599947a8a86d9c27f01329e86a",
"assets/assets/images/menu/manty.png": "68a20bfd3885f19c94abf53fc46ad6aa",
"assets/assets/images/menu/salat.png": "055ddada44abdb114931a734db12d651",
"assets/assets/images/menu/1.jpg": "2d09c9b231e9a14c4352276ed7546ab1",
"assets/assets/images/menu/pizza.png": "f9b2bebe2c536b56232cb894f1cb1c8b",
"assets/assets/images/menu/apple.png": "64b48e4e8aaadf6c4e0520c8c7d63529",
"assets/assets/images/menu/cheeze.png": "9ee2b6b0f12aeb4fbf8f8526dc6a315b",
"assets/assets/images/menu/plov.png": "dc691e29ce5e7e9208b7471a9fe3e15d",
"assets/assets/images/menu/cola.png": "d4ed6ed5595435d035fae38b6f453511",
"assets/assets/images/menu/mangal.png": "d9f607c36a22df7fec05c1478b87cef9",
"assets/assets/images/menu/shorpa.png": "1e8ad27ad3b98096c2b5123d29aa4ea6",
"assets/assets/images/auth_screen/logo.jpg": "8c783cb8d000e3a7ba96e1b2eaea4ee3",
"assets/assets/images/auth_screen/logo.png": "6a5ef2b8cf957b50934cb0cdf9e0ba24",
"assets/assets/images/auth_screen/street.jpg": "c688899acab2b865c11875e697faf179",
"assets/assets/images/categories_img/salat.png": "5083f149ed10ea62c296b8f1b1444501",
"assets/assets/images/categories_img/baran.png": "288479bb27039ed30e458cd697fb9b68",
"assets/assets/images/categories_img/hot.png": "5393182293e0cb89b4543822f7e2af2c",
"assets/assets/images/categories_img/desert.png": "adb657767fcb8866e9ed176595a119bf",
"assets/assets/images/categories_img/drink.png": "17d1a970801c58a6b484004404c29fd8",
"assets/assets/images/categories_img/kids.png": "646a2f79a4d1ae769299239eaac16f8b",
"assets/assets/images/categories_img/mangal.png": "49f26b786d6289f4b2333ae407e0cc05",
"assets/fonts/Gilroy/Gilroy-Semibold.ttf": "5805f8725336e8514a682ebcc45d8f74",
"assets/fonts/Gilroy/Gilroy-Medium.ttf": "ef9daf9c32f47a3468f30f861e92b9c4",
"assets/fonts/Gilroy/Gilroy-Light.otf": "c62aded729bf7146d491275e5019d7fc",
"assets/fonts/MaterialIcons-Regular.otf": "3ab5c9e09636c2f3d14c4cb488ea5db6",
"assets/NOTICES": "9fb2e7f350195414c042d36980cc3fee",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/font_awesome_flutter/lib/fonts/Font-Awesome-7-Free-Solid-900.otf": "5b8d20acec3e57711717f61417c1be44",
"assets/packages/font_awesome_flutter/lib/fonts/Font-Awesome-7-Brands-Regular-400.otf": "1fcba7a59e49001aa1b4409a25d425b0",
"assets/packages/font_awesome_flutter/lib/fonts/Font-Awesome-7-Free-Regular-400.otf": "b2703f18eee8303425a5342dba6958db",
"assets/FontManifest.json": "28f44c41f9782529bc41e2099223015a",
"assets/AssetManifest.bin": "11cd98e172edf7fd2071bc825b1263d1",
"canvaskit/chromium/canvaskit.wasm": "a726e3f75a84fcdf495a15817c63a35d",
"canvaskit/chromium/canvaskit.js": "a80c765aaa8af8645c9fb1aae53f9abf",
"canvaskit/chromium/canvaskit.js.symbols": "e2d09f0e434bc118bf67dae526737d07",
"canvaskit/skwasm_heavy.wasm": "b0be7910760d205ea4e011458df6ee01",
"canvaskit/skwasm_heavy.js.symbols": "0755b4fb399918388d71b59ad390b055",
"canvaskit/skwasm.js": "8060d46e9a4901ca9991edd3a26be4f0",
"canvaskit/canvaskit.wasm": "9b6a7830bf26959b200594729d73538e",
"canvaskit/skwasm_heavy.js": "740d43a6b8240ef9e23eed8c48840da4",
"canvaskit/canvaskit.js": "8331fe38e66b3a898c4f37648aaf7ee2",
"canvaskit/skwasm.wasm": "7e5f3afdd3b0747a1fd4517cea239898",
"canvaskit/canvaskit.js.symbols": "a3c9f77715b642d0437d9c275caba91e",
"canvaskit/skwasm.js.symbols": "3a4aadf4e8141f284bd524976b1d6bdc",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter_bootstrap.js": "aa5f1546e6ed1a3114962ecf9aae60e4",
"version.json": "73d21e1d58f3aeada41abfe383513ed7",
"main.dart.js": "3c027981e78989c1f4f3abb25b077273"};
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
