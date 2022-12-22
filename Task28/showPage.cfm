<html>
    <body>
        <cfoutput>
            <cfif structKeyExists( session,'name')>
                    <cfdump  var="#url.name#">
                <cfquery name="show" datasource="company">
                    SELECT pagedescs FROM pagesDtl
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