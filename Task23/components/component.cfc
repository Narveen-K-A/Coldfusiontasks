<cfcomponent>
    <cffunction name="textField"  access="remote">
        <cfif structKeyExists(form, "submit")>
            <cfquery name="wufooForm" datasource="company">
                insert into wufooForm values('#form.option#','#form.fname#','#form.lname#','#form.email#','#form.tel#','#form.date#','#form.url#');
            </cfquery>
        </cfif>
    </cffunction>
</cfcomponent>