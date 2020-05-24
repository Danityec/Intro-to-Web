function createCrds() {

    var NumCards = 8;

    var photos = ["includes/images/Gal.png", "includes/images/Aric.png", "includes/images/Yael.png", "includes/images/Yuval.png", "includes/images/Chen.png", "includes/images/Matan.png", "includes/images/Shira.png", "includes/images/Ohad.png"];
    var name = ["Gal Baruch ", "Aric Harel ", "Yeal Shor", "Yuval Segev", "Chen Lev", "Matan Ziv", "Shira Rot", "Ohad Lavi"];
    var age = ["27", "38", "21", "49", "24", "30", "29", "39"];
    var gender = ["woman", "man", "woman", "man", "woman", "man", "woman", "man"];
    var smoking = ["yes", "no", "no", "yes", "no", "yes", "yes", "no"];
    var music = ["yes", "yes", "no", "yes", "no", "yes", "no", "yes"];
    var pet = ["yes", "no", "no", "yes", "yes",];
    var time = ["18:30", "19:00", "18:30", "18:45", "20:00", "20:15", "18:45", "19:00"];
    var location = ["Hadera", "Gan-Shmuel", "Netanya", "Zihron-Yaacov", "Herzliya", "Hadera", "Haifa", "Kfar-Yona"];
    var rating = ["9.5", "8.2", "7.9", "7.2", "9.0", "8.9", "6.8", "7.0"];

    var string = "";

    for (i = 0; i < 8; i++) {

        string += '<div class="card"> <a href="TripInfo.html">';
        string += '<img src=' + photos[i] + ' alt="User" class="Photo">';

        if (gender[i] == 'woman')
            string += '<img src="includes/images/Woman.png" alt="Woman" class="gender"></img>';
        else string += '<img src="includes/images/Man.png" alt="Man" class="gender"></img>';

        string += ' <section class="personalInfo">';
        string += '<h4>' + name[i] + ' <span>' + age[i] + '</span></h4>';

        string += ' <section class="prefs">';
        string += '<img src="includes/images/Sound.png" alt="Sound" class="music">';
        string += '<img src="includes/images/Pet.png" alt="Pet" class="pet">';
        string += '<img src="includes/images/Cigarette.png" alt="Cigarette" class="smoke">';

        string += ' </section></section><section class="tripInfo">';
        string += '<span><img src="includes/images/Time.png" alt="Time" class="time"> ' + time[i] + '</span>';
        string += '<span><img src="includes/images/NavigationLocation.png" alt="Location" class="location">' + location[i] + '</span>';
        string += '<span><img src="includes/images/Favorites.png" alt="Rating" class="rating">' + rating[i] + '</span></section></div></a></div>';
    }

    var list = document.getElementsByClassName("list")[0];
    list.innerHTML = string;

    for (i = 0; i < 8; i++) {

        var sound = list.getElementsByClassName("music")[i];
        var smoke = list.getElementsByClassName("smoke")[i];
        var pets = list.getElementsByClassName("pet")[i];

        if (music[i] == 'no')
            sound.style.opacity = '20%';

        if (pet[i] == 'no')
            pets.style.opacity = '20%';

        if (smoking[i] == 'no')
            smoke.style.opacity = '20%';

    }
}

function selected(num) {
    var pref = document.getElementsByClassName("preferences")[0];
    var btn = pref.getElementsByTagName("button")[num - 1];
    if (btn.style.borderColor == "rgb(70, 136, 71)")
        btn.style.borderColor = "rgb(204, 204, 204)";
    else
        btn.style.borderColor = "rgb(70, 136, 71)";
}

$(document).ready(function () {
    if ($(window).width() < 900) {
        $('.hamburger').hover(function () {
            $('nav').slideDown('medium');
        },
            $('nav').hover(
                function () {
                    $('nav').show();
                },
                function () {
                    $('nav').slideUp('medium');
                }
            )
        );
    }
});

$(document).ready(function () {
    if ($(window).width() > 900) {
        $(".card").hover(function () {
            $(this).css("background-color", "rgba(212, 232, 204, 1)");
        }, function () {
            $(this).css("background-color", "unset");
        });
    }
});