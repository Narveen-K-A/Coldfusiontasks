
<cfcomponent>
    <cffunction name="emailValidate" access="remote" returnformat="plain">
        <cfargument name="Email" type="any" required="yes">
        <cfargument name="Name" type="any" required="yes">
        <cfquery name="validate" datasource="company">
            SELECT count(Emailid) records
            FROM email
            WHERE Emailid=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.Email#">
        </cfquery>
        <cfif validate.records eq 0>
            <cfquery name="Emailid" datasource="company"> 
                INSERT INTO email 
                VALUES (<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.Name#">,
                        <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.Email#">) 
            </cfquery> 
            <cfreturn "The mail is submit">
        <cfelse>
            <cfreturn "The mail is already there">
        </cfif>
    </cffunction>
</cfcomponent>