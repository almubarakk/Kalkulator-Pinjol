import 'package:flutter/material.dart';
import 'package:kalkulator_kredit/models/kredit_model.dart';

class ResultScreen extends StatelessWidget {
  final KreditModel dataKredit;

  const ResultScreen({super.key, required this.dataKredit});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hasil Simulasi Kredit'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Bagian Ringkasan Data yang Diinput
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Data Data yang Diinput:',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),
                    ),
                    const Divider(),
                    Text(': ${dataKredit.jumlahPinjaman.toStringAsFixed(0)}'),
                    const SizedBox(height: 8),
                    Text(': ${dataKredit.sukuBungaPerTahun}% per Tahun'),
                    const SizedBox(height: 8),
                    Text(': ${dataKredit.tenorBulan} Bulan'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Bagian Hasil Perhitungan Kompleks dari Model
            Card(
              elevation: 4,
              color: Colors.blue.shade50,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Hasil Perhitungan Kalkulator:',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blueGrey),
                    ),
                    const Divider(),
                    
                    // Menampilkan Angsuran per Bulan
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Angsuran / Bulan:', style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(
                          'Rp ${dataKredit.angsuranPerBulan.toStringAsFixed(2)}',
                          style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 16),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),

                    // Menampilkan Total Bunga
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Total Beban Bunga:'),
                        Text('Rp ${dataKredit.totalBunga.toStringAsFixed(2)}'),
                      ],
                    ),
                    const SizedBox(height: 8),

                    // Menampilkan Total Pengembalian
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Total Pengembalian:'),
                        Text('Rp ${dataKredit.totalPengembalian.toStringAsFixed(2)}'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Tombol Kembali Ke Halaman Utama
            ElevatedButton(
              onPressed: () {
                // Navigasi pop untuk kembali ke halaman sebelumnya
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade300),
              child: const Text('Hitung Ulang / Kembali', style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}