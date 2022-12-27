<cfcomponent>
    <cffunction name="getStruct"  access="remote" returntype="struct">
        <cfargument name="formKey" type="string" default="#form.key#">
        <cfargument name="formValue" type="string" default="#form.value#">
        <cfset local.myStruct=structNew()>
        <cfif structKeyExists(session,'task')>
            <cfif structKeyExists(session.task,"#arguments.formKey#")>
                <cfset session.count=1>
                <cfset session.value=arguments.formKey>
            <cfelse>
                <cfset local.myStruct.count=0>
                <cfset session.task[arguments.formKey]=arguments.formValue>
                <cfset structAppend(session.task,session.task)>
            </cfif>
        <cfelse>
            <cfset session.task=structNew()>
            <cfset session.task[arguments.formKey]=arguments.formValue>
        </cfif>    
        <cfreturn local.myStruct>
    </cffunction>
</cfcomponent>