<cfcomponent>
    <cffunction  name="textField" access="remote">
        <cfapplication name="GetLeadApp" sessionmanagement="Yes" sessiontimeout=#CreateTimeSpan(0,0,45,0)#>
        <cflock SCOPE="Session" TYPE="Exclusive" TIMEOUT="120">
            <cfif structKeyExists(form, 'submit')>
                <cfset session.name= form.name>
                <cfset session.description= form.description>
                <cfif len(trim(form.file))>
                    <cffile action="upload" fileField="file" nameConflict="overwrite" accept="image/jpg,image/jpeg,image/gif,image/png" result="thisResult" destination="C:\ColdFusion2018\cfusion\wwwroot\Cftasks\Task14\assets\">
                    <cfset session.size = thisResult["filesize"]>
                    <cfset session.location = #thisResult.serverFile#>
                    <cfif session.size gte 1024000>
                        <cfscript>
                            try{
                                fileDelete(thisResult["serverfile"]);
                            }
                            catch(any e){
                                writeOutput("file is greater than 1 MB! please upload again ");
                            }
                        </cfscript>
                    <cfelse>
                            <p>Thankyou, your file has been uploaded.</p>
                            <cfimage action="resize" source="C:\ColdFusion2018\cfusion\wwwroot\Cftasks\Task14\assets\duplicate\#session.location#" overwrite="true">
                    </cfif>    
                </cfif>    
            </cfif>
            <cfset session.sizeKB=#session.size#/1000>
        </cflock>
    </cffunction>
</cfcomponent>