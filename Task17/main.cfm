<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <cfoutput>
            <form action="main.cfm" method="post" name="form">
                <div>
                    <input type="number" placeholder="Enter a natural number!" name="field" class="field">
                    <input type="submit" value="Submit" class="button" id="formsubmit" name="formsubmit">
                </div>
            </form>
            <cfif structKeyExists( form,'formsubmit')>
                <cfinvoke  method="getNumbers" component="components/component" returnVariable="result">
                <cfloop array="#result#" index="i">
                    #i#
                </cfloop>
                <cfset structClear(form)>
            </cfif>  
        </cfoutput>
    </body>
</html>