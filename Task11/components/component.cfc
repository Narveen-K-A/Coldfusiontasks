<cfcomponent>
    <cffunction name="Field"  access="remote">
        <cfset local.res = mulitiply(1,2)>
        <cfdump var=#local.res#><br>
        <cfset res = mulitiply(1,2,3)>
        <cfdump var=#local.res#><br>
        <cfset res = mulitiply(1,2,3,4)>
        <cfdump  var=#local.res#><br>
    </cffunction>
    <cffunction name="mulitiply">
        <cfargument name="a" required="yes">
        <cfargument name="b" required="yes">
        <cfargument name="c" required="yes" default="1">
        <cfargument name="d" required="yes" default="1">
        <cfreturn arguments.a*arguments.b*arguments.c*arguments.d>
    </cffunction>
</cfcomponent>