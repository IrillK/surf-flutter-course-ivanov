class AllToString {
  static String makeString<T>(T something) {
    return something.toString();
  }
}


class Person{
  int age;
  String name;
  
  Person(this.name,this.age);
  
  String toString() => "name: ${name}, age: ${age}";
}



void main() {

  //class Person был создан для демонстрации
  
  print(AllToString.makeString(5));
  
  print(AllToString.makeString("qwerty"));
  
  Person he = Person("Kirill", 19);
  
  print(AllToString.makeString(he));
  
}
