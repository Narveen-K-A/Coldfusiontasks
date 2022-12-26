<cfcomponent>
    <cffunction name="getNumbers" access="remote">
        <cfargument name="formField" type="any" default="#form.field#">
        <cfif arguments.formField eq "1">
            <cfset local.result="Ok">
            <cfreturn local.result>
        <cfelseif arguments.formField eq "2">
            <cfset local.result="Ok">
            <cfreturn local.result> 
        <cfelseif arguments.formField eq "3">
            <cfset local.result="Fair">
            <cfreturn local.result>
        <cfelseif arguments.formField eq "4">
            <cfset local.result="Good">
            <cfreturn local.result>
        <cfelseif arguments.formField eq "5">
            <cfset local.result="Very good">
            <cfreturn local.result>
        <cfelse>
            <cfset local.result="Invalid!">
            <cfreturn local.result>
        </cfif>
    </cffunction>
</cfcomponent>