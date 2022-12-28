<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <cfoutput>
            <cfif structKeyExists(session,'userFlag')>
                <div class="mainBody">
                    <div>
                        <h1>WELCOME!</h1> <br>
                    </div>
                    <a href="login.cfm" class="logout">LOGOUT</a>
                    <cfinvoke component="componentfile" method="userQuery" returnVariable="result">
                </div>
                <div>
                    <h3>Page List</h3>
                </div>
                <cfloop query="result">
                    <div>
                        <a href="showPage.cfm?name=#result.pagename#">#result.pagename#</a>
                    </div>							
                </cfloop>
            <cfelse>
                <cflocation url="login.cfm" addtoken="No">
                <cfset StructClear(Session)>
            </cfif>
        </cfoutput>
    </body>
</html>