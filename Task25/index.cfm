<html>
    <head>
        <link rel="stylesheet" href="css/style.css">       
        <title></title>
    </head>
    <body>
        <cfoutput>
            <div class="mainBody">
                <div>
                    <form action="count.cfc?method=getCount" method="post" autocomplete="off" name="myform">
                        <textarea name="text" cols="50" rows="5" id="text"></textarea>
                        <div>
                            <input type="submit" name="submit" id="submit" value="Submit" class="button">
                        </div>
                    </form>
                    <cfobject  name="textObj" type="component" component="tagCloud" action="Create">
                </div>
            </div>
            <cfif structKeyExists(session, "getWordString")>
				<cfinclude template="task25.cfm">
				<cfset structClear(Session)>
			</cfif>
        </cfoutput>
    </body>
</html>