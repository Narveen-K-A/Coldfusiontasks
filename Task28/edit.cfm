<html>
    <head>
    </head>
    <body>
        <cfoutput>
            <cfif structKeyExists( session,'name')>
                <form name="form" action="edit.cfm?name=#url.name#&id=#url.id#&desc=#url.desc#" method="post" class="formpage">
                    <div>
                        <label >Page Name:</label>
                        <input type="text" name="pagename" id="pagenameid" class="form-control edit" value="#url.name#">
                    </div>
                    <div>
                        <label>Page Description:</label>
                        <textarea name="description" id="descid" class="form-control edit" rows="5">#url.desc#</textarea>
                    </div>
                    <div>
                        <input type="submit" name="editSumbit" id="edtsubmitid" value="edit">
                    </div> 	
                </form>
                <cfif structKeyExists(form,'editSumbit')>
                    <cfquery name="edit" datasource="employee">
                        UPDATE Pages
                        SET pagename=<cfqueryparam value="#form.pagename#" cfsqltype="cf_sql_varchar">, pagedescs=<cfqueryparam value="#form.description#" cfsqltype="cf_sql_varchar">
                        WHERE pageid='#url.id#'
                    </cfquery>
                    <cflocation url="admin.cfm"> 
                </cfif>
            <cfelse>
                <cflocation url="login.cfm">
            </cfif>
        </cfoutput>
    </body>
</html>
