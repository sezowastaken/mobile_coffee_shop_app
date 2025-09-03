# Coffee Loyalty App

Flutter tabanlı mobil kahve sadakat uygulaması. Müşteriler üyelik oluşturur, puan kazanır/harcar ve menüyü görüntüler.

## Tech Stack
- Flutter
- Riverpod & GoRouter
- Firebase (Auth, Firestore, Analytics, Crashlytics)

## Kurulum
1. Flutter SDK ve gerekli araçları yükleyin.
2. Depoyu klonlayın.
3. Gerekli paketleri indirmek için:
   ```bash
   flutter pub get
   ```

## Çalıştırma
```bash
flutter run
```

## Firebase Bağlama
1. Firebase projesi oluşturun ve `flutterfire` CLI ile bağlayın:
   ```bash
   flutterfire configure --project <FIREBASE_PROJECT_ID>
   ```
   Bu komut `lib/src/core/firebase_options.dart` dosyasını güncelleyecektir.
2. Firebase konsolunda Email/Password Authentication'i aktif edin.
3. Firestore lokasyonu olarak `eur3` tavsiye edilir.

## Klasör Yapısı
```
lib/
  src/
    core/
    constants/
    routing/
    theme/
    utils/
  data/
    models/
    repositories/
  features/
    auth/
    loyalty/
    menu/
    profile/
  shared/
    widgets/
    services/
```

## Renk Paleti
| Token      | Renk    |
|------------|---------|
| primary    | `#c5a988` |
| bg         | `#010202` |
| bgAlt      | `#010303` |
| bgAlt2     | `#010404` |
| card1      | `#312b25` |
| card2      | `#302a22` |

## Firestore Modeli
```
users/{userId}
  transactions/{transactionId}
rewards/{rewardId}
cafes/{cafeId}/menuItems/{itemId} (opsiyonel)
```

### Rules Taslağı
```
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    match /users/{userId} {
      allow read, update: if request.auth != null && request.auth.uid == userId;
      match /transactions/{tid} {
        allow read: if request.auth.uid == userId;
      }
    }
    match /rewards/{rid} { allow read; }
  }
}
```

## Yol Haritası
- Setup: Firebase bağlama (FlutterFire)
- Auth: Email/Password login
- Loyalty: points stream + history listesi
- Menu: Firestore’dan menü listeleme
- QR: mobile_scanner ile tarayıcı
- Cloud Functions: addPoints/redeemReward
