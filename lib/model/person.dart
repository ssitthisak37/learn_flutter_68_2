class Person {
  String name;
  int age;
  String job;

  Person({required this.name, required this.age, required this.job});
}

List<Person> people = [
  Person(name: "สมชาย", age: 30, job: "นักพัฒนา"),
  Person(name: "สมศรี", age: 25, job: "นักออกแบบ"),
  Person(name: "สมปอง", age: 35, job: "ผู้จัดการ"),
  Person(name: "สมหมาย", age: 28, job: "นักการตลาด"),
  Person(name: "สมจิตร", age: 32, job: "นักวิเคราะห์"),
];