**State** adalah data yang dapat dibaca saat pembuatan widget, dapat berubag saat widget aktif, dan hanya dimiliki oleh Statefull widget.

State Management adalah sebuah cara untuk mengatur data / state kita bekerja, bisa juga untuk memisahkan antara logic dan view dimana logic tersebut juga bisa re-usable.

Cara kerja State Management seperti Provide and Listen, maksudnya adalah kita bisa memasukan state yang kemungkinan bisa berubah sewaktu waktu, lalu Widget yang Subscribe (Listen) dengan Provider yang kita buat akan berubah sesuai dengan state yang berubah.

State Management memiliki banyak Packages / Library yang bisa kita gunakan untuk itu, yaitu seperti :
* Bloc
* Provider
* Redux
* GetIt