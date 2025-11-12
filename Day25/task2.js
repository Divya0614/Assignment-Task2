try {
    console.log(nonExistentVariable);
    
} catch (error) {
    if(error instanceof ReferenceError) {
        console.log("A ReferenceError:" + error.message);
        
    }else{
        console.log("Other errror:" + error);
        
    }
    
}finally {
    console.log("Code Executed");
    
}