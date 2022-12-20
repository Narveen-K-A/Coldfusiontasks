<html>
    <head>
        <link rel="stylesheet" href="css/style.css">      
    </head>
    <body>
        <cfoutput>   
            <h3>The details</h3>
            <div>
                <cfinvoke  method="textField" component ="components/component" returnVariable="session.location"> 
                <cfimage source="assets\#session.location#" name="myImage" action="writeToBrowser"><br>
                The Image name = #session.name#<br>
                The Image stored name =#session.location#<br>
                The Image size = #session.sizeKB# KB <br>
                The description = #session.description# <br>
            </div>
        </cfoutput>
    </body>
</html>