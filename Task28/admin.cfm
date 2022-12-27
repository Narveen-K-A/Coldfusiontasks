<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <cfoutput>
            <cfif structKeyExists(session,'adminFlag')>
                <div class="mainBody">
                    <div>
                        <h1>Welcome #session.userRole# </h1> <br>
                    </div>
                    <a href="login.cfm" class="logout">LOGOUT</a>
                    <cfquery name="pageList" datasource="company">
                        select pagename,pagedescs,pageid from pagesDtl
                    </cfquery>
                </div>
                <h2>Hi #session.name#<h2>
                <div>
                    <h3>Page List</h3>
                </div>
                <table>
                    <cfloop query="pageList">
                        <cfset args = StructNew()> 
                        <cfset args.pageList="#pageList.pageid#">
                        <cfinvoke component="componentfile" method="getQuery" returnVariable="result" argumentCollection="#args#">
                        <tr>
                            <td>#pageList.pagename#</td>
                            <td><a href="edit.cfm?name=#pageList.pagename#&id=#pageList.pageid#&desc=#result.pagedescs#">EDIT</a></td>
                            <td><a href="delete.cfc?method=deletepage&id=#pageList.pageid#">DELETE</a></td></td>
                        </tr>
                    </cfloop>
                </table>
                <a href="addpage.cfm"?>ADD A NEW PAGE</a>
            <cfelse>
                <cflocation url="login.cfm" addtoken="No">
                <cfset StructClear(Session)>
            </cfif>
        </cfoutput>
    </body>
</html>