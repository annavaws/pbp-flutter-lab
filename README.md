<h2>Tugas 7</h2>

1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
Perbedaannya dapat dilihat dari kedua definisinya.
Stateless widget adalah widget statis yang valuenya sudah diinisiasi sejak awal dan tidak dapat diubah lagi.
Contohnya adalah Text dan Icon
Stateful widget adalah widget dinamis yang valuenya bisa diisi kapanpun juga, datanya juga dapat diubah terus menerus oleh pengguna.
Contohnya adalah Checkbox dan Radio


2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- MaterialApp
Berfungsi memberikan berbagai widget agar sesuai dengan layar. Pada MaterialApp juga terdapat berbagai widget Navigator dan Theme.
- Scaffold
Menyediakan berbagai widget atau API lain seperti FloatingActionButton, Appbar, dll. Scaffold akan memenuhi satu layar. 
- AppBar
Befungsi menampilkan widget toolbar, leading, title, actions, di atas dan bagian bawah (jika ada)
- Text
Menampilkan suatu data text dengan suatu style 
- Column
Menampilkan semua widget childnya dalam posisi vertikal
- Container
Menggabungkan semua common painting, positioning, and sizing widgets.
- Row
Menampilkan semua widget childnya dalam posisi horizontal
- Icon
Menampilkan gambar grafis sesuai yang diinginkan pengguna 
 
3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Fungsi dari setState() adalah untuk mengupdate UI secara dinamis setiap dipanggil. Pada tugas ini, variabel counter yang terdampak. Dalam _incrementCounter, maka counter akan bertambah 1, sedangkan dalam _decrementCounter, artinya counter akan dikurangi 1.

4. Jelaskan perbedaan antara const dengan final.
Perbedaannya adalah saat penginisiasi nilai pada variabel, untuk const harus dinisiasi pada saat kompilasi, sedangkan final tidak mengharuskan memiliki nilai ekspilisit pada saat kompilasi.
Contohnya 
const val = 21; <br>
final val = datetime.datetime.now();

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- Membuat aplikasi dengan command flutter create counter_7
- Menambahkan fungsi _decrementCounter, yang akan mengdecrement counternya. Nilai tidak akan pernah minus
- Menambahkan fungsi if else untuk kasus genap dan ganjil, %2 != 0 artinya saat ganjil, begitu sebaliknya
- Menambahkan inline style text color blue untuk ganjil dan red untuk genap
- Untuk button, menggunakan Container yang didalamnya memiliki row untuk menampilkan kedua buttonnya.

<h2>Tugas 8</h2>
1. Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
Perbedaannya adalah jika menggunakan .push maka kita meng-push new route ke stack sehingga masih bisa kembali  <br> ke halaman sebelumnya, sedangkan .pushReplacement kita mengganti page sekarang dengan yang diinginkan  <br> sehingga tidak memungkinan untuk kembali ke halaman sebelumnya.

2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- Form  -> untuk membuat form pada aplikasi <br>
- DropdownButtonFormField -> menampilkan dropdown list, alasan tidak menggunakan DropDownButton karena tidak bisa menggunakan validator <br>
- Drawer -> untuk menampilkan menu pada aplikasi biasa secara tersembunyi biasa terdapat di bagian kanan atau kiri <br>
- TextFormField -> berfungsi untuk mengambil input dari user <br>
- ListTile ->  membentuk suatu list yang berisi widget-widget di dalamnya <br>
- ListView -> merupakan widget yang dapat di-scroll dan menampilkan berbagai widget di dalamnya <br>
- TextButton -> merupakan button yang dapat diklik dengan default tanpa border <br>


3. Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
- Event OnPressed -> saat suatu widget ditekan
- Event OnLongPress -> saat suatu widget ditekan lebih lama
- Event OnSaved -> saat ingin melakukan penyimpanan data dari form
- Event OnChange -> saat ada value yang berubah 

4. Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Cara kerja navigator adalah seperti stack yang berisi page-page. Jadi ketika kita membuka route baru, maka akan di push ke stack yaitu page sekarang berada di stack paling atas. Ketika kita menekan tombol back, maka stack tersebut akan di pop yaitu menghilangkan route paling atas. Dan yang akan dimunculkan sekarang adalah halaman sebelumnya, yang sekarang merupakan top of the stack.

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- Menambahkan drawer pada tiap page, pada counter_7, Tambah Budget, dan Data Budget
- Membuat halaman form pada form.dart, dan mengimplementasikan semua elemen inputnya yaitu judul berupa String, nominal berupa int, ada tipe budget berupa dropdown, dan terakhir ada tombol sumbit
- Untuk menyimpan semua data dari field menggunakan list listData yang berisi object Data pada data.dart
- Terakhir untuk halaman data budget, dibuat pada file budget.dart. Melakukan looping untuk mengambil data dari listData dan menampilkannya.