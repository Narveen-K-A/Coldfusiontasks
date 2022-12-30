<cfcomponent>
    <cffunction name="getText" output="false" returntype="tagCloud">
        <cfargument name="mytext" type="string">
        <cfset variables.mytext = arguments.mytext>
        <cfreturn this>
    </cffunction> 
    <cffunction  name="getWordString" access="remote">
        <cfset textData="#mytext#">
        <cfset keyText=0>
        <cfloop list="#textData#" delimiters=" .;" index="i">
            <cfset keyText= keyText+1>
            <cfset ValueText = "#i#">
            <cfif not isNumeric(i)>
                <cfif  StructKeyExists(local, "struct")>
                    <cfset textvar=structInsert(local.struct, "#keyText#", "#valueText#")>
                <cfelse>
                    <cfset local.struct=structNew("Ordered")>
                    <cfset textvar=structInsert(local.struct, "#keyText#", "#valueText#")>
                </cfif>
            </cfif>
        </cfloop>
        <cfreturn local.struct>
    </cffunction>
    <cffunction name="getTextCount" access="remote" returnType="query">
        <cfquery name="textCount" datasource="company">
            SELECT Word, Wordcount
            FROM Textinput
            WHERE not len(Word)<3
            ORDER BY Wordcount DESC,len(Word) DESC, Word ASC;
        </cfquery>
        <cfreturn textCount>
    </cffunction>
</cfcomponent>