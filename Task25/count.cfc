<cfcomponent>
    <cffunction  name="getCount" access="Remote">
        <cftry>
            <cfset textObj=createObject("component", "tagCloud").getText(mytext="#text#")>
            <cfset resObj="#textObj.getWordString()#"> 
            <cfloop item="word" collection="#resObj#">
                <cfquery name="textQuery" datasource="company">
                    SELECT Word, Wordcount 
                    FROM Textinput
                    WHERE Word = <cfqueryparam value="#structFind(resObj,word)#" cfsqltype="CF_SQL_VARCHAR">
                </cfquery>
                <cfif textQuery.Word eq "">
                    <cfif not isNumeric(structFind(resObj,word))>
                        <cfquery name="queryInsert" datasource="company">
                            INSERT INTO Textinput
                            VALUES (<cfqueryparam value="#structFind(resObj,word)#" cfsqltype="CF_SQL_VARCHAR">,1);
                        </cfquery>
                    </cfif>
                <cfelse>
                    <cfif not isNumeric(structFind(resObj,word))>
                        <cfquery name="queryUpdate" datasource="company">
                            UPDATE Textinput
                            SET Wordcount= <cfqueryparam value="#textQuery.Wordcount#" cfsqltype="CF_SQL_VARCHAR"> + 1
                            WHERE Word= <cfqueryparam value="#structFind(resObj,word)#" cfsqltype="CF_SQL_VARCHAR">;
                        </cfquery>
                    </cfif>
                </cfif>
            </cfloop>
            <cfset session.getWordString="yes">
            <cflocation  url="index.cfm">
        <cfcatch type="any">
            <cflocation  url="index.cfm" addtoken="no">
        </cfcatch>
        </cftry>
    </cffunction>
</cfcomponent>