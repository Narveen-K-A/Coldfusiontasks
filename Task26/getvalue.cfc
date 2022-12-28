<cfcomponent>
    <cffunction name="count" access="remote">
        <cftry> 
            <cftry>
                <cffile action="upload" fileField="fileField" nameConflict="overwrite" result="thisResult" destination="C:\ColdFusion2018\cfusion\wwwroot\Cftasks\Task26\assets\">
                <cfset local.location = #thisResult.serverFile#>
                <cffile action="read" file="#expandpath("./assets/#local.location#")#" variable="fieldList">
            <cfcatch type = "any">
                <cflocation  url="index.cfm" addtoken="no">
            </cfcatch>
            </cftry>
            <cfset myObj = createObject("component", "components/tagCloud").textField(mytext="#fieldList#")>
            <cfset myword="#myObj.getwords()#">
            <cfquery name="deletewordCount" datasource="company">
                DELETE FROM wordCount
            </cfquery>
            <cfloop collection="#myword#" item="words">
                <cfquery name="check" datasource="company">
                    SELECT word,numberOfTime  FROM wordCount
                    WHERE word =<cfqueryparam cfsqltype="cf_sql_varchar" value="#StructFind(myword,words)#">
                </cfquery>
                <cfif check.word eq "">
                    <cfif not isNumeric(structFind(myword,words))>
                        <cfquery name="insert" datasource="company">
                            INSERT INTO wordCount
                            VALUES (<cfqueryparam value="#structFind(myword,words)#" cfsqltype="cf_sql_varchar">,1);
                        </cfquery>
                    </cfif>
                <cfelse>
                    <cfif not isNumeric(structFind(myword,words))>
                        <cfquery name="update" datasource="company">
                            UPDATE wordCount
                            SET numberOfTime= <cfqueryparam value="#check.numberOfTime#" cfsqltype="cf_sql_varchar"> + 1
                            WHERE Word= <cfqueryparam value="#structFind(myword,words)#" cfsqltype="cf_sql_varchar">;
                        </cfquery>
                    </cfif>
                </cfif>
            </cfloop>
            <cfset session.getString="yes">
            <cflocation url="index.cfm">
            <cfcatch type="any">
                <cflocation  url="index.cfm" addtoken="no">
            </cfcatch>
        </cftry>
    </cffunction>
</cfcomponent>