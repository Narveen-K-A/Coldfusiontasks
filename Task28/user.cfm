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
                    <cfquery name="pageList" datasource="company">
                        select pagename,pagedescs from pagesDtl
                    </cfquery>
                </div>
                <div>
                    <h3>Page List</h3>
                </div>
                <cfloop query="pageList">
                    <div>
                        <a href="showPage.cfm?name=#pageList.pagename#"><cfoutput>#pageList.pagename#</cfoutput></a>
                    </div>							
                </cfloop>
            <cfelse>
                <cflocation url="login.cfm" addtoken="No">
                <cfset StructClear(Session)>
            </cfif>
        </cfoutput>
    </body>
</html>