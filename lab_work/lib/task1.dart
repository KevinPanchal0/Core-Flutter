import 'dart:io';
void main() {
  print('Enter Number : ');
  int? n = int.parse(stdin.readLineSync()!);
  nNUmber(n);


}

Future nNUmber(int n) async {
  for(int i =1;i<=n;i++) {
    await Future.delayed(const Duration(seconds: 1),() {
      print(i);
    });
  }
}