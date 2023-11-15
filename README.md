# Tugas Aplikasi Inventory Mobile
- [Tugas 7](#tugas-7)
- [Tugas 8](#tugas-8)

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

## Tugas 8
### Perbedaan Antara `Navigator.push()` dan `Navigator.pushReplacement()` Beserta Contoh Penggunaannya
Perbedaan dari kedua *method* ini terletak pada efek yang diberikan terhadap *route* yang berada di posisi paling atas pada *navigation stack*.
- `Navigator.push`
    Menambahkan sebuah *route* baru di atas *route* yang sekarang di posisi paling atas pada *navigation stack*. Contoh penggunaannya dalam tugas ini adalah:
    ```
    // Navigate ke rute Tambah Item
            if (item.name == "Tambah Item"){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => const ItemFormPage(),
                    ));
            }
    ```
    <p align="center"><img src="https://assets.alexandria.raywenderlich.com/books/be0da83c17e547776b6ff910c5109b836d4b642faedff5a9a04d18d4375714e0/images/bde0b6e4cef230476149c8cf3f728e8076a630e3909e42389ae8b658f7087192/original.png" width=900></p>
- `Navigator.pushReplacement()`
    Menggantikan *route* yang sedang di posisi paling atas pada *navigation stack* dengan sebuah *route* baru dan menghapus *route* yang diganti. Contoh penggunaannya dalam tugas ini adalah:
    ```
    actions: 
    [
        TextButton(
            child: const Text('OK'),
            onPressed: () {
                Navigator.pop(context);
                // Kembali ke homepage setelah dipencet "OK"
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                    builder: (context) => HomePage(),
                    ));
            },
        )
    ],
    ```
    <p align="center"><img src="https://www.technicalfeeder.com/images/page-transition-stack.drawio.png?ezimgfmt=rs:380x210/rscb1/ngcb1/notWebP" width=900></p>
### Penjelasan Layout Widget pada Flutter dan Konteks Penggunaannya
- Layout Widget pada Flutter:
    - `Center`:
        mengatur *alignment* dari child ke tengah
    - `Expanded`:
        mengekspansi child dari `Row` atau `Column` untuk mengisi area yang kosong
    - `Align`:
        mensejajarkan posisi dan mengatur ukurannya sesuai dengan child-nya
    - `Row`:
        mengatur posisi *widgets* secara horizontal
    - `Column`:
        mengatur posisi *widgets* secara vertikal
    - `SizedBox`:
        mengatur ukuran dari child atau memberikan area kosong untuk child
    - `BaseLine`:
        mengatur posisi child widget berdasarkan *starting point* dari parent widget
    - `LimitedBox`:
        mengatur ukuran untuk widgets yang *unconstrained* (tidak terikat dengan pengaturan ukuran lain) 
    - `Padding`:
        memberikan area di sekitar child
### Penjelasan Elemen Input pada Form yang Digunakan pada Tugas Ini
Widget yang digunakan untuk membuat elemen yang menerima input pada *form* tugas ini adalah `TextFormField()`. Penggunaan widget tersebut adalah karena saya ingin pengguna dapat memasukkan *input* berupa teks yang fleksibel sesuai keinginan mereka. Elemen *input* yang menggunakan widget ini pada tugas ini adalah:
- Nama:
    menerima nama bahan makanan dari pengguna
- Kategori:
    menerima kategori bahan makanan dari pengguna
- Jumlah:
    menerima jumlah bahan makanan dari pengguna
- Deskripsi:
    menerima deskripsi bahan makanan dari pengguna
### Penerapan *Clean Architecture* pada Flutter
*Clean Architecture* pada Flutter diterapkan dalam beberapa *architecture layers* yang dibagi menjadi tiga *layers* utama, yaitu  `Feature`, `Domain`, dan `Data`, dan *supporting layers*, yaitu `Resources` dan `Shared Library`. Penjelasan singkat untuk masing-masing *layer* adalah sebagai berikut:
- Tiga Layar Utama:
    - `Feature Layer`:
        berfungsi sebagai *presentation layer* (tampilan) yang mengatur UI dari aplikasi. Terdapat `Pages`, `State Management`, dan `Widgets` pada *layer* ini.
    - `Domain Layer`:
        berfungsi untuk mengatur *business logic* dari aplikasi. Terdapat `Use Cases`, `Entities`, dan `Repositories` pada *layer* ini.
    - `Data Layer`:
        berfungsi sebagai *layer* yang mengatur data dan representatsinya dari aplikasi. Terdapat `Repositories`, `DTO Models`, `Data Sources`, dan `Mapper` pada *layer ini.
- *Supporting Layers*:
    - `Resources`:
        mengandung `Assets` (gambar, font, warna, dll) beserta konfigurasi yang lain.
    - `Shared Library`:
        mengandung komponen yang dapat digunakan ulang (`Reusable Components`), `Functionalities` (*navigation*, *network*, dll), serta 3rd *party libraries*.
### Implementasi Checklist
#### Membuat Halaman Form Tambah Item Baru
1. Saya membuat berkas baru di dalam direktori `lib/screens` bernama `item_form.dart`. Berkas tersebut saya isi dengan kode berikut:
```
import 'package:flutter/material.dart';
import 'package:ingredients_collection_mobile/screens/menu.dart';
// Import drawer widget
import 'package:ingredients_collection_mobile/widgets/left_drawer.dart';

class ItemFormPage extends StatefulWidget {
    const ItemFormPage({super.key});

    @override
    State<ItemFormPage> createState() => _ItemFormPageState();
}

class _ItemFormPageState extends State<ItemFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  String _category = "";
  int _amount = 0;
  String _description = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Form Tambah Item',
          ),
        ),
        backgroundColor: const Color.fromRGBO(199, 133, 249,1.0),
        foregroundColor: Colors.white,
      ),
      drawer: LeftDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            
            // Elemen Name (input elemen Nama Item)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Nama Item",
                  labelText: "Nama Item",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _name = value!;
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Nama Item tidak boleh kosong!"; // validasi input
                  }
                  return null;
                },
              ),
            ),

            // Bagian input elemen Kategori, Amount, dan Description

            // Mengatur alignment dari button
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(199, 133, 249,1.0)),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Item berhasil tersimpan!'),
                            content: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Nama Item: $_name'),
                                  Text('Kategori: $_category'),
                                  Text('Jumlah: $_amount'),
                                  Text('Deskripsi: $_description')
                                ],
                              ),
                            ),
                            actions: [
                              TextButton(
                                child: const Text('OK'),
                                onPressed: () {
                                  Navigator.pop(context);
                                  // Kembali ke homepage setelah dipencet "OK"
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                    builder: (context) => HomePage(),
                                    ));
                                },
                              )
                            ],
                          );
                        }
                      );
                    }
                  },
                  child: const Text(
                    "Save",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
```
2. Saya juga memvalidasi input yang akan dimasukkan oleh pengguna. Pada tugas ini, saya mengatur tipe data dari setiap elemen input dan memastikan bahwa pengguna tidak bisa memasukkan input kosong.
3. Kemudian, saya menambahkan *route* ke halaman form ini yang akan mengarahkan pengguna ketika mereka menekan tombol `Tambah Item` di halaman utama.
#### Membuat Drawer
1. Saya membuat sebuah left-drawer, yaitu drawer yang timbul di bagian sebelah kiri layar. Drawer tersebut memiliki tombol yang dapat mengarahkan pengguna ke halaman utama dan halaman form ketika mereka memencetnya. Berikut adalah isi dari berkas `left_drawer.dart`di direktori `lib/widgets`:
```
import 'package:flutter/material.dart';
import 'package:ingredients_collection_mobile/screens/menu.dart';
import 'package:ingredients_collection_mobile/screens/item_form.dart';

class LeftDrawer extends StatelessWidget {
    const LeftDrawer({super.key});

    @override
    Widget build(BuildContext context) {
        return Drawer(
            child: ListView(
            children: [
                const DrawerHeader(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(199, 133, 249,1.0),
                    ),
                    child: Column(
                        children: [
                            Text(
                                'Ingredients Collection',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                ),
                            ),
                        ],
                    ),
                ),
                ListTile(
                  leading: const Icon(Icons.home_outlined),
                  title: const Text('Halaman Utama'),
                  // Redirect to Homepage
                  onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                          builder: (context) => HomePage(),
                          ));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.add_circle_rounded),
                  title: const Text('Tambah Item'),
                  // Redirect to Tambah Item page
                  onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ItemFormPage()));
                  },
                ),
            ],
            ),
        );
    }
}
```
-----------------------------------------------------------------------------------------------------