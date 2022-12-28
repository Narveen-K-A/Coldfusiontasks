<html>
    <body>
        <cfoutput>
            <cfif structKeyExists( session,'name')>
                <form name="form" action="edit.cfm?name=#url.name#&id=#url.id#&desc=#url.desc#" method="post" class="formpage">
                    <div>
                        <label>Page Name:</label>
                        <input type="text" name="pagename" id="pagenameid" class="form-control edit" value="#url.name#">
                    </div>
                    <div>
                        <label>Page Description:</label>
                        <textarea name="description" id="descid" class="form-control edit" rows="5">#url.desc#</textarea>
                    </div>
                    <div>
                        <input type="submit" name="editSubmit" id="editSubmit" value="Edit">
                    </div> 	
                </form>
                <cfif structKeyExists(form,'editSubmit')>
                    <cfinvoke component="componentfile" method="editQuery">
                    <cflocation url="admin.cfm"> 
                </cfif>
            <cfelse>
                <cflocation url="login.cfm">
            </cfif>
        </cfoutput>
    </body>
</html>
