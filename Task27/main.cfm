<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <cfoutput>
            <div class="mainBody">
                <form  method="post" name="form">
                    <div>
                        User ID:
                    </div>
                    <input type="text" name="userId"  class="field" required="yes" id="userId"><br>
                    <div>
                        Password:
                    </div>
                    <input type="password" name="password" class="field" id="password" required="yes"><br>
                    <input type="submit" name="submit" class="button">
                </form>
                <cfif structKeyExists( form,'submit')>
                    <cfinvoke method="textField" component="components/component">
                    <cfset structClear(form)>
                </cfif>
            </div>
        </cfoutput>
    </body>
</html>
