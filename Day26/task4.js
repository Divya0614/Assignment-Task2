function fetchData(){
    return new Promise((resolve,reject)=>{
        console.log("Fetching Data");
        setTimeout(()=>{
            resolve("Data fetched successfully")
        },3000);
        
    });
}
async function getdata() {
    try{
        const result = await fetchData();
        console.log(result);
        
    }catch(error){
        console.log("Error:",error);
        
    }
    
}
getdata();