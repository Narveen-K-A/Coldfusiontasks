<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <cfoutput>
            <form action="main.cfm" method="post" name="form">
                <div>
                    <input type="number" placeholder="Enter a natural number!" name="field" class="field">
                    <input type="submit" value="Submit" class="button" id="submit" name="submit">
                </div>
            </form>
            <cfif structKeyExists(form,'submit')>
                <cfinvoke method="getNumbers" component="components/component" returnVariable="result">
                <cfdump  var="#result#">
            </cfif>  
        </cfoutput>
    </body>
</html>