<cfcomponent>
    <cffunction name="textField"  access="remote">
        <cfargument name="fieldOption" type="any" default="#form.option#">
        <cfargument name="fieldfname" type="any" default="#form.fname#">
        <cfargument name="fieldlname" type="any" default="#form.lname#">
        <cfargument name="fieldemail" type="any" default="#form.email#">
        <cfargument name="fieldtel" type="any" default="#form.tel#">
        <cfargument name="fielddate" type="any" default="#form.date#">
        <cfargument name="fieldurl" type="any" default="#form.url#">
        <cfif structKeyExists(form, "submit")>
            <cfquery name="wufooForm" datasource="company">
                insert into works values(<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldOption#">,
                                        <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldfname#">,
                                        <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldlname#">,
                                        <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldemail#">,
                                        <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldtel#">,
                                        <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fielddate#">,
                                        <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fieldurl#">);
            </cfquery>
        </cfif>
    </cffunction>
</cfcomponent>