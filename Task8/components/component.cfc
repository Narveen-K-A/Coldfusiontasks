<cfcomponent>
    <cfset session.myStruct=StructNew()>
    <cffunction name="structure" access="remote">
        <cfargument name="formKey" type="string" default="#form.key#">
        <cfargument name="formValue" type="string" default="#form.value#">
        <cfapplication name="GetStruct" sessionmanagement="Yes" sessiontimeout=#CreateTimeSpan(0,0,45,0)#>   
        <cflock timeout="45" scope="Session" type="Readonly">
            <cfset session.myStruct[arguments.formKey]=arguments.formValue>
            <cfdump var="#session.myStruct#">
        </cflock>
    </cffunction>
</cfcomponent>