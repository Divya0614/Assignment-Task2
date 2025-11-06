let user = {
    username:"Divya",
    login:function(){
        console.log(this.username + "has logged in");
        
    },
    logout:function(){
        console.log(this.username +"has logged out");
        
    }
};
user.login();
user.logout();