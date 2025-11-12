function shownumbers(...numbers) {
    console.log("Received numbers:",numbers);
    const total = numbers.reduce((sum,num)=> sum+num,0);
    console.log("Total:",total);
    
    
}
shownumbers(10,20,30);
shownumbers(5,2,30,20);