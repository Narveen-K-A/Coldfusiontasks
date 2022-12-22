<cfcomponent>
    <cffunction name="textField"  access="remote">
        <cfargument name="password" default="#form.password#">
        <cfargument name="userName" default="#form.userId#">
        <cfif structKeyExists(form,'submit')>
            
            <cfquery name="userInfo" datasource="employee">
                select role,username
                from cmsLoginId
                where userid = <cfqueryparam value="#arguments.userName#" cfsqltype="cf_sql_varchar">
                and passId = <cfqueryparam value="#arguments.password#" cfsqltype="cf_sql_varchar">
            </cfquery>
                <cfset session.name = userInfo.username >
                <cfset session.userRole = userInfo.role>
                <cfdump  var="#userInfo.recordCount#">
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
                <cfset StructClear(Session)>
            </cfif>
        </cfif>
    </cffunction>
</cfcomponent>