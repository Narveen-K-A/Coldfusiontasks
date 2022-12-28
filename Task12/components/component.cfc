<cfcomponent>
    <cffunction name="sqlQuery"  access="remote">
        <cfargument name="formField" type="any" default="#form.field#">
        <cfif structKeyExists(form, "formsubmit")>
            <cfset local.text=arguments.formField>
            <cfif arguments.formField lte 10>
                <cfquery datasource="company" name="comp">
                    SELECT * FROM employee; 
                </cfquery>
                <cfloop query="comp" startRow="#local.text#" endRow="#local.text#">
                    <cfset local.variable=FirstName>
                </cfloop>
                <cfreturn local.variable>
            <cfelse>
                <cflocation url="./main.cfm">
            </cfif>
        </cfif>
    </cffunction>
    <cffunction name="displayTable" access="remote" returnType="query">
        <cfquery datasource="company" name="comp">
            SELECT * FROM employee; 
        </cfquery>
        <cfreturn comp>
    </cffunction>
</cfcomponent>