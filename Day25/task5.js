function checklimit(num) {
    if (num > 100){
        throw new Error("Number cant be greater than 100");
        
    }else{
        console.log("The number is within the limit:", num);
        
    }
}

try{
    checklimit(20);
}catch(error){
    console.log("Eror caught:",error.message);
    
}finally{
    console.log("code executed");
    
}