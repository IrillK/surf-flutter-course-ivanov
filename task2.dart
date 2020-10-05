String evenNumbers(){
  String oddNums = "";
  int count = 100;
  for (int num = 0; num < count; num++) {
    if (num % 2 != 0) {
      continue;
    }
    oddNums += "$num${num != count - 1 ? ", " : ""}";
  } 
  return  "from 0 to $count oddNums is: $oddNums"; 
}


void main() {
  print(evenNumbers());
} 
