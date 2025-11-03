# 📱 Tugas Pertemuan 6 - Pemrograman Mobile

**Nama:** Revalina Fidiya Anugrah  
**NIM:** H1D023011  
**Shift Akhir:** D  

---

## 📄 Deskripsi
Aplikasi ini menampilkan form input berisi **Nama**, **NIM**, dan **Tahun Lahir**, lalu menampilkan hasil data yang telah diinput pada halaman berikutnya dengan perhitungan umur otomatis.
<img width="742" height="1087" alt="image" src="https://github.com/user-attachments/assets/97a01132-af5c-4de2-a144-05979b0a09e4" />
<img width="738" height="1076" alt="image" src="https://github.com/user-attachments/assets/9b85ea3c-d1d4-4b96-87b6-d519d777ec6b" />


---

## ⚙️ Proses Passing Data
1. Data diinput melalui form (`form_data.dart`) dan disimpan ke dalam controller.
2. Saat tombol **Simpan** ditekan, dilakukan validasi form.
3. Jika valid, digunakan `Navigator.push()` untuk berpindah ke halaman `tampil_data.dart`.
4. Data dikirim melalui **parameter konstruktor** `TampilDataPage(...)`.
5. Halaman kedua menerima parameter dan menampilkannya di widget `Text`.

Contoh passing data:
```dart
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => TampilDataPage(
      nama: namaController.text,
      nim: nimController.text,
      tahunLahir: int.parse(tahunController.text),
    ),
  ),
);
