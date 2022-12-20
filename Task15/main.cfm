<html>
    <body>
        <cfoutput>                
            <form action="main.cfm" method="post">  
                <cfobject component="components/component" name="multiplyValues" type="component" action="Create" >
                <cfinvoke  method="getOutput" component="components/component">                  
            </form>
        </cfoutput>
    </body>
</html>