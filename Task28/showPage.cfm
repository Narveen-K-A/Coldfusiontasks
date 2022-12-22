<html>
    <body>
        <cfoutput>
            <cfif structKeyExists( session,'name')>
                <cfquery name="show" datasource="employee">
                    SELECT pagedescs FROM Pages
                    WHERE pagename='#url.name#'
                </cfquery>
                <div>
                    <span>Page Name:</span>
                    <span><cfoutput>#url.name#</cfoutput></span><br>
                    <span>Page Description:</span>
                    <span><cfoutput> #show.pagedescs# </cfoutput></span>
                </div>
            </cfif>    
        </cfoutput>
    </body>
</html>