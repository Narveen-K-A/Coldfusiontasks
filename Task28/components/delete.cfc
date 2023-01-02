<cfcomponent>
	<cffunction name="deletepage" access="remote">
		<cfquery name="delete" datasource="company">
			DELETE FROM pagesDtl
			WHERE pageid=<cfqueryparam value="#url.id#" cfsqltype="cf_sql_varchar">
		</cfquery>
		<cflocation url="..\admin.cfm">
	</cffunction>
</cfcomponent>