# 📕 Bookquet Mobile 💐
\~ Di setiap buku, terdapat karangan kata-kata berbunga \~

> "If you don’t like to read, you haven’t found the right book." – **J.K. Rowling**

> Proyek ini dibuat untuk memenuhi tugas Proyek Akhir Semester (PAS) pada mata kuliah Pemrograman Berbasis Platform (CSGE602022) yang diselenggarakan oleh Fakultas Ilmu Komputer, Universitas Indonesia Tahun Ajaran 2023/2024 Semester Gasal.

## 👥 Anggota Kelompok
Kami dari kelompok D-12 yang beranggotakan:
| Nama | NPM | Github | 
| -- | -- | -- |
| Akmal Ramadhan | 2206081534 | Akmal76 |
| Carissa Aida Zahra | 2206082543 | carissadzr
| Edbert Halim | 2206813795 | edbert2397 |
| Farah Aura Rosadi | 2206824773 | FarahAuraR
| William | 2206083432 | sunsetheus |

## 📜 Cerita Aplikasi

Dalam rangka diselenggarakannya Kongres Bahasa Indonesia XII pada bulan Oktober 2023, kelompok D-12 dengan bangga mepersembahkan **Bookquet** - sebuah aplikasi inovatif yang menghadirkan literasi ke dalam pengalaman baru. Lebih dari sekadar perpustakaan pribadi, Bookquet memanjakan pengguna melalui pengalaman yang tak terlupakan dengan fitur penyimpanan buku yang akan dibaca nanti. Selain itu, pengguna dapat memberikan ulasan mengenai buku yang sudah dibaca. Nantinya, aplikasi ini bukan hanya tempat untuk literasi, tetapi juga sebagai sarana untuk mendorong generasi muda Indonesia untuk menjelajahi kekayaan kata-kata. Mari menjelajah dunia literasi bersama Bookquet 💐.

## 📚 Daftar Modul
Berikut ini adalah daftar modul yang akan kami implementasikan beserta pengembang dari setiap modul.
 
| Modul | Penjelasan | Pengembang |
| -- | -- | -- |
| **Authentication** | Pengguna pada aplikasi Django ini dapat melakukan login dan logout (registrasi dilakukan di *web service* Django). Akun user yang sudah terdaftar di Django bisa melakukan login melalui aplikasi Bookquet Mobile di Flutter | Carissa |
| **User Dashboard** | Menampilkan informasi pribadi pengguna yang sudah login. Pengguna dapat meng-edit data pribadinya serta mengakses data buku yang sudah ia nilai | Farah |.
| **Homepage** | Menampilkan halaman utama berupa daftar buku. Pengguna disambut dengan *hero block* dan daftar buku dibawahnya. Pengguna juga bisa menggunakan fitur *filter* dan *search* untuk mencari buku berdasarkan *genre* dan judul. Pengguna juga dapat menambahkan *feedback* kepada aplikasi. | Akmal |
| **Book Preview, Rate & Review**| Menampilkan informasi suatu buku seperti sinopsis, pengarang, judul, dan lain-lain. Pengguna dapat memberikan *review*, *rate*, dan memasukkan buku ke dalam daftar baca nanti. Pada aplikasi ini, pengguna dapat melihat komentar dan mendapatkan rekomendasi buku berdasarkan genre yang sama. Admin pada page ini juga dapat mengedit cara menampilkan komentar / tipe filter | William |
| **Read Later** | Pengguna dapat menambahkan suatu buku ke dalam daftar baca nanti. Dalam aplikasi Django ini, pengguna dapat melihat daftar buku yang ditambahkan dan dapat menghapus buku tersebut dari daftar baca nanti. Terdapat 3 prioritas pada read-later yang dapat dipilih yaitu low, medium, dan high. Khusus admin, ia dapat update priority pada read later book, yaitu dari prioritas low ke medium atau medium ke high. | Edbert |

## 🕵️ *Role* atau Peran Pengguna 
#### 🔓 User yang Sudah Terautentikasi
- Melakukan pencarian dan *filter* berdasarkan genre
- Membuka halaman *profile* yang berisi data-data user terkait
- Memberikan *review* dan *rating* ke buku yang dipilih
- Menambah dan menghapus daftar buku pada fitur baca nanti
#### 🔒 User yang Belum Terautentikasi
- Melakukan pencarian dan *filter* berdasarkan genre
- Melihat buku pada halaman utama

**Catatan** : Role Admin dihilangkan pada Bookquet Mobile sehingga Admin harus melakukan log in dari aplikasi web

##  *Dataset* yang Digunakan
*Dataset* yang kami gunakan bersumber dari [Kaggle - GoodReads Best Books](https://www.kaggle.com/datasets/thedevastator/comprehensive-overview-of-52478-goodreads-best-b/data). Alasan pemilihan *dataset* ini dikarenakan tersedianya informasi lengkap buku seperti deskripsi singkat, genre, gambar sampul, dan lain-lain. Kami akan mengambil sebanyak 100 buku dari *dataset* tersebut.

## Alur Pengintegrasian dengan Web Service untuk Terhubung dengan Aplikasi Web yang Sudah dibuat saat Proyek Tengah Semester
1. Sebuah situs web telah dideploy sebelumnya dan memiliki backend yang mampu menampilkan data dalam format JSON. Ini berarti bahwa situs web tersebut sudah memiliki kemampuan untuk mengeluarkan data dalam bentuk JSON
2. Dalam direktori utils, sebuah berkas baru dengan nama fetch.dart dibuat untuk melakukan proses pengambilan data secara asinkron. Hal ini memungkinkan aplikasi untuk mengambil data dari backend dengan cara yang efisien
3. Di dalam berkas fetch.dart, terdapat sebuah fungsi yang dapat dipanggil dari luar berkas dan berfungsi untuk mengembalikan data dalam bentuk daftar. Fungsi ini akan menjadi jembatan antara aplikasi dan backend untuk mengambil dan mengelola data yang dibutuhkan
4. Fungsi ini juga memiliki URL yang digunakan sebagai endpoint untuk mengakses data JSON. Endpoint ini adalah alamat yang dituju oleh aplikasi untuk mendapatkan data dari backend.
5. Pemanggilan fungsi ini dilakukan di dalam widget yang relevan, sehingga data tersebut dapat diolah sesuai dengan kebutuhan yang ada. Dengan demikian, data JSON yang diambil dapat digunakan dan ditampilkan dengan cara yang sesuai dalam tampilan aplikasi.

## Tautan Berita Acara
Berikut tautan berita acara kelompok D12 : https://docs.google.com/spreadsheets/d/172pyc2X2Ib8fZ6M8gB--YL7NuA5O4M92OxUJ01vpUAc/edit?usp=sharing
