import 'dart:io';
import 'Menu.dart';

void main(){
  print("start..");
  Menu homepage= new Menu();
  homepage.showHomePageMenu();
  String input= stdin.readLineSync()!;
  homepage.show(input);
}
