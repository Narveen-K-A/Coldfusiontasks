<html>
    <body>
        <cfoutput>
            <cfif structKeyExists( session,'adminFlag')>
                <div class="editBody">
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
                        <input type="submit" name="addSubmit" id="editSubmit" value="Edit">
                    </div> 	
                </form>
                </div>
                <cfif structKeyExists(form,'addSubmit')>
                    <cfinvoke component="componentfile" method="addPageQuery">
                    <cflocation url="admin.cfm"> 
                </cfif>
            <cfelse>
                <cflocation url="login.cfm">
            </cfif>
        </cfoutput>
    </body>
</html>
