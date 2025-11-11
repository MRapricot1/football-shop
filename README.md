1. Perbedaan antara Navigator.push() dan Navigator.pushReplacement() adalah, pada Navigator.push (route):
- menimpa layar di atas stack tetapi layar yang lama tetap ada
- Membuat tombol back menjadi masih bisa balik ke layar sebelumnya
- Pas untuk menjadi alur sementara
Contoh penggunaan pada tugas ini adalah dari HomePage - ProductDetailPage(product)

Pada Navigator.pushReplacement(route):
- Lebih berfungsi untuk mengganti layar sekarang menjadi layar yang baru tetapi layar yang lama dihapus dari stack, berbeda dengan Navigator.Push() yang masih menyimpan layar lama
- Tombol back tidak kembali ke layar yang diganti
- Lebih pas untuk alur yang tidak boleh ke layar lama seperti halaman login dan intro
Contoh pada tugas adalah setelahlogin, langsung ke layar utama

2. Cara saya memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk membangun struktur halaman yang konsisten di seluruh aplikasi adalah dengan menggunakan satu Scaffold per layar sebagai rangka utama, membuat AppBar seragam seperti judul: theshopping, menyediakan drawer yang sama di tial layar seperti kategori yang ber--isi: Jersey, ball, footbal shoes
dan berikut merupakan contoh yang rapi dan konsisten:
class FSScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  const FSScaffold({super.key, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: const [Icon(Icons.search), SizedBox(width: 12), Icon(Icons.shopping_cart)],
      ),
      drawer: const _MainDrawer(),
      body: body,
    );
  }
}
Penggunaan:
return FSScaffold(
  title: 'Home',
  body: ProductGrid(products: list),
);

3. Kelebihan Layout Widget adalah Penggunaan Padding, SingleChildScrollView, dan ListView membuat tampilan form di aplikasi theshopping lebih rapi, nyaman, dan responsif.
- Padding memberi jarak antar-elemen agar form terlihat bersih dan mudah dibaca.

- SingleChildScrollView memungkinkan seluruh isi form tetap bisa digulir saat melebihi tinggi layar, terutama saat keyboard muncul.

- ListView efisien untuk form panjang atau elemen dinamis karena hanya merender bagian yang terlihat.

Kombinasi dari ketiga widget itu membantu menciptakan pengalaman user yang baik.

4. Penyesuaian Warna Tema agar Konsisten dengan Brand

Warna tema disesuaikan untuk mencerminkan identitas visual theshopping, misalnya hijau tua sebagai warna utama dan hitam abu sebagai warna sekunder.
Melalui pengaturan ThemeData dan ColorScheme di MaterialApp, seluruh komponen seperti AppBar, tombol, dan ikon memiliki warna konsisten tanpa perlu diatur manual.
Pendekatan ini memastikan tampilan aplikasi terlihat profesional, seragam, dan mudah dikenali sebagai brand Football Shop, baik dalam mode terang maupun gelap.






# theshopping

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

1. Widget tree merupakan sebuah struktur yang penting dari semua widge yang digunakan dalam Flutter.
Flutter membangun tampilan UI dengan cara menyusun widget dari yang parent hingga ke child atau paling Bawah. Setiap parent widget dapat memiliki satu atau lebih child widget di dalamnya. Parent juga bertanggung jawab dalam mengatur posisi, style, dan behaviour child. Jadi pada dasarnya widget tree adalah struktur UI tree Flutter, tempat setiap widget terhubung secara hierarki dan saling memengaruhi satu ama lain.

2. 

3. Fungsi dari widget MaterialApp adalah sebagai Widget Utama yang menyediakan kerangka kerja dan gaya aplikasi material desingpada Flutter. Fungsinya seperti:
- Menentukan tema global
- menentukan navigasi halaman
- menentukan judul projek dan aplikasi
- Menjadikan root widget untuk seluruh tampilan berbasis material design
Karena MaterialApp menginisialisasi banyak fitur dasar maka widget MaterialApp ini sering digunakan di root aplikasi

4. Perbedaan antara StatelessWidget dan StatefulWidget adalah pada StatelessWidget tidak memiliki state atau keadaan jadi bisa berubah setelah dibangun seperti logo projek dan judul projek. Sedangkan pada StatefulWidget sendiri memiliki state dan dapat berubah seperti setelah interaksi pengguna misalnya form input, animasi, bahkan data yang diperbaharui

Idealnya kita memilih StatelessWidget jika UI kita sudah tetap, sedangkan kita memilih StatedulWidget jika UI kita masih harus berubah berdasarkan aksi user atau data.

5. BuildContext adalah sebuah objek yang merepresentaasikan posisi widget di dalam widget tree. BuildContext digunakan Flutter untuk mengetahui hubungan antar widget seperti parent dan child. Tidak hanya itu Flutter juga digunakan untuk mengetahui tempat memanggil fungsi. Kita bisa menggunakan BuildContext seperti ini
@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Theme.of(context).colorScheme.background,
    body: Center(child: Text('Halo Flutter!')),
  );
}
context wajib ada di method build karena Fltter menggunakan konteks itu untuk membangun UI yang sesuai dengan struktur widget tree.

6. "hot reload" bisa diartikan sebagai menyuntikkan perubahan kode ke aplikasi yang sedang berjalan tanpa mengurangi dari awal sehingga state tetap dipertahankan. Sedangkan "Hot restart" berperan untuk memulai ulang seluruh aplikasi dan memuat ulang semua kode dari awal sehinngga state hilang dan aplikasi dimulai dari 0.
Jadi menggunakan "hot reload" saat memperbarui tampilan kecil atau logika UI, dan menggunakan "Hot restart" saat mengubah sturktur besar aau inisialisasi awal aplikasi
