**BLoC 
BLoC** adalah design pattern yang membantu untuk memisahkan presentation dengan business logic. Sehingga file nantinya menjadi lebih tersusun sesuai dengan fungsinya masing-masing.

**Declarative UI**
Flutter memiliki sifat declarative yang artinya flutter membangun Ul nya pada screen untuk mencerminkan keadaan state saat ini 

**State** adalah ketika sebuah widget sedang aktif dan widget tersebut menyimpan data di memori. Flutter akan membangun ulang Ul nya ketika ada state atau data yang berubah. Ada 2 jenis state dalam flutter, ephemeral state dan app state.
* **Ephemeral State**
  * Digunakan ketika tidak ada bagian lain pada widget tree yang membutuhkan untuk mengakses data widget nya, contohnya: 
    * PageView 
    * BottomNavigationBar 
    * Switch Button. 
  * Tidak perlu state management yang kompleks 
  * Hanya membutuhkan Stateful Widget dengan menggunakan fungsi setState()

* **App State**
  
  * Digunakan ketika bagian yang lain suatu aplikasi membutuhkan akses ke data state widget, contohnya: 
    * Login info 
    * Pengaturan preferensi pengguna 
  * Keranjang belanja, dimana Informasi yang pengguna pilih di suatu screen yang mana informasi itu akan muncul di screen yang berbeda

**Pendekatan State Management**
* setState Lebih cocok penggunaanya pada ephemeral state 
* Provider Penggunaan untuk state management yang lebih kompleks seperti app state, pendekatan ini direkomendasikan oleh tim flutter karena mudah dipelajari.
* Bloc Menggunakan pola stream/observable, untuk memisahkan UI dengan bisnis logic nya
