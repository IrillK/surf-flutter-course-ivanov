main() { 
  //q
  var mySet = {"Москва", "Вашингтон", "Париж"};
  print(mySet.length);
  //r
  mySet.add("Вашингтон");
  print(mySet.length);
  //Длина mySet не изменилась, потому что Set это хранилище уникальных значений
  
  //s
  //Количество слов можно посчитать узнав количество разделяющих символов, то есть " " и "\n"
  String s = """She sells sea shells on the sea shore;
The shells that she sells are sea shells I'm sure.
So if she sells sea shells on the sea shore,
I'm sure that the shells are sea shore shells""";
 
  print(2*s.length - s.replaceAll(new RegExp(" "), "").length-s.replaceAll(new RegExp("\\n"), "").length + 1);
  
}   
