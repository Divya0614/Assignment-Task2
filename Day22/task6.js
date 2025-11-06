class Product {
    constructor(name, price) {
        this.name = name;
        this.price = price;
    }

    discountedPrice(discount) {
        let finalPrice = this.price - (this.price * discount / 100);
        console.log("Product Name: " + this.name);
        console.log("Original Price: " + this.price);
        console.log("Discounted Price: " + finalPrice);
    }
}

let product1 = new Product("Mobile", 20000);
product1.discountedPrice(10);
