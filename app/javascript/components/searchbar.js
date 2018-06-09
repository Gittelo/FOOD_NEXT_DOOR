  const searchButton = document.querySelector(".search");
  const input = document.querySelector('#search');
  const expandForm = (element) => {

    searchButton.classList.toggle("close");
    input.classList.toggle("square");
    if (searchButton.classList.contains("close")) {
      input.focus();
    } else {
      input.blur();
    }
  };
  document.getElementById("search-button").addEventListener("click", expandForm);
