# CHANGELOG
## v0.3 - Data Module
Tanggal: 2026-11-03

Perubahan:
- Menambahkan model data `Task` (id, title, description) di `lib/models/task.dart`.
- Menambahkan local/mock data berupa List di memori aplikasi sebagai data awal TradeIn.
- Menambahkan halaman daftar data (`data_page.dart`) yang menampilkan data dengan `ListView.builder`.
- Menambahkan widget reusable `TaskCard` (`lib/widgets/task_card.dart`) untuk menampilkan satu item pada daftar.
- Menambahkan fitur tambah data melalui `form_page.dart`.
- Menambahkan fitur ubah data sederhana melalui form yang sama.
- Menambahkan fitur hapus data.
- Menambahkan empty state ketika data kosong.
- Menambahkan SnackBar sebagai user feedback setelah tambah, ubah, dan hapus data.
- Memastikan navigasi v0.1 dan Form & Validation v0.2 tetap berjalan.


## v0.2 - Form & Validation
Tanggal: [2026-10-27]

Perubahan:
- Menambahkan form input pengguna.
- Menggunakan TextFormField untuk input yang divalidasi.
- Menambahkan validasi input wajib diisi.
- Menambahkan validasi panjang minimal atau format sederhana.
- Menambahkan pesan error pada input tidak valid.
- Menambahkan SnackBar sebagai user feedback.
- Menambahkan state sederhana untuk menampilkan status input.
- Memastikan navigasi v0.1 tetap berjalan.

Bukti:
- Screenshot/video aplikasi berjalan tersedia.
- Screenshot/video skenario uji validasi tersedia.
- Commit Git tersedia.
- AI_USAGE.md tersedia jika AI digunakan secara signifikan.


# CHANGELOG

## v0.1 - Navigation
Tanggal: [2026-10-20]

Perubahan:
- Menambahkan minimal tiga screen utama.
- Menambahkan navigasi dari Home ke screen lain.
- Menambahkan tombol kembali menggunakan Navigator.pop.
- Menambahkan event handling pada tombol.
- Menambahkan input pengguna sederhana menggunakan TextField.
- Menambahkan respons sederhana menggunakan SnackBar.
- Memperbarui README dengan daftar screen dan cara menjalankan aplikasi.

Bukti:
- Screenshot/video aplikasi berjalan tersedia.
- Commit Git tersedia.# CHANGELOG


## Versi
v0.0 - Prototype

## Fitur Prototype v0.0
- Menampilkan nama aplikasi
- Menampilkan deskripsi aplikasi
- Menampilkan identitas pengembang
- Menampilkan target pengguna
- Menampilkan tombol interaktif sederhana dengan SnackBar