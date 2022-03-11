abstract class Matematika {
  int hasil() {
    return 0;
  }
}

class Kpk implements Matematika {
  @override
  int hasil() {
    int result = 0;
    int x = 7;
    int y = 21;
    for (int i = 1; i <= y; i++) {
      result = (result + x);
      if (result % y == 0) {
        return result;
      }
    }
    return result;
  }
}

class Fpb implements Matematika {
  @override
  int hasil() {
    int result = 0;
    int x = 8;
    int y = 24;
    for (int i = 1; i <= x; i++) {
      result = (result = x);
      if (x % i == 0 && y % i == 0) {
        return result;
      }
    }
    return result;
  }
}
