<cfcomponent>
    <cffunction name="visitcount" access="remote">
        <cfif structKeyExists(Cookie,'visitCounter') eq false>
            <cfcookie name="visitCounter" value=1>
        </cfif>
        <cfset Cookie.visitCounter = Cookie.visitCounter+1>
        <cfreturn Cookie.visitCounter>
    </cffunction>
</cfcomponent>