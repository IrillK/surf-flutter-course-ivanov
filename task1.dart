class User {
  String name;
  String surname;
  User(this.name, this.surname);
  
  String toString() => "name: ${name}\nsurname: ${surname}";
}

class Student extends  User{
  
  int yearOfAdmission; 
  
  int get currentCourse{
    return DateTime.now().year - yearOfAdmission;
  } 
  
  Student(
    String name,
    String surname,
    this.yearOfAdmission
  ) :super(name, surname);
  
  @override
  String toString(){
     return super.toString() + "\nyearOfAdmission: ${yearOfAdmission}\ncurrentCourse: ${currentCourse}";
  } 
}

void main() {
 User u1 = User("Kirill", "Ivanov");
 print(u1.toString());
  
 Student st1 = Student("Kirill", "Ivanov", 2018);
  
 print(st1.toString());
} 
