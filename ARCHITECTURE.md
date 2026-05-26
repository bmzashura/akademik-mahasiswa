# Akademik Mahasiswa - SIAKMHS

Aplikasi Flutter untuk Sistem Informasi Akademik Mahasiswa (SIAKMHS).

## Arsitektur

Aplikasi menggunakan **Clean Architecture** dengan struktur modular:

```
lib/
├── core/              # Konfigurasi global (theme, constants)
├── data/              # Data layer (local data source)
├── models/            # Data models
├── screens/           # UI screens (views)
└── widgets/            # Reusable UI components
```

### Pattern
- **Stateless/Stateful Widgets** - Flutter standard pattern
- **Single Responsibility** - Setiap file memiliki satu tujuan
- **Reusable Components** - Widget yang bisa digunakan kembali

---

## Struktur Kode

### `core/` - Konfigurasi Global

| File | deskripsi |
|------|----------|
| `theme/app_theme.dart` | Tema global (warna, typography, spacing) |
| `constants/app_strings.dart` | String/konstanta teks aplikasi |
| `constants/app_assets.dart` | Path assets gambar |

### `data/` - Data Layer

| File | deskripsi |
|------|----------|
| `local_data.dart` | Data statis (profile, jadwal, menu) |

### `models/` - Data Models

| File | deskripsi |
|------|----------|
| `student_profile.dart` | Model data mahasiswa |
| `schedule_item.dart` | Model item jadwal kuliah |
| `home_menu_item.dart` | Model item menu home |

### `screens/` - Halaman UI

| Screen | Route | Deskripsi |
|--------|-------|----------|
| `onboarding/onboarding_screen_one.dart` | `/` | Halaman perkenalan 1 |
| `onboarding/onboarding_screen_two.dart` | `/onboarding2` | Halaman perkenalan 2 |
| `auth/login_screen.dart` | `/login` | Halaman login |
| `screens/main/main_shell.dart` | `/main` | Shell dengan bottom nav |
| `home/home_screen.dart` | (tab) | Halaman home |
| `schedule/schedule_screen.dart` | (tab) | Halaman jadwal kuliah |
| `profile/profile_screen.dart` | (tab) | Halaman profil |

### `widgets/` - Komponen UI

| Widget | deskripsi |
|--------|----------|
| `primary_button.dart` | Tombol utama |
| `home_menu_card.dart` | Kartu menu di home |
| `schedule_tile.dart` | Tile item jadwal |
| `profile_header.dart` | Header profil dengan avatar |
| `app_scaffold.dart` | Scaffold wrapper |

---

## Alur Aplikasi

```
┌─────────────────────────────────────────────────┐
│                  App Start                      │
└─────────────────────┬───────────────────────────┘
                      │
                      ▼
┌─────────────────────────────────────────────────┐
│          OnboardingScreenOne (/)                │
│  [Gradient Header + Logo + Welcome Text]        │
│  [Exit Button] [Next Button]                     │
└─────────────────────┬───────────────────────────┘
                      │ Next
                      ▼
┌─────────────────────────────────────────────────┐
│          OnboardingScreenTwo (/onboarding2)     │
│  [Gradient Header + Features Icon + Text]        │
│  [Back Button] [Mulai Button]                   │
└─────────────────────┬───────────────────────────┘
                      │ Mulai
                      ▼
┌─────────────────────────────────────────────────┐
│              LoginScreen (/login)                │
│  [Gradient Header + Logo]                      │
│  [Email Input] [Password Input]                  │
│  [Login Button]                                 │
└─────────────────────┬───────────────────────────┘
                      │ Login Success
                      ▼
┌─────────────────────────────────────────────────┐
│           MainShell (/main)                     │
│  ┌──────────┬──────────┬──────────┐             │
│  │ Schedule │   Home   │  Profile │  (tabs)    │
│  └──────────┴──────────┴──────────┘             │
└─────────────────────────────────────────────────┘
```

### Navigation Flow

```
Onboarding 1 ──> Onboarding 2 ──> Login ──> Main Shell
                                              │
                               ┌───────────────┼───────────────┐
                               │               │               │
                           Schedule         Home           Profile
                           Screen         Screen          Screen
```

---

## Fitur

### 1. Onboarding
- 2 halaman perkenalan aplikasi
- Gradient header biru
- Ikon/logo circular dengan shadow
- Tombol Exit (halaman 1) dan Back (halaman 2)
- Navigasi dengan `Navigator.push()`

### 2. Login
- Form validasi email & password
- Password visibility toggle
- Gradient header dengan logo
- Navigasi ke Main Shell setelah login

### 3. Bottom Navigation
- 3 tab: Jadwal, Home, Profil
- animasi transisi smooth
- Icon berubah outline/filled sesuai aktif
- Shadow subtle

### 4. Home Screen
- Header dengan avatar & salam sesuai waktu (Pagi/Siang/Sore/Malam)
- Info mahasiswa (nama, NIM)
- Tombol logout
- Grid 2 kolom dengan 4 menu:
  - Akademik (biru)
  - Nilai (hijau)
  - Informasi (oranye)
  - Kalender (merah)

### 5. Schedule Screen
- Header gradient dengan judul
- Subtitle semester
- List jadwal dengan:
  - Badge hari berwarnai unik per hari
  - Info mata kuliah, pengajar
  - Tag waktu & ruangan
  - Shadow sesuai warna hari

### 6. Profile Screen
- Avatar dengan gradient border & shadow
- Badge NIM
- Info: Program Studi, Universitas
- Info card dengan ikon

---

## Tema & Warna

```dart
primaryColor: #1E88E5 (Biru)
secondary:     #18C9C3 (Cyan - lama)
dark:          #1F2937 (Abu gelap)
```

### Gradient Theme (BARU)
```dart
LinearGradient: primaryColor (#1E88E5) → #0D47A1
```

### Warna per Hari
| Hari | Warna |
|------|-------|
| Senin | `#1E88E5` (Biru) |
| Selasa | `#43A047` (Hijau) |
| Rabu | `#FFA000` (Oranye) |
| Kamis | `#E53935` (Merah) |
| Jumat | `#7B1FA2` (Ungu) |

---

## Data Model

### StudentProfile
```dart
- name: String
- nim: String
- programStudy: String
- campusName: String
- photoAsset: String (path ke gambar)
```

### ScheduleItem
```dart
- courseName: String
- lecturerName: String
- day: String (Senin-Minggu)
- time: String (format: "HH:MM - HH:MM")
- room: String
- lecturerPhotoAsset: String
```

### HomeMenuItem
```dart
- title: String
- imageAsset: String
```

---

## Teknis

- **Flutter** - Framework UI
- **Dart** - Bahasa pemrograman
- **Material 3** - Design system
- **SafeArea** - Layout adaptif notch/device
- **Gradient backgrounds** - Desain visual modern
- **ClampingScrollPhysics** - Menghilangkan rubber-band effect pada scroll
- **Asset Image** - Foto profil dinamis berdasarkan NIM
