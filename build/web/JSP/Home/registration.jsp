<%-- 
    Document   : Registration
    Created on : 12 Apr, 2023, 12:59:24 AM
    Author     : Lenovo
--%>

<html>
    <head>
        <meta charset="UTF-8">
        <!--<meta name="viewport" content="width=device-width, initial-scale=1.0">-->
        <title>Registration Page | Covid Info</title>
        <link rel="stylesheet" href="../../CSS/Home/registration.css">
    </head>

    <body>
        <div class="container">
            <div class="title">Registration</div>
            <div class="content">
                <form action="../../registration" method="get">
                    <div class="user-details">

                        <!-- Name, DOB, EMail, Phone, City, Pin_Code,Address, Gender, Password, Today, Adhar_Card) -->
                        <div class="input-box">
                            <span class="details">User Name</span>
                            <input type="text" placeholder="Enter your name" required name="name">
                        </div>

                        <div class="input-box">
                            <span class="details">Date of Birth</span>
                            <input type="date" name="dob"  required>
                        </div>

                        <div class="input-box">
                            <span class="details">Email</span>
                            <input type="email" placeholder="Enter your email" name="email"  required>
                        </div>

                        <div class="input-box">
                            <span class="details">Phone Number</span>
                            <input type="number" placeholder="Enter your number" name="phone"  required>
                        </div>

                        <div class="input-box">
                            <span class="details">City</span>
                            <input type="text" placeholder="Enter your City" name="city"  required>
                        </div>

                        <div class="input-box">
                            <span class="details">Pin Code</span>
                            <input type="number" placeholder="Your Pin Code" name="pin_code"  required>
                        </div>

                        <div class="input-box">
                            <span class="details">Address</span>
                            <input type="text" placeholder="Your Address" name="address"  required>
                        </div>

                        <div class="input-box">
                            <span class="details">Password</span>
                            <input type="password" placeholder="Your password" name="password"  required>
                        </div>

                        <div class="input-box">
                            <span class="details">Adhar Card</span>
                            <input type="number" placeholder="Enter Adhar Card" name="adhar_card"  required>
                        </div>
                    </div>

                    <div class="gender-details" >
                        <input type="radio" name="gender" id="dot-1" value="male">
                        <input type="radio" name="gender" id="dot-2" value="Female">
                        <input type="radio" name="gender" id="dot-3" value="Prefer not a say">

                        <span class="gender-title">Gender</span>
                        <div class="category" >
                            <label for="dot-1">
                                <span class="dot one"></span>
                                <span class="gender" name="gender" value="Male">Male</span>
                            </label>
                            <label for="dot-2">
                                <span class="dot two"></span>
                                <span class="gender" name="gender" value="Female">Female</span>
                            </label>
                            <label for="dot-3">
                                <span class="dot three"></span>
                                <span class="gender" name="gender" value="Prefer not a say">Prefer not to say</span>
                            </label>
                        </div>
                    </div>

                    <div class="button">
                        <input type="submit" value="Register" >
                    </div>

                    <div class="button">
                        <input type="reset" value="Reset">
                    </div>

                    <div class="button1">
                        <!-- <button class="button">  -->
                        <a href="../../index.jsp"> Go To Home</a>
                        <!-- </button> -->
                    </div>
                </form>

            </div>
        </div>
    </body>
</html>