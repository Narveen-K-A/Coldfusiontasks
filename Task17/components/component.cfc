<cfcomponent>
    <cffunction name="getNumbers" access="remote">
        <cfargument name="formField" default="#form.field#">
        <cfif arguments.formField gt "0">
            <cfset local.myarray=ArrayNew(1)>
            <cfloop from="1" to="#arguments.formField#" index="i">
                <cfif(i % 2) eq 0>
                    <cfset i="<font color=Green>#i#</font>">
                <cfelse>
                    <cfset i="<font color=Blue>#i#</font>">
                </cfif>
                <cfset ArrayAppend(local.myarray,i)>
            </cfloop>    
            <cfreturn local.myarray> 
        <cfelse>
            <cflocation url="main.cfm">
        </cfif>   
    </cffunction>
</cfcomponent>
