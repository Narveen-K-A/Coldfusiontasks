<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <div class="bg">
            <div class="mainBody">
                <form action="main.cfm" method="post" name="form">
                    <div class="heading">
                        <h2>Subscribe Form</h2>
                    </div>
                    <div>
                        <label for="fname">First Name:</label>
                    </div>
                    <div>
                        <input type="text" name="name" class="fname width" id="name">
                    </div>
                    <div>
                        <label for="email">Email ID:</label>
                    </div>
                    <div>
                        <input type="mail" name="email" class="fname width" id="email">
                    </div>
                    <div>
                        <input type="checkbox" name="check" class="fname check" onclick="checktest()">
                        <label for="check">Click the checkbox for enabling the submit button!</label>
                    </div>
                    <input type="submit" value="Submit" class="fname submit">
                </form>
            </div>
        </div>
        <script src="assets/jquery.js"></script>
        <script src="js/script.js"></script>
    </body>
</html>