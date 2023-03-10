<cfcomponent>
    <cffunction name="field" access="remote">
        <cfset local.mystruct=structNew()>
        <cfset local.mystruct.multiply1=multiply(1,2)>
        <cfset local.mystruct.multiply2=multiply(1,2,3)>
        <cfset local.mystruct.multiply3=multiply(1,2,3,4)>
        <cfreturn local.mystruct><br>
    </cffunction>
    <cffunction name="multiply">
        <cfargument name="a" required="yes">
        <cfargument name="b" required="yes">
        <cfargument name="c" required="yes" default="1">
        <cfargument name="d" required="yes" default="1">
        <cfreturn arguments.a*arguments.b*arguments.c*arguments.d>
    </cffunction>
</cfcomponent>