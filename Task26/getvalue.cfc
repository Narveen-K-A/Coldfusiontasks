<cfcomponent>
    <cffunction  name="count" access="remote">
        <cftry>
            <cftry>
                <cffile action="upload" fileField="fileField" nameConflict="overwrite" result="thisResult" destination="C:\ColdFusion2018\cfusion\wwwroot\coldfusion\task26\assets\">
                <cfset local.location = #thisResult.serverFile#>
                <cffile action="read" file="C:\ColdFusion2018\cfusion\wwwroot\coldfusion\task26\assets\#local.location#" variable="fieldList">
            <cfcatch type = "any">
                <cflocation  url="index.cfm" addtoken="no">
            </cfcatch>
            </cftry>
            <cfset myObj = createObject("component", "components/tagCloud").textField(mytext="#fieldList#")>
            <cfset myword="#myObj.getwords()#">
            <cfloop collection="#myword#" item="words">
                <cfquery name="check" datasource="employee">
                    SELECT word,numberOfTime  FROM wordCount
                    WHERE word =<cfqueryparam cfsqltype="cf_sql_varchar" value="#StructFind(myword,words)#">
                </cfquery>
                <cfif check.word eq "">
                    <cfif not isNumeric(structFind(myword,words))>
                        <cfquery name="insert" datasource="employee">
                            INSERT INTO wordCount
                            VALUES (<cfqueryparam value="#structFind(myword,words)#" cfsqltype="CF_SQL_VARCHAR">,1);
                        </cfquery>
                    </cfif>
                <cfelse>
                    <cfif not isNumeric(structFind(myword,words))>
                        <cfquery name="update" datasource="employee">
                            UPDATE wordCount
                            SET numberOfTime= <cfqueryparam value="#check.numberOfTime#" cfsqltype="CF_SQL_VARCHAR"> + 1
                            WHERE Word= <cfqueryparam value="#structFind(myword,words)#" cfsqltype="CF_SQL_VARCHAR">;
                        </cfquery>
                    </cfif>
                </cfif>
            </cfloop>
            <cfset session.getString="yes">
            <cflocation  url="index.cfm">
        <cfcatch type="any">
            <cflocation  url="index.cfm" addtoken="no">
        </cfcatch>
        </cftry>
    </cffunction>
</cfcomponent>