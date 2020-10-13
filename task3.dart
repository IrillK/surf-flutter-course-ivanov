void changeWordOder([String a = "hello world"]){
  a = a.split(' ').reversed.join(' ');
  print(a);
}

double arithmeticMean([List<double> arr]) {
  double sum = 0;
  for (int i = 0; i < arr.length; i++) {
    sum += arr[i];
  }
  return sum / arr.length;
}

double arithmeticMean2({List<double> arr}) {
  double sum = 0;
  for (int i = 0; i < arr.length; i++) {
    sum += arr[i];
  }
  return sum / arr.length;
}

void main() {
  changeWordOder();
  
  String a ="hello world";
  changeWordOder(a);
  
  print(arithmeticMean([1, 2, 3]));
  print(arithmeticMean2(arr: [1, 2, 3]));
} 
