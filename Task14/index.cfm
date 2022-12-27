<html>
    <head>
        <link rel="stylesheet" href="css/style.css">      
    </head>
    <body>
        <cfoutput>   
            <h3>The details</h3>
            <div>
                <cfimage source="assets\#url.location#" name="myImage" action="writeToBrowser"><br>
                The Image name = #url.name#<br>
                The Image stored name =#url.location#<br>
                The Image size = #url.size# KB KB <br>
                The description = #url.des# <br>
            </div>
        </cfoutput>
    </body>
</html>