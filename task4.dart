import 'dart:math';

String solvingQuadraticEquation(double a, double b, double c){
 
  double discriminant(){
    return b * b - 4 * a * c;
  }
  
  double x1(double d){
    return  (- b - sqrt(d) ) / ( 2 * a) ;
  }
  
  double x2(double d){
    return (- b + sqrt(d) ) / ( 2 * a);
  }
  
  double x(double d){
    return - b / ( 2 * a);
  }
  
  
  double d = discriminant();
  
  if(d > 0){
    return "Дискриминант > 0 => 2 корня: ${x1(d)} , ${x2(d)}";
  }else if(d == 0){
    double x = - b / ( 2 * a);
    return "Дискриминант == 0 => 1 корень: $x";
  }else{
    return "Дискриминант < 0 => 0 корней";
  }
  
}


void main() {
  print( solvingQuadraticEquation(1 , -2 , 1) );
  
} 
