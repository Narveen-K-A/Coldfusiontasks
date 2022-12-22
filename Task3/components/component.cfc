<cfcomponent>
    <cffunction name="getNumbers" access="remote">
        <cfargument  name="formField" type="any" default="#form.field#">
        <cfif structKeyExists(form, 'formsubmit')>
            <cfset data = arguments.formField>
            <cfset arr = rematch("[\d]+",data)>
            <cfloop array="#arr#" index="i">
                <cfif (i % 3) eq 0>
                    <cfoutput>#i#</cfoutput>
                    <cfcontinue>
                </cfif>                   
            </cfloop>
       </cfif>
    </cffunction>
</cfcomponent>