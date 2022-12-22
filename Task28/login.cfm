<html>
    <head>
        <link rel="stylesheet" href="css/css.css">
    </head>
    <body>
        <cfoutput>
            <div class="mainBody">
                <form  method="post" name="form">
                    User id:  <input type="text" name="userId"  class="text" required="yes" id="userId"><br>
                    <br>
                    Password:  <input type="password" name="password" class="text" id="password" required="yes"><br>
                    <input type="submit" name="submit" class="text">
                </form>
                <cfif structKeyExists( form,'submit')>
                    <cfinvoke method="textField" component="components/components">
                    <cfset structClear(form)>
                </cfif>
            </div>
        </cfoutput>
    </body>
</html>