
    const searchInput = document.getElementById("searchInput");
    
    searchInput.addEventListener("input", function() {
        const searchText = searchInput.value.toLowerCase();

        filterItems("tiffinsSection", searchText);
        filterItems("vegNonVegSection", searchText);
        filterItems("foodCourtsSection", searchText);
    });

    function filterItems(sectionId, searchText) {
        const section = document.getElementById(sectionId);
        const items = section.getElementsByClassName("res-item");

        for (const item of items) {
            const itemName = item.querySelector("h3").textContent.toLowerCase();
            const shouldDisplay = itemName.includes(searchText);

            item.style.display = shouldDisplay ? "block" : "none";
        }
    }

