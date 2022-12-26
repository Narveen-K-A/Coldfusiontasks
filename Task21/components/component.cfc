<cfcomponent>
    <cffunction name="getMail" access="remote">
        <cfargument name="formFile" default="#form.file#">
        <cfargument name="formMail" default="#form.mail#">
        <cfargument name="formGreeting" default="#form.greeting#">
        <cfargument name="formName" default="#form.name#">
        <cfif len(trim(arguments.formFile))>
            <cffile action="upload" filefield="file" result="fileDest" nameconflict="overwrite" destination="#expandpath("./assets")#">
            <cfset local.locateFile=fileDest.serverFile>
        </cfif>
        <cfmail to="#arguments.formMail#" from="narveenanwar2@gmail.com" subject="#form.greeting#" type="text" mimeattach="#expandpath("./assets/#locateFile#")#">
            #arguments.formGreeting# #arguments.formName# !!!
        </cfmail>
        <cfset local.result="You file has been uploaded! Please kindly check your mail ID!">
        <cfreturn local.result>
    </cffunction>
</cfcomponent>