<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/task25.css">       
        <title></title>
    </head>
    <body>
        <cfoutput>
            <div class="main">
                <form action="count.cfc?method=getCount" method="post" autocomplete="off" name="myform">
                    <textarea name="text" cols="50" rows="5" id="text"></textarea>
                    <input type="submit" name="submit" id="submit">
                </form>
                <cfobject  name="textObj" type="component" component="tagCloud" action="Create">
            </div>
            <cfif structKeyExists(session, "getWordString")>
				<cfinclude template="task25.cfm">
				<cfset structClear(Session)>
			</cfif>
        </cfoutput>
    </body>
</html>