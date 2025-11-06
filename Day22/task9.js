class Shape {
  constructor(name) {
    this.name = name;
  }

  displayName() {
    console.log("Shape: " + this.name);
  }
}
class Circle extends Shape {
  constructor(radius) {
    super("Circle");  
    this.radius=radius;
  }

  area() {
    let result = 3.14 * this.radius * this.radius;
    console.log("Radius: " + this.radius);
    console.log("Area of Circle: " + result);
  }
}


let c1 = new Circle(5);
c1.displayName();
c1.area();
