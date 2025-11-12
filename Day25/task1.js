try {
    console.log(nonExistentVariable);
    
} catch (error) {
    if (error instanceof ReferenceError) {
        console.log("A ReferenceError occured:" + error.message);
    }else{
        console.log("other errro occured:"+ error);
        
    }
    
}