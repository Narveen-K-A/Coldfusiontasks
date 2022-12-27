<cfcomponent>
    <cffunction name="getNumbers" access="remote">
        <cfargument name="formField" type="any" default="#form.field#">
        <cfset local.data = arguments.formField>
        <cfset local.arr = rematch("[\d]+",local.data)>
        <cfset local.myarray=ArrayNew(1)>
        <cfloop array="#local.arr#" index="i">
            <cfif (i % 3) eq 0>
                <cfset ArrayAppend(local.myarray,i)>
                <cfcontinue>
            </cfif>                   
        </cfloop>
        <cfreturn local.myarray>
    </cffunction>
</cfcomponent>