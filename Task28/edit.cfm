<html>
    <body>
        <cfoutput>
            <cfif structKeyExists( session,'adminFlag')>
                <form name="form" method="post" class="formpage">
                    <div>
                        <label>Page Name:</label>
                        <input type="text" name="pagename" id="pagenameid" class="edit" value="#url.name#">
                    </div>
                    <div>
                        <label>Page Description:</label>
                        <textarea name="description" id="descid" class="edit" rows="5">#url.desc#</textarea>
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
