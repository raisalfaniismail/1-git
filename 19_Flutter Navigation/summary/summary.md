**Widget Navigator** bekerja seperti tumpukan layar (stack), menggunakan prinsip LIFO (Last-In, First-Out). Ada dua method yang dapat digunakan pada Navigator widget yaitu :

Navigator.push (): Metode push digunakan untuk menambahkan rute lain ke atas tumpukan screen (stack) saat ini. Halaman baru ditampilkan di atas halaman sebelumnya.
Navigator.pop (): Metode pop menghapus rute paling atas dari tumpukan. Ini menampilkan halaman sebelumnya kepada pengguna.

**Named Routing** yaitu memberi nama pada routing dengan tujuan untuk mempermudah dalam membaca dan menentukan arah dari suatu navigasi. Menggunakan Navigator.pushNamed untuk menuju ke halaman baru namun tetap menggunakan Navigator.pop untuk kembali ke halaman sebelumnya. Navigator.pushNamed membutuhkan dua properti wajib yaitu context dan string sebagai nama routenya.