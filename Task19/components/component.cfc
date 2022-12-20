<cfcomponent>
    <cffunction name="visitcount" access="remote">
        
 	        <cfif structKeyExists(Cookie,'visitsCounter') eq false>
                <cfcookie name="visitsCounter" value=1>
            </cfif>
            <cfset Cookie.visitsCounter = Cookie.visitsCounter+1>
            <cfreturn Cookie.visitsCounter>
    </cffunction>
</cfcomponent>