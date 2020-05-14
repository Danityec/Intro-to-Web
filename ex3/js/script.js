

// פונקציה שמחשבת את מספר המלבנים
function numrectangle(){

    var firstName = "Danit";
    var lastName = "Yechezkel";
    
    var a = firstName.length  * lastName.length ;
    return a;
}

// פונקציה שמדפיסה את הריבועים
(function(){
   
    var tmp = numrectangle();
    var section = "" ;

    section += '<section onmouseover="mouseOn()" onmouseout="mouseOff()"></section>'
    for( var i=1 ; i< tmp ; i++)
              section += "<section></section>" ;
    

    var main3 = document.getElementById("main3");
    main3.innerHTML = section;

})();

// פונקציה מעבר עכבר
function mouseOn()
{
    var main3 = document.getElementById("main3");
    var section = main3.getElementsByTagName("section")[0];

    section.style.backgroundImage = "url('images/NameD.png')";
}

function mouseOff(){
    var main3 = document.getElementById("main3");
    var section = main3.getElementsByTagName("section")[0];

    section.style.backgroundImage = "none";

}

// צבע הקופסא משתנה
function color(){
    var main3 = document.getElementById("main3");
    var section = main3.getElementsByTagName("section");
    for (i=0 ; i< 5 ; i++)
          section[i].style.backgroundColor = "#3f3f3f";

}

function noColor(){
    var main3 = document.getElementById("main3");
    var section = main3.getElementsByTagName("section");
    for (i=0 ; i< 5 ; i++)
          section[i].style.backgroundColor = "#ffffff";
}

