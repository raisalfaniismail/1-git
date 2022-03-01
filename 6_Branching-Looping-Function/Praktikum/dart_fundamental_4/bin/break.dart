//Break
//Menghentikan seluruh proses perulangan

void main() {
  for (var i = 0; true; i++) {
    if (i == 10) {
      break;
    }
    print(i);
  }
}
