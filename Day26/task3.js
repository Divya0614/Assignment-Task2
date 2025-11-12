function dotask(callback) {
    console.log("Task started");
    setTimeout(() => {
        callback("Task complted");
    }, 2000);
}
dotask((message) => {
    console.log(message);

})

function dotaskPromise() {
    return new Promise((resolve, reject) => {
        console.log("Task started");
        setTimeout(() => {
            resolve("Tsk completed");
        }, 2000);

    });
}
dotaskPromise()
    .then((message) => {
        console.log(message);

    })
    .catch((error) => {
        console.log("Error:", error);

    });