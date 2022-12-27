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
                        <input type="submit" value="Submit" class="button" id="formsubmit" name="formsubmit">
                    </div>
                </div>
                <cfif structKeyExists(form,'formsubmit')>
                    <cfinvoke method="getStruct" component="components/component" returnVariable="result">
                    <cfset structClear(form)>
                    <cfdump var="#session.task#"><br>
                    <cfif structKeyExists(session,'count')>
                        The key #session.value# is already present. Cannot add again!
                    </cfif>
                </cfif>
            </form>    
        </cfoutput>
    </body>
</html>