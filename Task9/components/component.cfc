<!--- <cfcomponent>
    <cfset session.myStruct=StructNew()>
    <cffunction name="structure" access="remote">
        <cfargument name="formKey" type="string" default="#form.key#">
        <cfargument name="formValue" type="string" default="#form.value#">           
        <cfapplication name="getStruct" sessionmanagement="Yes" sessiontimeout=#CreateTimeSpan(0,0,45,0)#>   
        <cflock  timeout="45" scope="Session" type="Readonly">
            <cfset local.v=arguments.formKey>
            <cfif structKeyExists(session.myStruct,"#local.v#")>
                <cfreturn #local.v#>
            <cfelse>
                <cfset session.myStruct[arguments.formKey]=arguments.formValue>
                <cfdump var="#session.myStruct#"> 
            </cfif>
        </cflock>
    </cffunction>
</cfcomponent> --->

<cfcomponent>
    <cffunction name="getStruct"  access="remote" returntype="struct">
        <cfargument name="formKey" type="string" default="#form.key#">
        <cfargument name="formValue" type="string" default="#form.value#">
        <cfset local.myStruct=structNew()>
        <cfif structKeyExists(session,'task')>
            <cfif structKeyExists(session.task,"#arguments.formKey#")>
                <cfset local.myStruct.count=1>
                <cfset local.myStruct.value=arguments.formKey>
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