<html>
    <head>
        <link rel="stylesheet" href="css/style.css">      
    </head>
    <body>
        <cfoutput>
            <cfinvoke method="getJsonTable" component="components/component" returnVariable="jsonDeserialized">   
            <div class="mainBody">
                <table>
                    <tr>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Location</th>
                    </tr>
                    <cfloop array="#jsonDeserialized#" index="i">
                        <tr>
                            <td>#i["Name"]#</td>
                            <td>#i["Age"]#</td>
                            <td>#i["LOCATION"]#</td>
                        </tr>
                    </cfloop>
                </table>
            </div>    
        </cfoutput>
    </body>
</html>