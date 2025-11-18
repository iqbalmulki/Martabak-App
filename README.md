# Panduan Update Menu Martabak

File ini berisi langkah-langkah untuk mengubah semua menu masakan India menjadi menu Martabak.

## Langkah-langkah:

1. **Backup Database** (Opsional tapi direkomendasikan)
   - Export database `online_rest` Anda terlebih dahulu
   - Simpan backup di tempat yang aman

2. **Jalankan SQL Script**
   - Buka phpMyAdmin atau MySQL client
   - Pilih database `online_rest`
   - Import atau jalankan file: `SQL/update_to_martabak.sql`

3. **Verifikasi Perubahan**
   - Buka aplikasi di browser
   - Cek halaman restoran - sekarang harus menampilkan restoran martabak
   - Cek halaman menu - semua menu sekarang adalah varian martabak

## Perubahan yang Terjadi:

### Restoran:
- Martabak Ananda
- Martabak Legit Group  
- Martabak Sanjaya
- TGI Fridays → Martabak Modern

### Kategori:
- Martabak Manis
- Martabak Telur
- Martabak Keju
- Martabak Modern

### Menu:
Semua menu India/Chinese/Italian/American sekarang menjadi varian martabak seperti:
- Martabak Manis Classic
- Martabak Telur Ayam
- Martabak Keju Mozzarella
- Martabak Modern Nutella
- Dan masih banyak lagi!

## Troubleshooting:
Jika terjadi error, pastikan:
- Database connection benar (cek file `connection/connect.php`)
- Tabel sudah ada dan struktur sesuai
- Privileges user MySQL cukup untuk melakukan UPDATE

## Teknologi yang Digunakan

1. PHP
2. SQL
3. BOOTSTRAP 4
4. AJAX
5. JQUERY

## System Requirements

Software : XAMPP 
