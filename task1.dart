void changeWordOder(String a){
  a = a.split(' ').reversed.join(' ');
  print(a);
}


void main() {
  String a ="hello world";
  changeWordOder(a);
} 


