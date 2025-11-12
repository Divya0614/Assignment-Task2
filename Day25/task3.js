function checkNumber(num) {
    if (num < 0){
        throw new Error("Number cannot be empty");
        
    }else{
        console.log(" The no is valid",num);
        
    }
}
try {
    checkNumber(-5);
} catch (error) {
    console.log("Error caught:",error.message);
    
}finally{
    console.log("Code Executed");
    
}