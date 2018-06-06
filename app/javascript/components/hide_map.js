function hide_map() {
    var hide = document.getElementById("map");
    if (hide.style.display === "none") {
        hide.style.display = "block";
    } else {
        hide.style.display = "none";
    }
}

export { hide_map };
