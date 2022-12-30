<cfcomponent>
    <cffunction name="logoutField" access="remote">
        <cfif structKeyExists(form,'logout')>
            <cflocation url="main.cfm" addtoken="No">
        </cfif>
    </cffunction>
</cfcomponent>