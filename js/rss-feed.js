fetch("https://blog.villalba.is/index.xml")
  .then((response) => response.text())
  .then((str) => new window.DOMParser().parseFromString(str, "text/xml"))
  .then((data) => {
    const items = data.querySelectorAll("item");
    let html = "";
    let count = 0; // Initialize a counter

    items.forEach((el) => {
      if (count < 10) {
        // Check if count is less than 10
        html += `<li><a href="${el.querySelector("link").innerHTML}">
                                ${el.querySelector("title").innerHTML}
                            </a>
                 </li>`;
        count++; // Increment the counter
      }
    });
    document.getElementById("rss-feed").innerHTML = html;
  })
  .catch((err) => console.error("Error fetching RSS feed:", err));
