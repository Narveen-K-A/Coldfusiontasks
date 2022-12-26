<html>
    <head>
        <link rel="stylesheet" href="css/style.css">      
    </head>
    <body>
        <cfoutput>
            <cfinvoke method="getJsonTable" component="components/component" returnVariable="result">   
            <table>
                <tr>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Location</th>
                </tr>
                <cfloop array="#result#" index="i">
                    <tr>
                        <td>#i["Name"]#</td>
                        <td>#i["Age"]#</td>
                        <td>#i["Location"]#</td>
                    </tr>
                </cfloop>
            </table>    
        </cfoutput>
    </body>
</html>