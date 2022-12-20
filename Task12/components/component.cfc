<cfcomponent>
    <cffunction name="textField"  access="remote">
        <cfif structKeyExists(form, "formsubmit")>
            <cfset text=form.field>
            <cfif form.field lte 10>
                <cfquery datasource="company" name="comp">
                    select * from employee; 
                </cfquery>
            </cfif>
            <cfloop query="comp" startRow="#text#" endRow="#text#">
                <cfoutput>
                    The number #text# name is #FirstName#<br>
                </cfoutput>
            </cfloop>
                TABLE IS<br>
            <cfoutput query="comp">
                    #FirstName# #LastName# <br>
            </cfoutput>
        </cfif>
    </cffunction>
</cfcomponent>