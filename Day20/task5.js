function getusername(callback){
    let name = "Divya";
    callback(name);
}
function greetuser(Username){
    console.log("Welcome"+Username);
    
}getusername(greetuser);