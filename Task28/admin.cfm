<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <cfoutput>
            <cfif structKeyExists(session,'adminFlag')>
                <div class="adminBody">
                    <h1 class="welcomeMessage">Welcome #session.userRole#</h1><br>
                    <cfinvoke component="componentfile" method="adminQuery" returnVariable="pageList">
                </div> 
                <div>
                    <h3 class="pageList">Page List</h3>
                </div>
                <table border="1">
                    <cfloop query="pageList">
                        <cfset args = StructNew()> 
                        <cfset args.pageList="#pageList.pageid#">
                        <cfinvoke component="componentfile" method="getQuery" returnVariable="result" argumentCollection="#args#">
                        <tr>
                            <td>#pageList.pagename#</td>
                            <td><a class="edit" href="edit.cfm?name=#pageList.pagename#&id=#pageList.pageid#&desc=#result.pagedescs#">EDIT</a></td>
                            <td><a class="delete" href="delete.cfc?method=deletepage&id=#pageList.pageid#">DELETE</a></td></td>
                        </tr>
                    </cfloop>
                </table>
                <a class="button" href="addpage.cfm"?>ADD PAGE</a>
                <a class="button" href="login.cfm" class="logout">LOGOUT</a>
            <cfelse>
                <cflocation url="login.cfm" addtoken="No">
                <cfset StructClear(Session)>
            </cfif>
        </cfoutput>
    </body>
</html>