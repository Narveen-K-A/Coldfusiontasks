<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <cfoutput>
            <div class="mainBody">
                <cfinvoke  method="textField" component = "components/component" returnVariable="number">
                The pattern is: <br>
                <cfloop from="1" to="3" index="i">
                    <cfloop from="1" to="3" index="j">
                        <cfoutput>#number[i][j]#</cfoutput>
                    </cfloop><br>
                </cfloop>    
            </div>
        </cfoutput>
    </body>
</html>