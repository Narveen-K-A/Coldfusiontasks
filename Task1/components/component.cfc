<cfcomponent>
    <cffunction name="getNumbers" access="remote">
        <cfargument name="formField" type="numeric" default="#form.field#">
        <cfif structKeyExists(form, 'formsubmit')>
            <cfif arguments.formField eq "1">
                <cfreturn "Ok">
            <cfelseif arguments.formField eq "2">
                <cfreturn "Ok"> 
            <cfelseif arguments.formField eq "3">
                <cfreturn "Fair">
            <cfelseif arguments.formField eq "4">
                <cfreturn "Good">
            <cfelseif arguments.formField eq "5">
                <cfreturn "Very Good">
            <cfelse>
                <cfreturn "Invalid!"> 
            </cfif>
        </cfif>
    </cffunction>
</cfcomponent>