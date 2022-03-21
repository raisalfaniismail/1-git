**Flutter CLI**
* Alat yang digunakan untuk berinteraksi dengan flutter SDK
* Perintah dijalankan dalam terminal

**Important CLI commands**
* Flutter doctor
  * Perintah untuk menampilkan informasi software yang dibutuhkan flutter
* Flutter create
  * Perintah untuk membuat project aplikasi flutter baru di directory tertentu
* Flutter run 
  * Perintah untuk menjalankan project aplikasi di device yang tersedia
* Flutter emulator 
  * Perintah untuk menampilkan daftar emulator yang terinstal dan menampilkan option untuk membuka emulator atau membuat emulator baru
* Flutter channel 
  * Perintah untuk menampilkan daftar flutter channel yang tersedia dan menunjukkan channel yang digunakan saat ini
* Flutter pub 
  * Flutter pub add, untuk menambahkan package ke dependencies yang ada di pubspec.yami
  * Flutter pub get, untuk mendownload semua package ke dependencies yang ada di pubspec.yami
* Flutter build 
  * Perintah untuk memproduksi sebuah file aplikasi untuk keperluan deplay atau publik ke AppStore, PlayStore, dll
* Flutter clean
  * Perintah untuk menghapus folder build serta lain-lain yang dihasilkan saat kita menjalankan aplikasi di emulator
  * Perintah ini akan memperkecil ukuran project tersebut.

**Packages Management**
* Flutter mendukung sharing package
* Package dibuat developers lain
* Mempercepat pengembangan aplikasi karena tidak perlu membuat semuanya dari awal atau from scratch
* Mendapatkan package di  website pub.dev

**Cara menambahkan package**
* Cari package di pub.dev
* Copy barisan dependencies yang ada di bagian installing
* Buka pubspec.yaml
* Master barisannya di bawah di dependencies pubspec.yaml 
* Run flutter pub get di terminal
* Import package di file dart agar bisa digunakan
* Top atau restart aplikasi jika dibutuhkan