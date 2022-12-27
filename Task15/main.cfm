<html>
    <body>
        <cfoutput>                
            <form action="main.cfm" method="post">  
                <cfobject component="components/component" name="multiplyValues" type="component" action="Create">
                <cfset multiplyValues = createObject("component","components/component")>
                <cfset mulitiply="#multiplyValues.mulitiply(1,2)#">
                #mulitiply#
                <cfset mulitiply="#multiplyValues.mulitiply(1,2,3)#">
                #mulitiply#
                <cfset mulitiply="#multiplyValues.mulitiply(1,2,3,4)#">
                #mulitiply#               
            </form>
        </cfoutput>
    </body>
</html>