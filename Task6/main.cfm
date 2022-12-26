<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <cfoutput>
            <form action="main.cfm" method="post" name="myform">
                <div>
                    <input type="text" placeholder="Enter the key for the structure" name="key" class="field">
                    <input type="text" placeholder="Enter the value for the structure" name="value" class="field">
                    <div>
                        <input type="submit" value="Submit" class="button" id="formsubmit" name="formsubmit">
                    </div>
                </div>
            </form>
            <cfif structKeyExists(form,'formsubmit')>
                <cfinvoke method="structure" component="components/component" returnVariable="result">
                <cfdump var="#result#">
            </cfif>   
        </cfoutput>
    </body>
</html>