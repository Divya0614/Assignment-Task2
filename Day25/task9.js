function ageCheck(age) {
    try {
        if (age === "" || isNaN(age)) {
            throw new TypeError("Please enter a valid number for age!");
        }
        if (age < 18) {
            throw new RangeError("You must be at least 18 years old!");
        }

        console.log("Access granted. Welcome!");
    } 
    catch (error) {
        console.log("Error Name:", error.name);
        console.log("Error Message:", error.message);
    }
}


ageCheck("");    
ageCheck(15);    
ageCheck(20);   
