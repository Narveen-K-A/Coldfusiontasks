<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <cfoutput>
            <form action="components/component.cfc?method=textField" method="post" name="form">
                <div>
                    <input type="number" placeholder="Enter a number between 1 and 10" name="field" class="field">
                    <input type="submit" value="Submit" class="button" id="formsubmit" name="formsubmit">
                </div>
            </form>    
        </cfoutput>
    </body>
</html>