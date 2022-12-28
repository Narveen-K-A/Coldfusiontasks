<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <div class="mainBody">
            <cfoutput>
                <form action="task18.cfm" method="post" name="myform" autocomplete="off">
                    <cfinvoke method="getSQL" component="components/component" returnVariable="result">
                    <cfdump var="#result#">
                </form>     
            </cfoutput>
        </div>
    </body>
</html>