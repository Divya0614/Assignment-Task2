let book = {
    title :"The novel",
    author:"Divya M",
    pages:"26",

 describe:function () {
    console.log('Title:${this.title}');
    console.log('Author:${this.author}');
    console.log('Pages:${this.pages}');
    
    
}    
    
};
let {title,author}=book;

console.log('Title:${title}');
console.log('Author:${author}');


