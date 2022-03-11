abstract class Matematika {
  int hasil() {
    return 0;
  }
}

class Fpb extends Matematika {
  @override
  int fpb(int x, int y){
int r = 0;

    while(y!=0){
        r = x % y;
        x = y;
        x = r;
    }

    return x;
}
  }


int FPB(int x, int y){
    int r = 0;
    while(y!=0){
        r = x % y;
        x = y;
        y = r;
    }

    return x;
}

int main(){
int x=120;
int y=88;
int KPK=0;

    KPK= (x*y / FPB(x, y)) as int;
    print("%" KPK);
    return 0;
}