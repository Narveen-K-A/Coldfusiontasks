<html>
    <head>
        <link rel="stylesheet" href="css/css.css">
    </head>
    <body>
        <cfoutput>
            <cfif structKeyExists( session,'adminFlag')>
                <div class="mainBody">
                    <div>
                        <h1>Welcome #session.userRole# </h1> <br>
                    </div>
                    <a href="login.cfm" class="logout">LOGOUT</a>
                    <cfquery name="pageList" datasource="employee">
                            select pagename,pagedescs,pageid from pages
                    </cfquery>
                </div>
                <h2>hai #session.name#<h2>
                <div>
                    <h3>Page List</h3>
                </div>
                <table>
                    <cfloop query="pageList">
                        <cfquery name="descList" datasource="employee">
                            SELECT pagedescs,pageid FROM pages
                            WHERE pageid = '#pageList.pageid#'
                        </cfquery>
                        <tr>
                            <td><cfoutput>#pageList.pagename#</cfoutput></td>
                            <td><a href="edit.cfm?name=#pageList.pagename#&id=#descList.pageid#&desc=#descList.pagedescs#">EDIT</a></td>
                            <td><a href="delete.cfc?method=deletepage&id=#descList.pageid#">DELETE</a></td></td>
                        </tr>
                    </cfloop>
                </table>
                <a href="addpage.cfm"?>ADD A NEW PAGE</a>
            <cfelse>
                <cflocation url="login.cfm" addtoken="No">
                <cfset  StructClear(Session)>
            </cfif>
        </cfoutput>
    </body>
</html>