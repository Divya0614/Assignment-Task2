function sumArray(numbers){
    let sum = 0;
    for (let i = 0; i<numbers.length;i++){
        sum+=numbers[i];
    }
    return sum;

}console.log("Sum of array:",sumArray([10,5,60,36]));
