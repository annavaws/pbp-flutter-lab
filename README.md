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
const val = 21;
final val = datetime.datetime.now();

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- Membuat aplikasi dengan command flutter create counter_7
- Menambahkan fungsi _decrementCounter, yang akan mengdecrement counternya 
- Menambahkan fungsi if else untuk kasus genap dan ganjil, %2 != 0 artinya saat ganjil, begitu sebaliknya
- Menambahkan inline style text color blue untuk ganjil dan red untuk genap
- Untuk button, menggunakan Container yang didalamnya memiliki row untuk menampilkan kedua buttonnya.