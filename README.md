# Tugas Aplikasi Inventory Mobile
- [Tugas 7](#tugas-7)

## Tugas 7 
### Perbedaan Utama Antara *Stateless* dan *Stateful Widget* dalam Konteks Pengembangan Aplikasi Flutter
Perbedaan utama antara *stateless* dan *stateful widget* dalam pengembangan aplikasi Flutter terletak pada *interactivity*-nya. *Stateless widget* tidak memiliki *state* yang dapat berubah ketika diberikan aksi eksternal karena tidak memiliki *internal state*, sehingga ketika diberikan perubahan atau aksi eksternal terhadap *widget* (misalnya dipencet) tidak akan ada perubahan tampilan pada *widget*. Akan tetapi, tampilannya dapat berubah ketika perubahan atau aksi eksternalnya diberikan ke *parent widgets* di dalam *widget tree* (misalnya terjadi perubahan data teks untuk tampilan tombol). Contohnya adalah ketika kita menekan tombol submit di suatu aplikasi, biasanya tampilan tombolnya tidak berubah. Sementara itu, *stateful widget* memiliki *internal state* sehingga tampilan pada *widget* dapat berubah ketika terjadi perubahan yang diterapkan pada *widget*. Contohnya adalah ketika kita memencet *checkbox* dan tampilannya berubah. 
### *Widgets* yang Digunakan Pada Tugas Beserta Penjelasannya
- Widget Flutter:
    - `AppBar`:
        berfungsi sebagai *container* yang menampilkan tampilan pada bagian atas layar di aplikasi  
    - `Column`:
        berfungsi untuk menampilkan *child widgets* secara vertikal (seperti pada kolom)
    - `Container`:
        berfungsi seperti `<div>` dalam HTML yang sudah mencakup batasan *layout* seperti *padding*
    - `Icon`:
        berfungsi sebagai *icon* yang dapat digunakan untuk desain aplikasi
    - `Scaffold`:
        berfungsi sebagai *widget* dasar dari pengembangan desain aplikasi Flutter. *Widget* ini mengatur *visual layout* dari aplikasi
    - `Text`:
        berfungsi untuk menampilkan teks di aplikasi
    - `MaterialApp`:
        berfungsi sebagai *widget* dasar dari pengembangan desain aplikasi Flutter yang mengatur tampilan dari *widget* lain seperti `Scaffold`, `AppBar`, dan `ListView`
    - `ThemeData`:
        mengatur tema visual untuk *widget* `MaterialApp` dan *widget-widget* lain yang menjadi *subtree* dari *widget* ini
    - `ColorScheme`:
        mengatur properti warna dalam 3 kategori, yaitu *primary*, *secondary*, dan *tertiary color* untuk komponen-komponen di aplikasi
    - `Colors`:
        mengatur warna dari suatu komponen di aplikasi
    - `SingleChildScrollView`:
        berfungsi sebagai *widget wrapper* yang dapat di-scroll
    - `Padding`:
        berfungsi untuk mengatur *padding* di sekitar *child* dari *widget* tersebut
    - `GridView`:
        berfungsi untuk menampilkan *items* dalam format 3-column grid
    - `Material`:
        berfungsi sebagai komponen dasar dalam pengembangan elemen pada `Material Design`
    - `InkWell`:
        berfungsi untuk menampilkan efek visual ketika *widget* ditekan
    - `Center`:
        berfungsi untuk mengatur *child widget* ke bagian tengah *widget* tersebut
    - `SnackBar`:
        berfungsi untuk menampilkan pesan *pop-up* di bagian bawah aplikasi ketika *widget* ditekan
- Widget Tambahan untuk Tugas:
    - `MyApp`:
        berfungsi sebagai perantara *widget* `MaterialApp`
    - `MyHomePage`:
        berfungsi untuk menampilkan halaman utama dari aplikasi
    - `ItemCard`:
        berfungsi untuk merepresentasikan *card* pada *grid*
### Implementasi Checklist
1. Saya membuat sebuah projek Flutter baru dengan *command* `flutter create ingredients_collection_mobile` dan menginisialisasi git untuk projek ini. Kemudian saya membuat sebuah git repository baru dan menghubungkannya dengan projek ini.
2. Saya menerapkan *clean architecture* dengan memindahkan class `MyHomePage` dan `_MyHomePageState` ke berkas baru bernama `menu.dart`. 
3. Saya melakukan kustomisasi terhadap *header* pada aplikasi saya dengan mengubah warnanya menjadi warna ungu dan menambahkan teks "Laras' Adorable Home".
4. Saya juga melakukan kustomisasi terhadap warna dan *icon* dari *card* yang menampilkan tombol-tombol yang diminta untuk tugas ini, yaitu tombol `Lihat Item`, `Tambah Item`, dan `Logout`. Setelah itu, saya membuat StatelessWidget baru yang dapat memunculkan SnackBar untuk menampilkan tulisan seperti pada kriteria soal. 
5. Saya juga mengatur warna latar belakang dari aplikasi saya menjadi warna ungu muda agar tampilannya menyesuaikan dengan tema warna aplikasi yaitu warna pastel.
-----------------------------------------------------------------------------------------------------