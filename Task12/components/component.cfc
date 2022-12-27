<cfcomponent>
    <cffunction name="sqlQuery"  access="remote">
        <cfargument name="formField" type="any" default="#form.field#">
        <cfif structKeyExists(form, "formsubmit")>
            <cfset local.text=arguments.formField>
            <cfif arguments.formField lte 10>
                    <cfquery datasource="company" name="comp">
                        select * from employee; 
                    </cfquery>
                <cfloop query="comp" startRow="#local.text#" endRow="#local.text#">
                    <cfset local.varible=FirstName>
                </cfloop>
                    <cfreturn local.varible>
            <cfelse>
                <cflocation url="./main.cfm">
            </cfif>
        </cfif>
    </cffunction>
</cfcomponent>