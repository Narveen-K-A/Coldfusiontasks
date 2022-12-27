<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <cfoutput>
            <form action="main.cfm" method="post" name="myform">
                <div>
                    <input type="text" placeholder="Enter a list of numbers" name="field" class="field">
                    <input type="submit" value="Submit" class="button" id="formsubmit" name="formsubmit">
                </div>
            </form>
            <cfif structKeyExists(form, 'formsubmit')>
                <cfinvoke method="getNumbers" component="components/component" returnVariable="result">
                <cfif ArrayIsEmpty(result)>
                    There are no multiple of 3 in the given list!
                <cfelse>
                    <cfloop array="#result#" index="i">
                        #i#
                    </cfloop>
                </cfif>
                <cfset structClear(form)>
            </cfif>  
        </cfoutput>
    </body>
</html>