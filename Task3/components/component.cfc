<cfcomponent>
    <cffunction name="getNumbers" access="remote">
        <cfargument name="formField" type="any" default="#form.field#">
        <cfset local.data = arguments.formField>
        <cfset local.myarray=ArrayNew(1)>
        <cfloop list="#local.data#" index="item" delimiters=",">
            <cfif IsNumeric(item)>
                <cfif (item % 3) eq 0>
                    <cfset ArrayAppend(local.myarray,item)>
                    <cfcontinue>
                </cfif>
            </cfif>                   
        </cfloop>
        <cfreturn local.myarray>
    </cffunction>
</cfcomponent>