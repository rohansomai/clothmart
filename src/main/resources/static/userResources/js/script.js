function add_to_cart(pid, pname, price) {
    // var x = "qty" + pid;
    // var qty = document.getElementById(x);
    // qty.style.display = "";

    // var y = "cart" + pid;
    // var add = document.getElementById(y);
    // add.style.display = "none";
    

    let cart = localStorage.getItem("cart");
    if (cart == null || cart.length==0) {
        let products = [];
        let product = {
            productId: pid,
            productName: pname,
            productPrice: price,
            productQuantity: 1
        }
        products.push(product);
        localStorage.setItem("cart", JSON.stringify(products));
        showToast(pname + " is successfully added to the cart!!");
    }
    else 
    {
        let pCart = JSON.parse(cart);
        let product = pCart.find((item) => item.productId == pid);
        if (product) 
        {
            product.productQuantity = product.productQuantity + 1;
    
            pCart.map((item) => {
    
                if (item.productId == product.productId) {
                    item.productQuantity = product.productQuantity;
                }
    
            });
            localStorage.setItem("cart", JSON.stringify(pCart));
            showToast(pname + " quantity has been increased!!" + " Quantity: "+ product.productQuantity);
        }
        else
        {
            let product = {
                productId: pid,
                productName: pname,
                productPrice: price,
                productQuantity: 1
            }
            pCart.push(product);
            localStorage.setItem("cart", JSON.stringify(pCart));
            showToast(pname + " is successfully added to the cart!!");       
        }
        updateCart();
    
}

function addQty(pid) {

    let cart = localStorage.getItem("cart");
    // let pCart = JSON.parse(cart);
    // let product = pCart.find((item) => item.productId == pid);
    // if (product) {
    //     product.productQuantity = product.productQuantity + 1;

    //     pCart.map((item) => {

    //         if (item.productId == product.productId) {
    //             item.productQuantity = product.productQuantity;
    //         }

    //     });
        localStorage.setItem("cart", JSON.stringify(pCart));
        var x = "ProductQty" + pid;
        var qty = document.getElementById(x);
        qty.innerHTML = product.productQuantity;
    }
}

function removeQty(pid) {

    let cart = localStorage.getItem("cart");
    let pCart = JSON.parse(cart);
    let product = pCart.find((item) => item.productId == pid);
    if (product) {
        product.productQuantity = product.productQuantity - 1;

        pCart.map((item) => {

            if (item.productId == product.productId) {
                item.productQuantity = product.productQuantity;
            }

        });
        localStorage.setItem("cart", JSON.stringify(pCart));
        var x = "ProductQty" + pid;
        var qty = document.getElementById(x);
        qty.innerHTML = product.productQuantity;
    }
}

function updateCart()
{
    let cart = localStorage.getItem("cart");
    let pCart = JSON.parse(cart);

    if(pCart==null || pCart.length == 0)
    {
        $(".cart-items").html("( 0 )");
        $(".cart-body").html("<h3>Cart does not have any products</h3>");
        $(".checkout-btn").addClass("disabled");
    }
    else
    {
        $(".cart-items").html(`( ${pCart.length} )`);
        
       let table = `

       <table class="table">
            <thead class="thead">
                <tr>
                    <th>Product Name</th>
                    <th>Product Price</th>
                    <th>Product Quantity</th>
                    <th>Total Price</th>
                    <th>Action</th>
                </tr>
            </thead>
       `;
       let totalPrice = 0;
       pCart.map((item) => {

               table += `
                <tr>
                    <td>${item.productName}</td>
                    <td>&#8377 ${item.productPrice}</td>
                    <td>${item.productQuantity}</td>
                    <td style="width:80px">&#8377 ${item.productPrice * item.productQuantity}</td>
                    <td><button class='btn btn-danger btn-sm' onclick='removeProductFromCart(${item.productId})'>Remove</button></td>
                </tr>
                `;
                totalPrice += item.productPrice * item.productQuantity
                

       })
       table += `<tr><td colspan="5" class="text-right font-weight-bold m-5">Total Price: &#8377 ${totalPrice} </td></tr> </table>`;
       $(".cart-body").html(table);
       $(".checkout-btn").removeClass("disabled");
    }
}

function removeProductFromCart(pid)
{
    let cart = JSON.parse(localStorage.getItem("cart"));
    let updatedCart = cart.filter((item) => item.productId != pid);
    localStorage.setItem("cart", JSON.stringify(updatedCart));
    updateCart();
}

$(document).ready(function()
{
    updateCart();
});

function showToast(content) {
            $("#toast").addClass("display");
            $("#toast").html(content);

            setTimeout(() => {
                $("#toast").removeClass("display");
            }, 3000)
        }
        