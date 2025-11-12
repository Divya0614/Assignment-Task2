function validateform(name,email) {
    if(name.trim() === ""){
        throw new Error("Name cannot be empty");
        
    }
    if (!email.includes("@")) {
        throw new Error("Invalid email");
        
    }
    console.log("Form Submitted succesfully");
    
}
try{
    validateform("","divyam0601mai");
}catch(error){
    console.log("Error caught",error.message);
    
}finally {
    console.log("code executed");
    
}