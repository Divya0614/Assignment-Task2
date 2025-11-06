class Employee{
    constructor(name,salary){
        this.name = name;
        this.salary = salary;
    }
    displayinfo(){
        console.log(`okEmployee Name:${this.name}`);
        console.log(`Salary:${this.salary}`);
        
        
    }
}
let emp1 = new Employee("Divya",500000);

emp1.displayinfo();