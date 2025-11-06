class student {
    constructor(name,age,grade) {
        this.name=name;
        this.age=age;
        this.grade=grade;
        
    }
    display(){
        console.log("Name:"+this.name);
        console.log("Age:"+this.age);
        console.log("Grade:"+this.grade);
        
    }
        
    }
    let student1 = new student("Divya",21,"A");
    let student2 = new student("Kaviya",25,"B");
    let student3 = new student("Iniya",17,"A++");
    
    student1.display();
    student2.display();
    student3.display();