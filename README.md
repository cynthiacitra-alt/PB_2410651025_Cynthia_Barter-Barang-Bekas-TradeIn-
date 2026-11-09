# TradeIn

## Deskripsi
TradeIn adalah platform untuk saling menukar barang bekas yang masih layak pakai tanpa transaksi uang tunai.

## Milestone Saat Ini
Data Module v0.3

## Versi
v0.3 - Data Module

## Struktur Proyek
```
lib/
├── main.dart
├── models/
│   └── task.dart
├── Screens/
│   ├── home_page.dart
│   ├── feature_page.dart
│   ├── data_page.dart
│   ├── form_page.dart
│   └── profile_page.dart
└── widgets/
    └── task_card.dart
```

## Daftar Screen
- Home
- Daftar Tugas / Data Module
- Form Tambah atau Edit Data
- Profil

## Model Data
Task:
- id
- title
- description

## Sumber Data
Data sementara di memori aplikasi menggunakan List dan mock data.

## Fitur BAB 7
- Menambahkan model data sederhana.
- Menambahkan local/mock data.
- Menampilkan daftar data menggunakan ListView.builder dan widget TaskCard.
- Menambahkan fitur tambah data.
- Menambahkan fitur ubah data sederhana.
- Menambahkan fitur hapus data.
- Menambahkan empty state ketika data kosong.
- Menambahkan SnackBar sebagai user feedback.
- Memastikan navigasi v0.1 dan Form & Validation v0.2 tetap berjalan.

## Cara Menjalankan
```
flutter pub get
flutter run -d chrome
```

## Skenario Uji
- Data awal tampil.
- Tambah data.
- Ubah data.
- Hapus data.
- Empty state.
- Navigasi tetap berjalan.
- Form lama tetap berjalan.

## Kendala
SDK flutternya hilang tanpa aku ketahui .

## Bukti Running

## Catatan Penggunaan AI
Saya menggunakan AI untuk membantu menyelesaikan error yang dimana errornya itu sdknya tetiba hilang jadi harus memulihkan dengan cara bertanya bagaimana langkah-nya di ai.

## Catatan Keamanan Data
Data yang digunakan merupakan data simulasi dan tidak memuat data pribadi nyata, API key, token, password, credential, atau data sensitif.



# TradeIn

## Deskripsi
TradeIn Platform untuk saling menukar barang bekas yang masih layak pakai tanpa transaksi uang tunai.

## Milestone Saat Ini
Form & Validation v0.2

## Versi
v0.2 - Form & Validation

## Daftar Screen
- Home
- Fitur Utama / Daftar Tugas
- Profil / Input Pengguna
- Form Validasi (baru di BAB 6)

## Cara Menjalankan
flutter run -d chrome

## Fitur BAB 6
- Menambahkan form input pengguna.
- Menggunakan TextFormField untuk input yang divalidasi.
- Menambahkan validasi wajib diisi.
- Menambahkan validasi panjang minimal atau format email sederhana.
- Menampilkan pesan error pada input tidak valid.
- Menampilkan user feedback menggunakan SnackBar.
- Menggunakan state sederhana untuk menampilkan status input.
- Memastikan navigasi v0.1 tetap berjalan.

## Aturan Validasi
- Nama tidak boleh kosong.
- Nama minimal 3 karakter.
- Email tidak boleh kosong.
- Email harus mengandung tanda @.

## Skenario Uji
- Form kosong
- Nama terlalu pendek
- Email tidak valid
- Form valid
- Navigasi tetap berjalan

## Bukti Running
Tambahkan screenshot atau link video singkat aplikasi berjalan.

## Catatan Penggunaan AI
Tidak ada




# TradeIn

## Deskripsi
TradeIn Platform untuk saling menukar barang bekas yang masih layak pakai tanpa transaksi uang tunai.

## Milestone Saat Ini
Navigation v0.1

## Versi
v0.1 - Navigation

## Daftar Screen
- Home
- Fitur Utama / Daftar Tugas
- Profil / Input Pengguna

## Fitur BAB 5
- Navigasi dari Home ke screen lain.
- Tombol kembali menggunakan Navigator.pop.
- Event handling menggunakan onPressed.
- Input pengguna sederhana menggunakan TextField.
- Respons sederhana menggunakan SnackBar.

## Cara Menjalankan
flutter run -d chrome

## Bukti Running
Tambahkan screenshot atau link video singkat aplikasi berjalan.

## Catatan Penggunaan AI
Tidak ada