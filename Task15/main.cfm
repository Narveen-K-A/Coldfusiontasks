<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <div class="mainBody">
            <cfoutput>               
                <form action="main.cfm" method="post">  
                    <cfobject component="components/component" name="multiplyValues" type="component" action="create">
                    <cfset multiplyValues = createObject("component","components/component")>
                    <cfset multiply="#multiplyValues.multiply(1,2)#">
                    1*2 = #multiply# <br>
                    <cfset multiply="#multiplyValues.multiply(1,2,3)#">
                    1*2*3 = #multiply# <br>
                    <cfset multiply="#multiplyValues.multiply(1,2,3,4)#">
                    1*2*3*4 = #multiply#  <br>            
                </form>
            </cfoutput>
        </div>
    </body>
</html>