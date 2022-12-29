<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <cfoutput>
            <div class="mainBody">
                <form  method="post" name="form">
                    User ID:<br>  
                    <input type="text" name="userId" class="field" required="yes" id="userId"><br><br>
                    Password:<br>
                    <input type="password" name="password" class="field" id="password" required="yes"><br><br>
                    <input type="submit" name="submit" class="button" value="Submit">
                </form>
                <cfif structKeyExists( form,'submit')>
                    <cfinvoke method="textField" component="components/component">
                    <cfset structClear(form)>
                </cfif>
            </div>
        </cfoutput>
    </body>
</html>