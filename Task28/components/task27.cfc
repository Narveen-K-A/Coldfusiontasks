<cfcomponent>
    <cffunction name="logoutField"  access="remote">
        <cfif structKeyExists(form,'logout')>
            <cflocation url="login.cfm" addtoken="No">
        </cfif>
    </cffunction>
</cfcomponent>