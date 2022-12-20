<cfcomponent>
    <cffunction name="structure" access="remote">
        <cfargument name="formKey" type="string" default="#form.key#">
        <cfargument name="formValue" type="string" default="#form.value#">
        <cfset myStruct=StructNew()>
        <cfset mystruct[arguments.formKey]=arguments.formValue>
        <cfdump var="#mystruct#">
    </cffunction>
</cfcomponent>