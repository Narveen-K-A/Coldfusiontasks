<cfcomponent>
	<cffunction name="deletepage" access="remote">
		<cfquery name="delete" datasource="company">
			DELETE FROM Pages
			WHERE pageid='#url.id#'
		</cfquery>
		<cflocation url="admin.cfm">
	</cffunction>
</cfcomponent>