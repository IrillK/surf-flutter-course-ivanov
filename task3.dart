import 'dart:io';
import 'dart:convert';

int addUp() {
  var input = "";
  int sum = 0;
  int n;
  do {
    input = stdin.readLineSync(encoding: Encoding.getByName('utf-8'));
    n = num.tryParse(input);
    if (n == null) {
      print('$input is not a valid number');
      continue;
    }
    sum += n;
    print("sum = $sum");
  } while (input != "stop");

  return sum;
}

void main() {
  print(addUp());
}
