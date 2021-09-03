import 'dart:io';

void selamatDatang() {
  print("\nSELAMAT DATANG \n");
  print("\nDI BANK GITS INDONESIA");
  print("\nSILAHKAN MASUKKAN PIN");
}

void selesai() {
  print("\nTERIMA KASIH TELAH MEMPERCAYAI GITS DALAM SETIAP TRANSAKSI ANDA");
}

class nasabah {
  String nama;
  int saldo;
  int noRek;
  int pin;

  void dispNama() {
    print(nama);
  }

  void dispSaldo() {
    print(saldo);
  }

  void dispPin() {
    print(pin);
  }

  String get namaUser {
    return nama;
  }

  set namaUser(String newNama) {
    nama = newNama;
  }

  int get saldoUser {
    return saldo;
  }

  set saldoUser(int newSaldo) {
    saldo = newSaldo;
  }

  int get pinUser {
    return pin;
  }

  set pinUser(int newPin) {
    pin = newPin;
  }
}

void transfer() {
  print("BELUM ADA FITUR TRANSFER!");
}
