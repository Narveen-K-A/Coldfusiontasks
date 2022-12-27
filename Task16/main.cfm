<html>
    <body>
        <cfoutput>
            <div class="mainBody">
                <cfinvoke  method="textField" component = "components/component" returnVariable="number">
                <cfloop from="1" to="3" index="i">
                    <cfloop from="1" to="3" index="j">
                        <cfoutput>#number[i][j]#</cfoutput>
                    </cfloop><br>
                </cfloop>    
            </div>
        </cfoutput>
    </body>
</html>