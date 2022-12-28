<html>
    <body>    
        <cfinvoke component="components/component" method="displayTable" returnVariable="result">
        TABLE IS:<br>
        <cfoutput query="result">
            #FirstName# #LastName# <br>
        </cfoutput>    
    </body>
</html>