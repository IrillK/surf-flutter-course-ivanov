main() { 
  //e
  var list = [1,2,3,4,5,6,7,8];
  //f
  print(list.length);
  //g
  list.sort((a, b) => b.compareTo(a));
  print(list);
  
  //h
  var newList = list.sublist(0,3);
  print(newList);
  //i
  print(list.indexOf(5));
  //j
  list.removeWhere((item)=> item >= 5 && item <= 8);
  print(list);
  //k
  //Не совсем понятна формулировка задания
  list.remove(1);
  list.remove(2);
  list.remove(3);
  
  list.addAll([10,20,30]);
  print(list);
}  
