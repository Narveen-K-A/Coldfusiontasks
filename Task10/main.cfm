<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <cfoutput>
            <form action="main.cfm" method="post" name="form">
                <div>
                    <input type="text" placeholder="Enter the key for the structure" name="key" class="field">
                    <input type="text" placeholder="Enter the value for the structure" name="value" class="field">
                    <div>
                        <input type="submit" value="Submit" class="button" id="submit" name="submit">
                    </div>
                </div>
                <cfif structKeyExists(form,'submit')>
                    <cfinvoke method="structure" component="components/component">
                </cfif> 
            </form>     
        </cfoutput>
    </body>
</html>