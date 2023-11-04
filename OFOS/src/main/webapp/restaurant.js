function viewMenu() {
    var restaurantForm = `
        <form id="restaurantForm">
            <label for="restaurantName">Restaurant Name:</label>
            <input type="text" id="restaurantName" >
            <label for="restaurantImage">Restaurant Image URL:</label>
            <input type="text" id="Image" required>
            <button type="submit">Submit</button>
        </form>
    `;

    var img=document.getElementById("mainImage");
    var text=document.getElementById("mainName");
    document.getElementById("menuItems").innerHTML = restaurantForm;

    document.getElementById("restaurantForm").addEventListener("submit", function(event) {
        event.preventDefault();
        let x=event.target[0].value
        let x1=event.target[1].value
        img.src=`${x1}`
        text.textContent=x

        var numItems = parseInt(prompt("Enter the number of menu items:"));

        var menuForm = `
            <form id="menuForm">
                <h3>Menu Items:</h3>
        `;

        for (var i = 1; i <= numItems; i++) {
            menuForm += `
                <div class="menu-item">
                    <label for="dishImage${i}">Dish ${i} Image URL:</label>
                    <input type="text" id="dishImage${i}" required>
                    <label for="dishName${i}">Dish ${i} Name:</label>
                    <input type="text" id="dishName${i}" required>
                    <label for="dishDescription${i}">Dish ${i} Description:</label>
                    <textarea id="dishDescription${i}" required></textarea>
                    <label for="dishPrice${i}">Dish ${i} Price:</label>
                    <input type="text" id="dishPrice${i}" required>
                </div>
            `;
        }

        menuForm += `
            <button type="submit">Submit Menu</button>
            </form>
        `;

        document.getElementById("menuItems").innerHTML = menuForm;

        document.getElementById("menuForm").addEventListener("submit", function(event) {
            event.preventDefault();
            for (var i = 1; i <= numItems; i++) {
                var dishImage = document.getElementById(`dishImage${i}`).value;
                var dishName = document.getElementById(`dishName${i}`).value;
                var dishDescription = document.getElementById(`dishDescription${i}`).value;
                var dishPrice = document.getElementById(`dishPrice${i}`).value;

                var menuItem = document.createElement("div");
                menuItem.className = "menu-item";
                menuItem.innerHTML = `
                    <img src="${dishImage}" alt="${dishName}" class="dish-image">
                    <h4>${dishName}</h4>
                    <p>${dishDescription}</p>
                    <span class="price">$${dishPrice}</span>
                `;

                document.getElementById("menuItems").appendChild(menuItem);
            }
        });
    });
}
