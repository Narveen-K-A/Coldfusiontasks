<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <cfoutput>
            <div class="mainBody">
                <form action="getvalue.cfc?method=count" method="post" name="form" enctype="multipart/form-data">
                    <input type="file" name="fileField" >
                    <input type="submit" value="Submit" class="button" id="submit" name="submit">
                </form>
            </div>
            <cfif structKeyExists(session, "getString")>
				<cfinclude template="task.cfm">
				<cfset structClear(Session)>
			</cfif>
        </cfoutput>
    </body>
</html>