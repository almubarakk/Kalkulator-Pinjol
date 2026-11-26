import 'package:flutter/material.dart';
import 'package:kalkulator_kredit/models/kredit_model.dart';
import 'package:kalkulator_kredit/screens/result_screen.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  // Global Key untuk memvalidasi form
  final _formKey = GlobalKey<FormState>();

  // Controller untuk menangkap teks dari masing-masing input
  final _pinjamanController = TextEditingController();
  final _bungaController = TextEditingController();
  final _tenorController = TextEditingController();

  // Fungsi validasi standar (Tidak boleh kosong & harus angka)
  String? _validateInput(String? value, String fieldName) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName tidak boleh kosong';
    }
    if (double.tryParse(value) == null) {
      return '$fieldName harus berupa angka';
    }
    return null;
  }

  void _hitungDanKirimData() {
    if (_formKey.currentState!.validate()) {
      final dataKredit = KreditModel(
        jumlahPinjaman: double.parse(_pinjamanController.text),
        sukuBungaPerTahun: double.parse(_bungaController.text),
        tenorBulan: int.parse(_tenorController.text),
      );

      // Jalur navigasi ini harus berada di dalam kurung kurawal milik IF
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultScreen(dataKredit: dataKredit),
        ),
      );
    } // <-- Ini adalah tanda kurung penutup milik IF
  } // <-- Ini adalah tanda kurung penutup milik fungsi _hitungDanKirimData

  @override
  void dispose() {
    // Membersihkan controller saat halaman ditutup agar tidak membebani memori
    _pinjamanController.dispose();
    _bungaController.dispose();
    _tenorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Data Simulasi'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey, // Pasang kunci form di sini
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Masukkan Informasi Pinjaman',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign
                    .center, // Perhatikan penulisan TextAlign.center di sini
              ),
              const SizedBox(height: 20),

              // Field 1: Jumlah Pinjaman
              TextFormField(
                controller: _pinjamanController,
                decoration: const InputDecoration(
                  labelTex nilai 1 ()',
                  border: OutlineInputBorder(),
                  prefixText: ' ',
                ),
                keyboardType: TextInputType.number,
                validator: (value) => _validateInput(value, 'Jumlah pinjaman'),
              ),
              const SizedBox(height: 16),

              // Field 2: Suku Bunga
              TextFormField(
                controller: _bungaController,
                decoration: const InputDecoration(
                  labelText: 'Suku Bunga Per Tahun (%)',
                  border: OutlineInputBorder(),
                  suffixText: '%',
                ),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                validator: (value) => _validateInput(value, 'Suku bunga'),
              ),
              const SizedBox(height: 16),

              // Field 3: Tenor Bulan
              TextFormField(
                controller: _tenorController,
                decoration: const InputDecoration(
                  labelText: 'Tenor (Bulan)',
                  border: OutlineInputBorder(),
                  suffixText: ' Bulan',
                ),
                keyboardType: TextInputType.number,
                validator: (value) => _validateInput(value, 'Tenor'),
              ),
              const SizedBox(height: 32),

              // Tombol Proses
              ElevatedButton(
                onPressed: _hitungDanKirimData,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text(
                  'Proses Simulasi Kredit',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
