# TradeIn

**Nama:** Cynthia Citra Azaria
**NIM:** 2410651025
**Milestone:** API/Data Extension v1.1

## Sumber Data
Aku pakai **REST API publik**, yaitu JSONPlaceholder.

**Endpoint:** https://jsonplaceholder.typicode.com/todos

Alasan pilih ini karena gratis, ngga butuh API key, dan strukturnya simpel buat latihan.

## Struktur JSON Singkat
Datanya berupa list yang isinya objek, contohnya:

json
{
  "userId": 1,
  "id": 1,
  "title": "delectus aut autem",
  "completed": false
}

Di model `TaskItem` aku pakai `id`, `title`, dan `description`. Karena JSONPlaceholder ngga punya field `description`, nilai `completed` aku ubah jadi teks "Status: selesai" atau "Status: belum selesai". Biar ngga berat, aplikasi cuma nampilin 10 data pertama.

## Struktur File Baru
lib/
  models/task_item.dart            -> model data dari JSON
  services/task_api_service.dart   -> ambil data dari API
  pages/api_task_page.dart         -> halaman buat nampilin data


## Cara Menjalankan
flutter pub get
flutter run -d chrome
Setelah kebuka, klik tombol **Lihat Data API** di halaman Home.

## Bukti Data Tampil
- Screenshot / video: [isi link atau tempel gambar]

## Loading, Error, dan Empty State
Aku pakai `FutureBuilder` di `ApiTaskPage`:
- **Loading:** muncul lingkaran loading pas data lagi diambil.
- **Error:** muncul "Data gagal dimuat." plus tombol "Coba Lagi" buat ambil data ulang. Di service ada timeout 10 detik dan pengecekan status code 200.
- **Empty:** muncul "Belum ada data tersedia." kalau datanya kosong.

## Kendala dan Solusi
`flutter pub get` gagal karena ada blok `dependencies:` dobel di `pubspec.yaml` solusinya Hapus blok yang dobel, terus jalanin `flutter pub get` lagi 
Semua kode merah karena package belum kepasang solusinya Perbaiki `pubspec.yaml` dan jalanin `flutter pub get` 
Tombol API ngga muncul karena `main.dart` masih ngarah ke `DataPage` solusinya Ubah `home:` jadi `HomePage()` lalu restart aplikasi 

## Catatan Penggunaan AI
- **Pakai AI:** Ya
- **Peran:** Explainer dan Scaffolder
- **Dipakai buat:** memahami isi modul BAB 8, bikin kode awal model, service, dan halaman, serta cari tahu penyebab error
- **Yang aku ubah/uji sendiri:** [isi, contoh: nyesuain letak file ke struktur projectku, nambahin tombol di HomePage, ngetes di Chrome]
- **Data sensitif dimasukin ke AI:** Tidak

## Rencana Menuju BAB 9
mungkin mau lanjut bikin Security/Login Module v1.2, yaitu halaman login dengan validasi form, terus disambungin ke halaman data yang udah ada.


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