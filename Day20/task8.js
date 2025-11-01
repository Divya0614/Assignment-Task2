function performtask(callback){
    console.log("Perform the task");
    callback();
    
}
function showmessage(){
    console.log("Task complte");
    
}
performtask(showmessage);