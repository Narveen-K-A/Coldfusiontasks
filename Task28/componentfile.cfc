<cfcomponent>
    <cffunction name="getQuery" access="public" returnType="query">
        <cfquery name="descList" datasource="company">
            SELECT pagedescs, pageid FROM pagesDtl
            WHERE pageid='#arguments.pagelist#'
        </cfquery>
        <cfreturn descList>
    </cffunction>
</cfcomponent>