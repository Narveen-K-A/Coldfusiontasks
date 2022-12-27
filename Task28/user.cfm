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
                        SELECT pagename,pagedescs FROM pagesDtl
                    </cfquery>
                </div>
                <div>
                    <h3>Page List</h3>
                </div>
                <cfloop query="pageList">
                    <div>
                        <a href="showPage.cfm?name=#pageList.pagename#">#pageList.pagename#</a>
                    </div>							
                </cfloop>
            <cfelse>
                <cflocation url="login.cfm" addtoken="No">
                <cfset StructClear(Session)>
            </cfif>
        </cfoutput>
    </body>
</html>