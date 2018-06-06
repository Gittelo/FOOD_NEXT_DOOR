function hide_map() {
    var hide = document.getElementById("map");
    if (hide.style.display === "block") {
        hide.style.display = "none";
    } else {
        hide.style.display = "block";
    }
}

export { hide_map };
