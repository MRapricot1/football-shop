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








# football_news

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
