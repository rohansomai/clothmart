// Get the modal
var modal = document.getElementById("myModal");

$(".productImage").click(function() {
	// Get the image and insert it inside the modal - use its "alt" text as a caption
	console.log("image clicked2");
	var img = document.getElementById("myImg");
	var modalImg = document.getElementById("img01");
	var captionText = document.getElementById("caption");
	modal.style.display = "block";
	modalImg.src = this.src;
	captionText.innerHTML = this.alt;

});

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
	modal.style.display = "none";
}

function loadProductsByRetailer() {


	var id = $("#retailer").val();
	if (id == "all") {
		loadAllProducts();
	}
	else {
		var xhr = new XMLHttpRequest();
		var tbody = document.getElementById("tbody");
		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4) {
				tbody.innerHTML = "";

				var json = JSON.parse(xhr.responseText);
				for (var i = 0; i < json.length; i++) {

					var tr = document.createElement("tr");

					var srno = document.createElement("td");
					var image = document.createElement("td");
					var imageUrl = document.createElement("img");
					var name = document.createElement("td");
					var description = document.createElement("td");
					var quantity = document.createElement("td");
					var price = document.createElement("td");
					var retailerName = document.createElement("td");
					var retailerShopName = document.createElement("td");
					var categoryName = document.createElement("td");
					var subcategoryName = document.createElement("td");


					imageUrl.setAttribute("class", "productImage");
					imageUrl.setAttribute("src", json[i].imageUrl);
					imageUrl.setAttribute("width", "50px");
					imageUrl.setAttribute("height", "50px");
					imageUrl.setAttribute("alt", json[i].name);
					// imageUrl.setAttribute("onClick", "fn()");

					var srnoText = document.createTextNode(i + 1);
					var nameText = document.createTextNode(json[i].name);
					var descriptionText = document.createTextNode(json[i].description);
					var quantityText = document.createTextNode(json[i].quantity + " Pieces");
					var priceText = document.createTextNode(json[i].price);
					var retailerNameText = document.createTextNode(json[i].retailer.firstName + " " + json[i].retailer.lastName);
					var retailerShopNameText = document.createTextNode(json[i].retailer.shopName);
					var categoryNameText = document.createTextNode(json[i].category.name);
					var subcategoryNameText = document.createTextNode(json[i].subcategory.name);

					srno.appendChild(srnoText);
					image.appendChild(imageUrl);
					name.appendChild(nameText);
					description.appendChild(descriptionText);
					quantity.appendChild(quantityText);
					price.appendChild(priceText);
					retailerName.appendChild(retailerNameText);
					retailerShopName.appendChild(retailerShopNameText);
					categoryName.appendChild(categoryNameText);
					subcategoryName.appendChild(subcategoryNameText);

					tr.appendChild(srno);
					tr.appendChild(image);
					tr.appendChild(name);
					tr.appendChild(description);
					tr.appendChild(quantity);
					tr.appendChild(price);
					tr.appendChild(retailerName);
					tr.appendChild(retailerShopName);
					tr.appendChild(categoryName);
					tr.appendChild(subcategoryName);

					tbody.appendChild(tr);

				}
			}
		}
		xhr.open("get", "getProductsByRetailer?id=" + id, true);
		xhr.send();
	}
}

function loadAllProducts() {

	
	var xhr = new XMLHttpRequest();
	xhr.onreadystatechange = function() {

		if (xhr.readyState == 4) {
			tbody.innerHTML = "";

			var json = JSON.parse(xhr.responseText);
			for (var i = 0; i < json.length; i++) {

				var tr = document.createElement("tr");

				var srno = document.createElement("td");
				var image = document.createElement("td");
				var imageUrl = document.createElement("img");
				var name = document.createElement("td");
				var description = document.createElement("td");
				var quantity = document.createElement("td");
				var price = document.createElement("td");
				var retailerName = document.createElement("td");
				var retailerShopName = document.createElement("td");
				var categoryName = document.createElement("td");
				var subcategoryName = document.createElement("td");

				imageUrl.setAttribute("src", json[i].imageUrl);
				imageUrl.setAttribute("width", "50");
				imageUrl.setAttribute("height", "50");
				imageUrl.setAttribute("alt", json[i].name);
				imageUrl.setAttribute("class", "productImage")

				var srnoText = document.createTextNode(i + 1);
				var nameText = document.createTextNode(json[i].name);
				var descriptionText = document.createTextNode(json[i].description);
				var quantityText = document.createTextNode(json[i].quantity + " Pieces");
				var priceText = document.createTextNode(json[i].price);
				var retailerNameText = document.createTextNode(json[i].retailer.firstName + " " + json[i].retailer.lastName);
				var retailerShopNameText = document.createTextNode(json[i].retailer.shopName);
				var categoryNameText = document.createTextNode(json[i].category.name);
				var subcategoryNameText = document.createTextNode(json[i].subcategory.name);

				srno.appendChild(srnoText);
				image.appendChild(imageUrl);
				name.appendChild(nameText);
				description.appendChild(descriptionText);
				quantity.appendChild(quantityText);
				price.appendChild(priceText);
				retailerName.appendChild(retailerNameText);
				retailerShopName.appendChild(retailerShopNameText);
				categoryName.appendChild(categoryNameText);
				subcategoryName.appendChild(subcategoryNameText);

				tr.appendChild(srno);
				tr.appendChild(image);
				tr.appendChild(name);
				tr.appendChild(description);
				tr.appendChild(quantity);
				tr.appendChild(price);
				tr.appendChild(retailerName);
				tr.appendChild(retailerShopName);
				tr.appendChild(categoryName);
				tr.appendChild(subcategoryName);

				tbody.appendChild(tr);

			}
		}

	}

	xhr.open("get", "getAllProductsJSON", true);
	xhr.send();
}
