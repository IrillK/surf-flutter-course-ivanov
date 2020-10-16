
class Shape  {

final List<double> borders;

Shape(this.borders);

}

class Trapezoid extends Shape with BorderHelper2{

Trapezoid() : super([8.0, 5.0, 10.0, 5.0]);

}
 
class Country with BorderHelper2{

final List<double> borders;

Country(this.borders);

}

mixin BorderHelper1 on Shape {
  int get bordersCount => super.borders.length;  
}

mixin BorderHelper2 {
  
  int bordersCount(List<double> borders){
    return borders.length;
  }
  
}

void main() {
 //сделал два вида миксинов
  //1 - ограничил миксин для Shape
  //Trapezoid t1 = Trapezoid();
  //print(t1.bordersCount);
  //Но тогда нельзя использовать этот миксин для Country
  
  //2 - сделал в миксине обращение к полю класса, тогда можно использовать с любым классом
  
  
  Trapezoid t1 = Trapezoid();
  print(t1.bordersCount(t1.borders));
  
  Country c1 = Country([8.0, 5.0, 10.0, 5.0, 1.2]);
  print(c1.bordersCount(c1.borders));
  
} 
