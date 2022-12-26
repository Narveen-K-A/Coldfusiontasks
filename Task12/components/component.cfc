<cfcomponent>
    <cffunction name="sqlQuery" access="remote">
            <cfset text=form.field>
            <cfif form.field lte 10>
                <cfquery datasource="company" name="comp">
                    select * from employee; 
                </cfquery>
            </cfif>
                TABLE IS<br>
            <cfoutput query="comp">
                    #FirstName# #LastName# <br>
            </cfoutput>
    </cffunction>
</cfcomponent>