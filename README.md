# 🧮 Kalkulator Kredit & Simulasi Pinjaman

Selamat datang di repositori **Kalkulator Kredit**, aplikasi berbasis Flutter yang dirancang untuk membantu pengguna memperkirakan kewajiban pembayaran sebelum mengajukan pinjaman.

Aplikasi ini memudahkan pengguna mengetahui taksiran pembayaran secara praktis cukup dengan memasukkan **jumlah pinjaman**, **tingkat bunga**, dan **jangka waktu tenor/tempo**. Dengan begitu, pengguna dapat melihat gambaran estimasi cicilan dan total pembayaran lebih awal sebelum mengambil keputusan finansial.

## ✨ Fitur Utama

- 💰 Input nominal pinjaman (dalam satuan jutaan)
- 📈 Perhitungan bunga dan taksiran pembayaran otomatis
- ⏳ Pengaturan jangka waktu tenor / tempo pinjaman
- 🔄 Navigasi antar halaman input dan hasil simulasi
- 📱 Antarmuka mobile yang ringkas dan mudah digunakan

## 🏗️ Arsitektur Proyek

Repositori ini merupakan aplikasi mobile berbasis **Flutter** dengan struktur folder utama sebagai berikut:

```text
kalkulator_kredit/
│
├── lib/                 # Kode sumber utama (halaman input, logika hitung, UI)
├── android/             # Konfigurasi build Android
├── ios/                 # Konfigurasi build iOS
├── web/                 # Konfigurasi target web
├── pubspec.yaml         # Daftar dependensi dan aset proyek
└── README.md            # Dokumentasi proyek
```

## 🔄 Alur Penggunaan

```text
Pengguna
   │
   ▼
Membuka Aplikasi & Masuk ke Halaman Input
   │
   ▼
Mengisi Jumlah Pinjaman, Bunga, dan Tempo/Tenor
   │
   ▼
Sistem Menghitung Taksiran Pembayaran
   │
   ▼
Hasil Estimasi Pembayaran Ditampilkan ke Pengguna
```

## 🛠️ Fitur yang Telah Diimplementasikan

- ✅ Halaman awal & navigasi menuju form input
- ✅ Input parameter pinjaman, bunga, dan tenor
- ✅ Perhitungan estimasi pembayaran berbasis input pengguna
- ✅ Struktur proyek Flutter multi-platform (Dart, HTML, Kotlin)

## 📦 Tech Stack

### Framework & Bahasa
- Flutter
- Dart
- Kotlin (Android)
- HTML

## 📌 Catatan

Hasil perhitungan yang ditampilkan pada aplikasi ini bersifat **simulasi / estimasi** untuk membantu gambaran awal pembayaran, sehingga nilai aktual dapat berbeda mengikuti kebijakan dan ketentuan masing-masing penyedia layanan.

## 👨‍💻 Developer

**Mush'ab Al Mubarak**
