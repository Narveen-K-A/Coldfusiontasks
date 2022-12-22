<cfcomponent>
    <cffunction name="getOutput" access="remote">
        <cfset multiplyValues = createObject("component","components/component")>
        <cfset local.res = multiply(1,2)>
        <cfdump var="#local.res#"><br>
        <cfset local.res = multiply(1,2,3)>
        <cfdump var="#local.res#"><br>
        <cfset local.res = multiply(1,2,3,4)>
        <cfdump var="#local.res#"><br>
    </cffunction>
    <cffunction name="multiply">
        <cfargument name="w" required="yes">
        <cfargument name="x" required="yes">
        <cfargument name="y" required="yes" default="1">
        <cfargument name="z" required="yes" default="1">
        <cfreturn arguments.w*arguments.x*arguments.y*arguments.z>
    </cffunction>
</cfcomponent>