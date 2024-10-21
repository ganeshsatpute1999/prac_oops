class Employee {
  String name;
  int hoursWorked;

  Employee(this.name, this.hoursWorked);

  double calculateSalary() {
    return 0.0;
  }
}

class FullTimeEmployee extends Employee {
  FullTimeEmployee(String name, int hoursWorked) : super(name, hoursWorked);

  @override
  double calculateSalary() {
    return hoursWorked * 50;
  }
}

class PartTimeEmployee extends Employee {
  PartTimeEmployee(String name, int hoursWorked) : super(name, hoursWorked);

  @override
  double calculateSalary() {
    return hoursWorked * 30;
  }
}

void main() {
  Employee fullTimeEmp = FullTimeEmployee('Ganesh', 40);
  Employee partTimeEmp = PartTimeEmployee('Parthmesh', 20);

  print('${fullTimeEmp.name} earned: \$${fullTimeEmp.calculateSalary()}');
  print('${partTimeEmp.name} earned: \$${partTimeEmp.calculateSalary()}');
}
