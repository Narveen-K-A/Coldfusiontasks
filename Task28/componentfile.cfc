<cfcomponent>
    <cffunction name="getQuery" access="public" returnType="query">
        <cfquery name="descList" datasource="company">
            SELECT pagedescs, pageid FROM pagesDtl
            WHERE pageid=<cfqueryparam value="#arguments.pagelist#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfreturn descList>
    </cffunction>
    <cffunction name="showQuery" access="public" returnType="query">
        <cfquery name="show" datasource="company">
            SELECT pagedescs FROM pagesDtl
            WHERE pagename=<cfqueryparam value="#url.name#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfreturn show>
    </cffunction>
    <cffunction name="editQuery" access="public">
        <cfquery name="edit" datasource="company">
            UPDATE pagesDtl
            SET pagename=<cfqueryparam value="#form.pagename#" cfsqltype="cf_sql_varchar">, 
            pagedescs=<cfqueryparam value="#form.description#" cfsqltype="cf_sql_varchar">
            WHERE pageid=<cfqueryparam value="#url.id#" cfsqltype="cf_sql_varchar">
        </cfquery>
    </cffunction>
    <cffunction name="addPageQuery" access="public">
        <cfquery name="edit" datasource="company">
            INSERT INTO pagesDtl values(
                <cfqueryparam value="#form.pageid#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#form.pagename#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#form.description#" cfsqltype="cf_sql_varchar">)
        </cfquery>
    </cffunction>
    <cffunction name="userQuery" access="public">
        <cfquery name="pageList" datasource="company">
            SELECT pagename,pagedescs FROM pagesDtl;
        </cfquery>
        <cfreturn pageList>
    </cffunction>
    <cffunction name="adminQuery" access="public">
        <cfquery name="pageList" datasource="company">
            SELECT pagename,pagedescs,pageid FROM pagesDtl;
        </cfquery>
        <cfreturn pageList>
    </cffunction>
    <cffunction name="sessionClear" access="remote">
        <cfset structClear(session)>
    </cffunction>
</cfcomponent>