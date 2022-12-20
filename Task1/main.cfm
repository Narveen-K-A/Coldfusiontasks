<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <cfoutput>
            <form action="components/component.cfc?method=getNumbers" method="post" name="myform">
                <div>
                    <input type="text" placeholder="Enter a number between 1 and 5" name="field" class="field">
                    <input type="submit" value="Submit" class="button" id="formsubmit" name="formsubmit">
                </div>
            </form>
        </cfoutput>
    </body>
</html>