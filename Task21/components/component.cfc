<cfcomponent>
    <cffunction  name="getForm" access="remote">
        <cfparam name="form.file" default="">
        <cfif len(trim(form.file))>
            <cffile action="upload"
                fileField="file"
                result="thisResult"
                nameConflict="overwrite"
                destination="C:\ColdFusion2018\cfusion\wwwroot\Cftasks\Task21\assets\">
            <p>Thankyou, your file has been uploaded.</p>
            <cfset var=#thisResult.serverFile#>
        </cfif>
        <cfif structKeyExists(form, 'mail')>
            <cfmail to="#form.mail#" from="narveenanwar2@gmail.com" subject="#form.greeting#" type="text" mimeattach="C:\ColdFusion2018\cfusion\wwwroot\Cftasks\Task21\assets\#var#">
                #form.greeting# #form.name# !!!
            </cfmail> 
        </cfif>
    </cffunction>
</cfcomponent>