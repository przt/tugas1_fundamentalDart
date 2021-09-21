import 'dart:io';

class Menu {
  String name = '';
  double price = 0;
}

void main(List<String> args) {
  Menu menu1 = new Menu();
  Menu menu2 = new Menu();
  Menu menu3 = new Menu();

  menu1.name = 'Rendang';
  menu2.name = 'Ayam Pop';
  menu3.name = 'Tunjang';

  menu1.price = 10000;
  menu2.price = 12000;
  menu3.price = 15000;

  List<String> cartName = [];
  List<double> cartPrice = [];

  print("Selamat Datang Di SALERO BUNDOS");
  print("\n==============================\n");

  print("Pilih Menu : ");
  print("1. Rendang : Rp10.000,-");
  print("2. Ayam Pop : Rp12.000,-");
  print("3. Tunjang : Rp15.000,-");

  print("Masukkan Menu : ");
  // int? Menus = int.parse(stdin.readLineSync()!);

  for (int i = 1; i > 0; i++) {
    int? Menus = int.parse(stdin.readLineSync()!);
    print("Pilih Menu lain? (Y/N)");
    switch (Menus) {
      case 1:
        cartName.add(menu1.name);
        cartPrice.add(menu1.price);
        break;
      case 2:
        cartName.add(menu2.name);
        cartPrice.add(menu2.price);
        break;
      case 3:
        cartName.add(menu3.name);
        cartPrice.add(menu3.price);
        break;
      default:
        print("Menu tidak terdapat");
    }
    String? option = stdin.readLineSync();
    if (option == 'N') {
      break;
    } else {
      print('Masukkan Pesanan: ');
    }
  }
  print("Total Pesanan");
  print("================");
  String myCart = '';
  cartName.forEach((totalCart) {
    print(totalCart);
  });

  print("Total biaya : ");
  print("===============");
  double total = 0;
  cartPrice.forEach((totalPrice) {
    print(totalPrice);

    total = total + totalPrice;
  });

  print("Total pesanan : Rp$total");
}
