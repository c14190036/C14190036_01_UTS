import 'dart:io';

void main(List<String> arguments) {
  stdout.write("Masukan Kata : ");
  String? kata = stdin.readLineSync();

  stdout.write("Masukan Jumlah : ");
  String? jumlah = stdin.readLineSync();
  int angka = int.parse(jumlah!);

  if (angka % 2 == 1) {
    int col = 0;
    int temp = 0;
    int count = 0;
    var list = [];

    //sisi atas
    for (int i = 1; i <= (angka / 2).floor() + 1; i++) {
      for (int j = 1; j <= angka; j++) {
        if (j == (angka / 2).floor() - i + 2 && col == 0) {
          if (count == 9) {
            count = 0;
          }
          stdout.write(count + 1);
          col = i * 2;
        } else if (col != 2 && temp < col - 2) {
          temp++;
          if (temp % 2 == 0) {
            if (count == 9) {
              count = 0;
            }
            stdout.write(count + 1);
          } else if (temp % 2 == 1) {
            stdout.write(" ");
          }
        } else {
          stdout.write(" "); //*
        }
      }
      count++;
      temp = 0;
      col = 0;
      print("");
    }

    //sisi bawah
    col = 0;
    temp = 0;
    for (int i = (angka / 2).floor(); i >= 1; i--) {
      for (int j = 1; j <= angka; j++) {
        if (j == (angka / 2).floor() - i + 2 && col == 0) {
          if (count == 9) {
            count = 0;
          }
          stdout.write(count + 1);
          col = i * 2;
        } else if (col != 2 && temp < col - 2) {
          temp++;

          if (temp % 2 == 0) {
            if (count == 9) {
              count = 0;
            }
            stdout.write(count + 1);
          } else {
            stdout.write(" ");
          }
        } else {
          stdout.write(" ");
        }
      }
      count++;
      temp = 0;
      col = 0;

      print("");
    }
  } else {
    int count = 0;
    int count2 = angka;
  }
}
