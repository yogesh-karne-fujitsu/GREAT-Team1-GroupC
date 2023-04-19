 <html>
<head>
    <title>Trainee and Admin login</title>
    
<style>
*{
margin : 0;
padding : 0;
font-family : san-serif;
}

body{
background: url(https://visualpharm.com/assets/40/Fujitsu-595b40b75ba036ed117d95c7.svg),url(https://cdn.dribbble.com/users/3419046/screenshots/15428526/fujitsu-800_600.gif);
               background-color: rgb(234, 232, 232); 
               background-size: 145% 145%, 20% 30%;
               background-position:  left top,left top;
               background-repeat: no-repeat;
                padding: 10%;        
}

body .hero{
height : 100%;
width : 100%;

background-position : center;
background-size : cover;
position :relative;
}

.form-box{
    width: 100%;
    max-width: 350px;
    height : 400px;
    position: relative;
    margin: 6% auto;
    background:White;
    padding : 5px;
    overflow: hidden;
}

.button-box{
width : 220px;
margin : 35px auto;
position : relative;
border-radius : 30px;
box-shadow : 0 0 20px 9px #ff61241f;
}

.toggle-btn{
padding : 10px 30px;
cursor : pointer;
background : transparent;
border : 0;
outline : none;
position : relative;
}

#btn{
top : 0;
left : 0;
position : absolute;
width : 110px;
height : 100%;
background : #f44336;
border-radius : 30px;
transition : .5s;
}

.input-group{
top : 180px;
position: absolute;
width : 280px;
transition : .5s;

}

.input-field{
width: 100%;
padding : 10px 0;
margin : 5px 0;
border-left : 0;
border-right : 0;
border-top : 0;
border-bottom: 1px solid #999;
outline : none;
background : transparent;
}

.submit-btn{
width : 85%;
padding :10px 30px;
cursor : pointer;
display : block;
Margin : auto;
background : #1677C5;
border : 0;
outline : none;
border-radius : 30px;
}
#empid{
left: 50px;
}
#adminid{
left: 450px;
}
#empalignment{
padding : 25px;
}
#adminalignment{
padding : 25px;
}

</style>
</head>

<body>


<div class = "hero">
<div class = "form-box">    
      <div class = "button-box">
         <div id = "btn"></div>
         <button type = "button" class = "toggle-btn" onclick = "empid()">Trainee</button>
         <button type = "button" class = "toggle-btn" onclick = "adminid()">Admin</button>
      </div>  
      
    <form method= "POST">  
 <form id = "empid" class = "input-group">
 <label for="empid" id = "empalignment"><b>Id </b></label>
 <input type = "text" name = "empid" class = "input-field" placeholder = "Employee Id"  required>
 <label for="password"><b>Password  </b></label>
 <input type = "password"  name = "password" class = "input-field" placeholder = "Password"  required>

 <button type= "search" class = "submit-btn">Log In</button>
 <br>
 <h2>${errorMsg}</h2>

 </form>
 
 <form id = "adminid" class = "input-group">
 <label for="adminid" id = "adminalignment"><b>Id </b></label>
 <input type = "text" name = "adminid" class = "input-field" placeholder = "Admin Id"  required>
 <label for="password"><b>Password  </b></label>
 <input type = "password"  name = "password" class = "input-field" placeholder = "Password"  required>
 
 <button type= "submit" class = "submit-btn">Log In</button>
 </form>
</div>
</div>

<script>
var x = document.getElementById("empid");
var y = document.getElementById("adminid");
var z = document.getElementById("btn");

function adminid(){
x.style.left = "-400px";
y.style.left = "50px";
z.style.left = "110px";
}

function empid(){
x.style.left = "50px";
y.style.left = "450px";
z.style.left = "0px";
}

</script>

</body>
</html>