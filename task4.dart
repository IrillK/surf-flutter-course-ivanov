main() { 
  //m
  var numberBook = new Map<String, int>();
  numberBook["Иван"] = 2264865;
  numberBook["Татьяна"] = 89523366684;
  numberBook["Олег"] = 84952256575;
  //n
  print(numberBook);
  //o
  numberBook["Екатерина"] = 2359942;
  
  //p
  var l = numberBook.entries.toList();
  l.sort((a,b) => a.key.compareTo(b.key));
  print(l);
}   
