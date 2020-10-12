double arithmeticMean(List<double> arr){
  double sum = 0;
  for(int i = 0; i< arr.length; i++){
    sum += arr[i];
  }
  return sum / arr.length;
}


void main() {
  List<double> arr = [2, 4, 7, 9, 3, 5, 7, 888];
  print(arithmeticMean(arr));
  
} 


