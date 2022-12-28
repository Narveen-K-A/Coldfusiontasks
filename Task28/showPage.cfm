<html>
    <body>
        <cfoutput>
            <cfif structKeyExists(session,'name')>
                <cfdump var="#url.name#">
                <cfinvoke component="componentfile" method="showQuery" returnVariable="result">
                <div>
                    <span>Page Name:</span>
                    <span>#url.name#</span><br>
                    <span>Page Description:</span>
                    <span>#result.pagedescs#</span>
                </div>
            </cfif>    
        </cfoutput>
    </body>
</html>