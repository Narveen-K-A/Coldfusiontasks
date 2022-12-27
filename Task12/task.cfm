<html>
    <head>
    </head>
    <body>        
        <cfquery datasource="company" name="comp">
            select * from employee; 
        </cfquery>
        TABLE IS<br>
        <cfoutput query="comp">
            #FirstName# #LastName# <br>
        </cfoutput>    
    </body>
</html>