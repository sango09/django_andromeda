openNav = () => {
    const toggle = document.getElementById("sidebar")
    if (toggle.classList.contains("toggled")) {
        toggle.classList.remove("toggled")
    } else {
        toggle.classList.add("toggled")
    }
}