<cfcomponent>
    <cffunction name="textField"  access="remote">
        <cfargument name="password" default="#form.password#">
        <cfargument name="userName" default="#form.userId#">
        <cfif structKeyExists(form,'submit')>
            <cfset session.name = arguments.userName >
            <cfquery name="userInfo" datasource="company">
                select count(*) records
                from Loginpage
                where userid = <cfqueryparam value="#arguments.userName#" cfsqltype="cf_sql_varchar">
                and passid = <cfqueryparam value="#arguments.password#" cfsqltype="cf_sql_varchar">
            </cfquery>
            <cfif userInfo.records == 1>
                <cfset Session.flag = 1>
                <cflocation url="welcome.cfm" addtoken="No">
            <cfelse>
                <cflocation url="main.cfm" addtoken="No">
                <cfset StructClear(Session)>
            </cfif>
        </cfif>
    </cffunction>
</cfcomponent>