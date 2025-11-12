function task(callback) {
    console.log("Task in progress..");
    setTimeout(() => {
        callback();
    },3000);
    
}
function oncomplete() {
    console.log("Task completed");
    
}
task(oncomplete);