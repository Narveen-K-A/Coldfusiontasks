<cfcomponent>
    <cffunction name="structure" access="remote" returnType="struct">
        <cfargument name="formKey" type="string" default="#form.key#">
        <cfargument name="formValue" type="string" default="#form.value#">
        <cfif structKeyExists(session,'myStruct')>
            <cfset session.myStruct[arguments.formKey]=arguments.formValue>
            <cfset structAppend(session.myStruct, session.myStruct)>
        <cfelse>
            <cfset session.myStruct=structNew()>
            <cfset session.myStruct[arguments.formKey]=arguments.formValue>
        </cfif>
        <cfreturn session.myStruct>
    </cffunction>
</cfcomponent>