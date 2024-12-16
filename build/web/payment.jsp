

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cinema Ticket Booking</title>
    <link rel="stylesheet" href="css/styles.css">
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="js/navbar.js" defer></script>
    <style>
        #logo{
            height: 45px;
            margin-top: 3px;
            /*margin-left: 13px;*/
        }
        #head{
            height: 75px;
        }
        #navigation{
            font-size:20px;
        }
    </style>
    
    
   
</head>



<body class="body1">
      <header id="head" class="fixed top-0 left-0 w-full z-50 bg-gray-900 bg-opacity-90 backdrop-blur-sm shadow-lg">
      <div class="container mx-auto flex justify-between items-center px-6 py-3">
        <!-- Logo -->
        <h1 class="text-3xl font-extrabold text-teal-300 tracking-wide"> 
            <!--i changed it-->
            <!--<a href="Dashboard/home.jsp"><img src="flick 2.png"/></a>-->
            <a href="home.jsp"><img src="images/logo.png" id="logo"></a>
             <!--<a href="https://www.tesla.com/"><img src="logo.svg" class="i1"/></a>-->
        </h1>

        <!-- Navigation Menu (Desktop) -->
        <nav id="navigation" class="hidden md:flex space-x-8 text-lg font-medium text-gray-300">
          <a href="home.jsp" class="hover:text-teal-300 transition duration-300">Home</a>
          <a href="#about-us" class="hover:text-teal-300 transition duration-300">About Us</a>
          <!--<a href="#upcoming-movies"" class="hover:text-teal-300 transition duration-300">Movies</a>-->
          <a href="movies.jsp"" class="hover:text-teal-300 transition duration-300">Movies</a>
          <!--<a href="movies.jsp" class="hover:text-teal-300 transition duration-300">Movies</a>-->
          <a href="#faq" class="hover:text-teal-300 transition duration-300">FAQ</a>
          <a href="register.html" class="hover:text-teal-300 transition duration-300">Sign up</a>
        </nav>

        <!-- Profile Section -->
<!--        <div class="hidden md:flex items-center space-x-4">
          <img src="resources/dashboard/home/profile.svg" alt="User Logo" class="w-10 h-10 rounded-full border-2 border-teal-300">
          
              
          <span class="text-gray-300 font-medium">user@gmail.com</span>
          
          
        </div>-->

        <!-- Mobile Menu Button -->
        <button id="menu-toggle" class="block md:hidden text-teal-300 focus:outline-none">
          <svg class="w-8 h-8" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16m-7 6h7" />
          </svg>
        </button>
      </div>

      <!-- Mobile Navigation Menu -->
      <nav id="mobile-menu" class="hidden bg-gray-800 bg-opacity-90 md:hidden">
        <ul class="flex flex-col space-y-4 text-lg font-medium text-gray-300 py-4 px-6">
          <li><a href="#features" class="block hover:text-teal-300 transition duration-300">Features</a></li>
          <li><a href="#movies" class="block hover:text-teal-300 transition duration-300">Movies</a></li>
          <li><a href="#contact" class="block hover:text-teal-300 transition duration-300">Contact</a></li>
          <li>
            <div class="flex items-center space-x-4">
              <img src="https://via.placeholder.com/40" alt="User Logo" class="w-10 h-10 rounded-full border-2 border-teal-300">
              <span class="text-gray-300 font-medium">...</span>
            </div>
          </li>
        </ul>
      </nav>
    </header>

    <!-- Main Container -->
    <div class="main-container">
        <!-- Left Section: Food and Beverages -->
        <div class="left-section">
            <h2>Food and Beverage</h2>
            <!-- Tabs -->
            <div class="tabs">
                <button class="tab-button active" onclick="showSection('beverages')">Beverages</button>
                <button class="tab-button" onclick="showSection('popcorn')">Popcorn</button>
            </div>
            <!-- Food Items -->
            <div id="beverages-section" class="food-items">
                <!-- Beverages Section -->
                <div class="food-item" data-price="4" data-name="Americano">
                    <img src="images/payments/americano.jpg" alt="Americano">
                    <div>
                        <p>Americano</p>
                        <p>USD 4.00</p>
                    </div>
                    
                    <input type="number" value="1" min="1" class="qty-input">
                    <button class="add-button" onclick="addToCart('Americano', 4)">Add</button>
                </div>
                
                <div class="food-item" data-price="4" data-name="Hot Chocolate">
                    <img src="images/payments/hot-chocolate.jpg" alt="Hot Chocolate">
                    <div>
                        <p>HOT Chocolate</p>
                        <p>USD 4.00</p>
                    </div>
                    <input type="number" value="1" min="1" class="qty-input">
                    <button class="add-button" onclick="addToCart('Hot Chocolate', 4)">Add</button>
                </div>
                <div class="food-item" data-price="4" data-name="Cappuccino">
                    <img src="images/payments/cappuccino.jpg" alt="Cappuccino">
                    <div>
                        <p>Cappuccino</p>
                        <p>USD 4.00</p>
                    </div>
                    <input type="number" value="1" min="1" class="qty-input">
                    <button class="add-button" onclick="addToCart('Cappuccino', 4)">Add</button>
                </div>
            </div>

            <div id="popcorn-section" class="food-items" style="display: none;">
                <!-- Popcorn Section -->
                <div class="food-item" data-price="3" data-name="Small Popcorn">
                    <img src="images/payments/small-popcorn.jpg" alt="Small Popcorn">
                    <div>
                        <p>Small Popcorn</p>
                        <p>USD 3.00</p>
                    </div>
                    <input type="number" value="1" min="1" class="qty-input">
                    <button class="add-button" onclick="addToCart('Small Popcorn', 3)">Add</button>
                </div>
                <div class="food-item" data-price="5" data-name="Large Popcorn">
                    <img src="images/payments/large-popcorn.jpg" alt="Large Popcorn">
                    <div>
                        <p>Large Popcorn</p>
                        <p>USD 5.00</p>
                    </div>
                    <input type="number" value="1" min="1" class="qty-input" id="qty-input" >
                    <button class="add-button" onclick="addToCart('Large Popcorn', 5)">Add</button>
                </div>
            </div>
        </div>

        <!-- Right Section: Ticket Details -->
        <div class="right-section">
            <h1>Book Your Cinema Ticket</h1>
            <div class="purchase-summary">
                <h2>Purchase Summary</h2>
                <table id="summary-table">
                    <tr>
                        <td>ADULT Ticket (x <span id="ticketCount">1</span>)</td>
                        <td>USD <span id="ticketPrice">0.00</span></td>
                    </tr>
                    <tr>
                        <td>VAT Included</td>
                        <td>USD <span id="vatAmount">0.00</span></td>
                    </tr>
                    <tr id="added-items-row">
                        <td><strong>Items:</strong></td>
                        <td id="added-items"></td>
                    </tr>
                    <tr>
                        <th>Total</th>
                        <th>USD <span id="totalAmount">0.00</span></th>
                    </tr>
                </table>
            </div>

            <div class="user-details">
                <h3>Your Details</h3>
                <form id="detailsForm" action="submitPayment" method="post">
                    <input type="text" placeholder="First & Last Name" id="username" required>
                    <input type="tel" placeholder="07X XXXXXXX" id="mobile" required pattern="\d{10}">
                    <input type="email" placeholder="Email Address" id="useremail" required>
                    <label>
                        <input type="checkbox" required> I agree to the <a href="payment/terms and conditions.html">Terms & Conditions</a>
                    </label>
                    
                    
                </form>
            </div>

            <!-- Pay with credit or debit card Button -->
             <h1>Make Your Payment</h1>
            


            <!-- PayPal Payment Section -->
            <form action="PayPalServlet" method="POST">
                <input type="hidden" id="hiddenAmount" name="amount" value="">
               
            </form>
             <button class="btn-paypal" onclick="checkout();"  >Pay with PayPal</button>
        </div>
    </div>

  <script src="js/script.js" defer></script>
 
  <footer class="bg-gray-900 text-white py-10">
        <div class="container mx-auto px-6 lg:px-12 grid grid-cols-1 md:grid-cols-4 gap-8">
          <!-- About Section -->
          <div>
            <h3 class="text-teal-300 font-bold text-lg mb-4">About Us</h3>
            <p class="text-gray-300 text-sm leading-relaxed">
              Welcome to FLICK! Your ultimate destination for the latest movies and theater experiences.
            </p>
          </div>

          <!-- Quick Links -->
          <div>
            <h3 class="text-teal-300 font-bold text-lg mb-4">Quick Links</h3>
            <ul class="space-y-2">
              <li><a href="home.jsp" class="text-gray-300 hover:text-teal-300 transition">Home</a></li>
              <li><a href="movies.jsp" class="text-gray-300 hover:text-teal-300 transition">Top Movies</a></li>
              <li><a href="movies.jsp" class="text-gray-300 hover:text-teal-300 transition">Now Showing</a></li>
              <li><a href="#" class="text-gray-300 hover:text-teal-300 transition">Contact Us</a></li>
            </ul>
          </div>

          <!-- Contact Info -->
          <div>
            <h3 class="text-teal-300 font-bold text-lg mb-4">Contact Us</h3>
            <p class="text-gray-300 text-sm">
              <strong>Email:</strong> support@smbookings.com<br>
              <strong>Phone:</strong> +123 456 7890<br>
              <strong>Address:</strong> 123 Cinema St, Movietown, USA
            </p>
          </div>

          <!-- Social Media -->
          <div>
            <h3 class="text-teal-300 font-bold text-lg mb-4">Follow Us</h3>
            <div class="flex space-x-4">
              <a href="#" class="text-gray-400 hover:text-teal-300">
                <img src="resources/landing/fb.svg" loading="lazy" class="w-6 h-6" alt="Fb Icon">
              </a>
              <a href="#" class="text-gray-400 hover:text-teal-300">
                <img src="resources/landing/twitter.svg" loading="lazy" class="w-6 h-6" alt="Twitter Icon">
              </a>
              <a href="#" class="text-gray-400 hover:text-teal-300">
                <img src="resources/landing/insta.svg" loading="lazy" class="w-6 h-6" alt="Insta Icon">
              </a>
            </div>
          </div>
        </div>

        <!-- Bottom Bar -->
        <div class="mt-10 border-t border-gray-700 pt-6 text-center text-sm text-gray-500">
          &copy; 2024 SmBookings. All Rights Reserved. | <a href="payment/privacy-policy.html" class="text-teal-300 hover:underline">Privacy Policy</a>
        </div>
      </footer>

<!-- Add this script before closing body tag -->

<script>
function checkout() {
    // Collect form data
    const username = document.getElementById('username').value.trim();
    const email = document.getElementById('useremail').value.trim();
    const phone = document.getElementById('mobile').value.trim();
    let amount = document.getElementById('totalAmount').textContent.trim();
    const terms = document.querySelector('#detailsForm input[type="checkbox"]:first-of-type');

    console.log('Username:', username);
    console.log('Email:', email);
    console.log('Phone:', phone);
    console.log('Raw amount:', amount);

    // Validate inputs
    if (!username || !email || !phone || !amount) {
        alert('Please fill in all fields and ensure a total amount is calculated.');
        return;
    }
    if (!terms.checked) {
            alert("You must agree to the terms and conditions.");
            terms.focus();
            return;
        }
    

    // Remove 'USD ' prefix if present
    if (amount.startsWith('USD ')) {
        amount = amount.replace('USD ', '').trim();
    }
    console.log('Processed amount:', amount);

    // Prepare data for submission
    const data = new URLSearchParams({
        username: username,
        email: email,
        phone: phone,
        amount: amount
    });

    // Send data to server
    fetch('submitPayment', { // Adjusted servlet path
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded'
        },
        body: data.toString()
    })
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.json();
        })
        .then(data => {
            if (data.success) {
                // alert('Booking confirmed! Booking ID: ' + data.bookingId);

                // Set the hiddenAmount value before submitting the form
                document.getElementById('hiddenAmount').value = amount;

                // Redirect to PayPalServlet programmatically
                setTimeout(function() {
                    window.location.href = 'PayPalServlet?paymentId=' + data.bookingId;
                }, 1000); // Delay the redirect by 1 second to ensure the response is fully processed
            } else {
                alert('Booking failed. Please try again.');
            }
        })
        .catch(error => {
            console.error('Error:', error);
            alert('An error occurred. Please try again.');
        });
}
</script>



</html>
