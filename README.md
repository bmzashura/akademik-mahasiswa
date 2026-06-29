# Akademik Mahasiswa (SIAKMHS)

Aplikasi Flutter untuk Sistem Informasi Akademik Mahasiswa (SIAKMHS).

## Cara Menjalankan Aplikasi

### 1. Install Dependencies

```bash
flutter pub get
```

### 2. Run Aplikasi

```bash
flutter run
```

### 3. Build Release (Opsional)

```bash
flutter build apk --release    # Android
flutter build ios --release    # iOS
```

## Struktur Proyek

```
lib/
├── core/                     # Konfigurasi global
│   ├── constants/            # App strings, assets
│   └── theme/                # App theme
├── data/                     # Data layer (local data source)
├── models/                   # Data models
├── screens/                  # UI screens (views)
│   ├── auth/                 # Login screen
│   ├── home/                 # Home screen
│   ├── main/                 # Main shell (bottom navigation)
│   ├── onboarding/           # Onboarding screens
│   ├── profile/              # Profile screen
│   ├── riwayat_pendidikan/   # Riwayat pendidikan screen
│   ├── schedule/             # Schedule screen
│   └── splash/               # Splash screen
├── services/                 # Business logic services
│   ├── auth_service.dart     # Firebase Auth service
│   └── firestore_service.dart # Firestore CRUD service
└── widgets/                  # Reusable UI components
```

## Fitur

- **Autentikasi**: Login dengan Firebase Authentication
- **Profil**: Menampilkan profil mahasiswa
- **Jadwal**: Menampilkan jadwal perkuliahan
- **Riwayat Pendidikan**: Riwayat pendidikan mahasiswa dari Firestore
- **Onboarding**: Screens untuk新生 orientasi

## Teknologi

- Flutter SDK 3.11+
- Dart 3.11+
- Firebase Auth
- Cloud Firestore
- Cupertino Icons

## Requirements

- Flutter SDK 3.0+
- Dart 3.0+