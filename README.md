# Implementasi Multiplexer 16-to-1

Proyek ini menampilkan implementasi multiplexer 16-to-1 dalam bahasa Verilog, menggunakan dua metode berbeda: pendekatan behavioral dan structural.

## Deskripsi File
- **mux16to1behavioral.v**: Implementasi multiplexer 16-to-1 menggunakan pendekatan behavioral.
- **mux2to1gate.v**: Implementasi multiplexer 2-to-1 pada level gerbang logika (gate-level).
- **mux4to1gate.v**: Implementasi multiplexer 4-to-1 dengan pendekatan structural yang menggunakan `mux2to1gate`.
- **mux16to1structural.v**: Implementasi multiplexer 16-to-1 secara structural menggunakan beberapa `mux4to1gate`.
- **mux16to1testbench.v**: Testbench untuk menguji dan membandingkan hasil implementasi behavioral dan structural.

## Cara Penggunaan
1. Pastikan Anda sudah menginstal simulator Verilog (seperti Icarus Verilog).
2. Kompilasi semua file Verilog dengan perintah berikut:
   ```bash
   iverilog -o mux16to1sim mux16to1behavioral.v mux2to1gate.v mux4to1gate.v mux16to1structural.v mux16to1testbench.v
   ```
3. Jalankan simulasi dengan perintah:
   ```bash
   vvp mux16to1sim
   ```
4. Gunakan penampil gelombang seperti GTKWave untuk melihat hasil simulasi.

## Struktur Proyek
- **Implementasi behavioral**: Menggunakan pernyataan `case` untuk memilih output berdasarkan nilai selektor.
- **Implementasi structural**: Membangun hierarki multiplexer, dimulai dari `mux2to1gate`, kemudian `mux4to1gate`, hingga mencapai `mux16to1structural`.
- **Testbench**: Digunakan untuk membandingkan kedua implementasi dan memastikan fungsionalitasnya identik.

## Hasil yang Diharapkan
Kedua pendekatan (behavioral dan structural) seharusnya menghasilkan output yang sama untuk setiap kombinasi input yang diuji dalam testbench.
