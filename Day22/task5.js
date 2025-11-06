
class Employee {
  constructor(name, salary) {
    this.name = name;
    this.salary = salary;
  }

  displayInfo() {
    console.log(`Employee Name: ${this.name}`);
    console.log(`Salary: ${this.salary}`);
  }
}


class Manager extends Employee {
  constructor(name, salary, department) {
    super(name, salary); // calls the parent constructor
    this.department = department;
  }

  displayInfo() {
    // Override parent method to include department
    console.log(`Employee Name: ${this.name}`);
    console.log(`Salary: ${this.salary}`);
    console.log(`Department: ${this.department}`);
  }
}


const manager1 = new Manager("Divya", 60000, "IT");
manager1.displayInfo();
