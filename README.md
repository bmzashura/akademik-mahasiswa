# Akademik Mahasiswa (SIAKMHS)

Aplikasi Flutter untuk Sistem Informasi Akademik Mahasiswa.

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
├── core/              # Konfigurasi global (theme, constants)
├── data/              # Data layer (local data source)
├── models/            # Data models
├── screens/           # UI screens (views)
└── widgets/           # Reusable UI components
```

## Requirements

- Flutter SDK 3.0+
- Dart 3.0+