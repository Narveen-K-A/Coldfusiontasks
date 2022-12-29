<cfcomponent>
    <cffunction name="textField"  access="remote">
        <cfargument name="password" default="#form.password#">
        <cfargument name="username" default="#form.userId#">
        <cfif structKeyExists(form,'submit')>
            <cfquery name="userInfo" datasource="company">
                SELECT role,username
                FROM loginDtl
                WHERE userid = <cfqueryparam value="#arguments.username#" cfsqltype="cf_sql_varchar">
                AND passid = <cfqueryparam value="#arguments.password#" cfsqltype="cf_sql_varchar">
            </cfquery>
            <cfset session.name=userInfo.username>
            <cfset session.userRole=userInfo.role>
            <cfdump var="#userInfo.recordCount#">
            <cfif userInfo.recordCount>
                <cfif session.userRole=="user">
                    <cfset Session.userFlag = 1>
                    <cflocation url="user.cfm" addtoken="No">
                <cfelseif session.userRole=="admin">
                    <cfset Session.adminFlag = 1>
                    <cflocation url="admin.cfm" addtoken="No">
                <cfelseif session.userRole=="editor">
                    <cfset Session.editorFlag = 1>
                    <cflocation url="admin.cfm" addtoken="No">
                </cfif>
            <cfelse>
                <cflocation url="login.cfm" addtoken="No">
                <cfset structClear(Session)>
            </cfif>
        </cfif>
    </cffunction>
</cfcomponent>