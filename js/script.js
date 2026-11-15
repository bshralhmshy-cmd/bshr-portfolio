fetch("php/get_data.php")
    .then(function (response) {
        return response.json();
    })
    .then(function (data) {
        document.getElementById("logo").innerHTML = data.info.full_name;
        document.getElementById("name").innerHTML = data.info.full_name;
        document.getElementById("title").innerHTML = data.info.job_title;
        document.getElementById("about-text").innerHTML = data.info.about;
        document.getElementById("email").innerHTML = data.info.email;
        document.getElementById("city").innerHTML = data.info.city;

        for (let i = 0; i < data.skills.length; i++) {
            document.getElementById("skills-list").innerHTML +=
                "<p>" + data.skills[i].skill_name + "</p>" +
                "<div class='bar'><div class='fill' style='width:" + data.skills[i].skill_level + "%'></div></div>";
        }

        for (let i = 0; i < data.projects.length; i++) {
            document.getElementById("projects-list").innerHTML +=
                "<div class='card'>" +
                "<h3>" + data.projects[i].title + "</h3>" +
                "<p>" + data.projects[i].description + "</p>" +
                "</div>";
        }
    });


function changeTheme() {
    document.body.classList.toggle("dark");
}
