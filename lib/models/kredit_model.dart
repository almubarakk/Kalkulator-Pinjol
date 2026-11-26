class KreditModel {
  final double jumlahPinjaman;
  final double sukuBungaPerTahun;
  final int tenorBulan;

  KreditModel({
    required this.jumlahPinjaman,
    required this.sukuBungaPerTahun,
    required this.tenorBulan,
  });

  // 1. Menghitung Total Bunga
  double get totalBunga {
    double bungaPerBulan = sukuBungaPerTahun / 12 / 100;
    return jumlahPinjaman * bungaPerBulan * tenorBulan;
  }

  // 2. Menghitung Total Pengembalian (Pokok + Bunga)
  double get totalPengembalian {
    return jumlahPinjaman + totalBunga;
  }

  // 3. Menghitung Angsuran per Bulan
  double get angsuranPerBulan {
    if (tenorBulan <= 0) return 0;
    return totalPengembalian / tenorBulan;
  }
}
