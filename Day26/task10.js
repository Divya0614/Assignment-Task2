function createAsyncCounter() {
    let count = 0;
    return async function increment() {
        await new Promise((resolve) => setTimeout(resolve,1000));
        count++;
        console.log(`countern updated:${count}`);
    
        
    }

}
const counter =  createAsyncCounter();
(async() => {
    await counter();
    await counter();
    await counter();
})();