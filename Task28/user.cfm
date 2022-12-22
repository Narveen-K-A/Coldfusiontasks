<html>
    <head>
        <link rel="stylesheet" href="css/css.css">
    </head>
    <body>
        <cfoutput>
            <cfif structKeyExists( session,'userFlag')>
                <div class="mainBody">
                    <div>
                        <h1>WELCOME User</h1> <br>
                    </div>
                    <a href="login.cfm" class="logout">LOGOUT</a>
                    <cfquery name="pageList" datasource="employee">
                            select pagename,pagedescs from pages
                    </cfquery>
                </div>
                <h2>hai #session.name#<h2>
                <div>
                    <h3>Page List</h3>
                </div>
          <cfloop query="pageList">
              <div>
                    <a href="showpage.cfm?name=<cfoutput>#pageList.pagename#</cfoutput>"><cfoutput>#pageList.pagename#</cfoutput></a>
              </div>							
          </cfloop>
            <cfelse>
                <cflocation url="login.cfm" addtoken="No">
                <cfset  StructClear(Session)>
            </cfif>
        </cfoutput>
    </body>
</html>