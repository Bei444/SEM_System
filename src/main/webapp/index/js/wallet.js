function popDiv(){
    //获取div元素
    var popBox = document.getElementById("popDiv");
    var popLayer = document.getElementById("popLayer");
    //控制两个div的显示和隐藏
    popBox.style.display = "block";
    popLayer.style.display = "block";
}
function popDiv2(){
    var popBox2 = document.getElementById("popDiv2");
    var popLayer2 = document.getElementById("popLayer2");
    popBox2.style.display = "block";
    popLayer2.style.display = "block";
}

function closePop(){
    //获取弹出元素
    let popDiv = document.getElementById("popDiv");
    popDiv.style.display = "none";
}
function closePop2(){
    let popDiv2 = document.getElementById("popDiv2");
    popDiv2.style.display = "none";
    
}