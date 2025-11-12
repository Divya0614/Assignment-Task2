function checkAge(age) {
    try {
       
        if (age === "" || isNaN(age)) {
            throw new TypeError("Invalid input! Please enter a valid number.");
        }

        
        if (age < 18) {
            throw new RangeError("Access denied! You must be at least 18 years old.");
        }

 
        console.log("Access granted. Welcome!");
    } 
    catch (error) {
       
        console.log("Error Name:", error.name);
        console.log("Error Message:", error.message);
    } 
    finally {
       
        console.log("Age check process completed.");
    }
}


checkAge("");     
checkAge(15);     
checkAge(25);     
