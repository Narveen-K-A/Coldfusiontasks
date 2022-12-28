<cfcomponent>
    <cffunction name="getStruct"  access="remote">
        <cfargument name="formKey" type="string" default="#form.key#">
        <cfargument name="formValue" type="string" default="#form.value#">
        <cfif structKeyExists(session,'mystruct')>
            <cfif structKeyExists(session.mystruct,"#arguments.formKey#")>
                <cfset session.count=1>
                <cfset session.value=arguments.formKey>
            <cfelse>
                <cfset session.mystruct[arguments.formKey]=arguments.formValue>
                <cfset structAppend(session.mystruct,session.mystruct)>
            </cfif>
        <cfelse>
            <cfset session.mystruct=structNew()>
            <cfset session.mystruct[arguments.formKey]=arguments.formValue>
        </cfif>
    </cffunction>
</cfcomponent>