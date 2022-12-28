<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <cfoutput>
            <form action="main.cfm" method="post" name="form">
                <div>
                    <input type="number" placeholder="Enter a number between 1 and 10" name="field" class="field">
                    <input type="submit" value="Submit" class="button" id="formsubmit" name="formsubmit">
                </div>
            </form>
            <cfif structKeyExists(form, "formsubmit")>
                <cfinvoke method="sqlQuery" component="components/component" returnVariable="result">
                Number #form.field# is #result#<br>
                <cfinclude template="task.cfm">
                <cfset StructClear(form)>
            </cfif>  
        </cfoutput>
    </body>
</html>