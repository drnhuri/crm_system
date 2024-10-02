document.querySelector("form").addEventListener("submit", function(e) {
    const inputs = document.querySelectorAll("input[required]");
    for (let input of inputs) {
        if (input.value.trim() === "") {
            alert("Please fill out all required fields.");
            e.preventDefault();
            return false;
        }
    }
});
