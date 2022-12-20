<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <cfoutput>
            <form action="components/component.cfc?method=getAge" method="post" name="myform">
                <div>
                    <label for="user">Enter user's age:</label><br>
                    <input type="date" placeholder="Enter your date of birth" name="user" class="field"><br>
                    <label for="user">Enter user's mother's age:</label><br>
                    <input type="date" placeholder="Enter your mother's date of birth" name="mother" class="field">
                    <div>
                        <input type="submit" value="Submit" class="button" id="submit" name="submit">
                    </div>
                </div>
            </form>     
        </cfoutput>
    </body>
</html>