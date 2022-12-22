<html>
    <head>
    </head>
    <body>
        <cfoutput>
            <cfif structKeyExists( session,'name')>
                <form name="form" method="post">
                    <div>
                        <label >Page Id:</label>
                        <input type="text" name="pageid">
                    </div>
                    <div>
                        <label >Page Name:</label>
                        <input type="text" name="pagename" >
                    </div>
                    <div>
                        <label>Page Description:</label>
                        <textarea name="description" rows="5"></textarea>
                    </div>
                    <div>
                        <input type="submit" name="addSumbit" id="edtsubmitid" value="edit">
                    </div> 	
                </form>
                <cfif structKeyExists(form,'addSumbit')>
                    <cfquery name="edit" datasource="employee">
                        insert into Pages values(
                         <cfqueryparam value="#form.pageid#" cfsqltype="cf_sql_varchar">,
                         <cfqueryparam value="#form.pagename#" cfsqltype="cf_sql_varchar">,
                         <cfqueryparam value="#form.description#" cfsqltype="cf_sql_varchar">)
                    </cfquery>
                    <cflocation url="admin.cfm"> 
                </cfif>
            <cfelse>
                <cflocation url="login.cfm">
            </cfif>
        </cfoutput>
    </body>
</html>
