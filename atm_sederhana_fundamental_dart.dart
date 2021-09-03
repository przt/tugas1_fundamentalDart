import 'dart:io';

import 'transaksi.dart';

void main(List<String> args) {
  nasabah nasabah1 = new nasabah();
  nasabah nasabah2 = new nasabah();

  nasabah1.nama = "dimas";
  nasabah2.nama = "bayu";

  nasabah1.pin = 123;
  nasabah2.pin = 321;

  nasabah1.saldo = 200000;
  nasabah2.saldo = 500000;

  nasabah1.noRek = 00001;
  nasabah2.noRek = 00002;

  selamatDatang();
  login(nasabah1, nasabah2);
  selesai();
}

login(nasabah nasabah1, nasabah nasabah2) {
  print('\nMasuk');
  stdout.write('MASUKKAN PIN : ');
  int pinInputan = int.parse(stdin.readLineSync());

  if (pinInputan == nasabah1.pin) {
    print(nasabah1.nama + ' Hai!');
    transaksi(nasabah1, nasabah2);
  } else if (pinInputan == nasabah2.pin) {
    print(nasabah2.nama + ' Hai!');
    transaksi(nasabah2, nasabah1);
  } else {
    print('\n\nPIN yang kamu masukkan Salah!');
    login(nasabah1, nasabah2);
  }
}

transaksi(nasabahLogin, nasabah2) {
  print('\n\nSelamat Datang!');
  print('1. Tarik Tunai');
  print('2. Setor Tunai');
  print('3. Transfer');
  print('4. Cek Saldo');
  print('5. Ganti Akun');
  print('6. Keluar Aplikasi');

  stdout.write('Pilih Menu : ');
  int pilihMenu = int.parse(stdin.readLineSync());

  if (pilihMenu == 1) {
    print('\n\nTarik Tunai');
    stdout.write('Nominal : ');

    int tarikTunai = int.parse(stdin.readLineSync());
    nasabahLogin.saldoUser -= tarikTunai;
    transaksi(nasabahLogin, nasabah2);
  } else if (pilihMenu == 2) {
    print('\n\nSetor Tunai');
    stdout.write('Nominal : ');

    int setorTunai = int.parse(stdin.readLineSync());
    nasabahLogin.saldoUser += setorTunai;
    transaksi(nasabahLogin, nasabah2);
  } else if (pilihMenu == 3) {
    print('\n\nTransfer');
    transfer();
  } else if (pilihMenu == 4) {
    print('\n\nCek Saldo');
    print(nasabahLogin.saldoUser);
    transaksi(nasabahLogin, nasabah2);
  } else if (pilihMenu == 5) {
    print('\n\nGanti Akun');
    login(nasabahLogin, nasabah2);
  } else if (pilihMenu == 6) {
    print('\nKeluar');
  } else {
    print('\n\nMenu yang kamu pilih tidak ada!');
    transaksi(nasabahLogin, nasabah2);
  }
}
