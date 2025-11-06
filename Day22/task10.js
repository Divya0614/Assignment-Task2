function Student(name, age) {
  this.name = name;
  this.age = age;
}


Student.prototype.display = function() {
  console.log("Name: " + this.name + ", Age: " + this.age);
};


Student.prototype.greet = function() {
  console.log("Hello " + this.name + "! Welcome to the class.");
};


let s1 = new Student("Divya", 20);
let s2 = new Student("Karthik", 21);


s1.display();
s1.greet();

s2.display();
s2.greet();
