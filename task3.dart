//функцию из второго задания невозможно модернизировать, так как значение опциональнального параметра должено быть константой

void changeWordOder([String a = "hello world"]){
  a = a.split(' ').reversed.join(' ');
  print(a);
}


void main() {
  changeWordOder();
  
  String a ="hello world";
  changeWordOder(a);
} 
