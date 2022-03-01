//Continue.dart
//Menghentikan satu kali pross perulangan

void main() {
  for (var i = 0; i < 10; i += 1) {
    if (i == 5) {
      continue;
    }
    print(i);
  }
}
