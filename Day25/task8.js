function ageCheck(age) {
    try {
        if (age === "" || isNaN(age)) {
            throw new Error("Please enter a valid age!");
        }
        if (age < 18) {
            throw new Error("Access denied! You must be at least 18 years old.");
        }
        console.log("Access granted. Welcome!");
    } 
    catch (error) {
        console.log("Error:", error.message);
    }
}


ageCheck(15);   
ageCheck(25);   
ageCheck("");   