void main() {
  print("Hello World");
  var s1 = new Student("Tom", 45, "234");

  s1.name = "Ross";
  s1.age = 28;
  s1.id = "123";
  print(s1);
}

class Student {
  String name;
  int age;
  String id;

  Student(this.name, this.age, this.id);

  String toString() {
    return "Name: " + name + " Age: " + age.toString() + " Id: " + id;
  }
}
