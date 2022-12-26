<cfcomponent>
    <cffunction name="getNumbers" access="remote">
        <cfargument name="formField" type="any" default="#form.field#">
        <cfswitch expression="#arguments.formField#"> 
            <cfcase value=1>
                <cfset local.result="Ok">
                <cfreturn local.result>
            </cfcase>
            <cfcase value=2>
                <cfset local.result="Ok">
                <cfreturn local.result>
            </cfcase> 
            <cfcase value=3>
                <cfset local.result="Fair">
                <cfreturn local.result>
            </cfcase>
            <cfcase value=4>
                <cfset local.result="Good">
                <cfreturn local.result>
            </cfcase>
            <cfcase value=5>
                <cfset local.result="Very good">
                <cfreturn local.result>
            </cfcase>
            <cfdefaultcase>
                <cfset local.result="Invalid!">
                <cfreturn local.result>
            </cfdefaultcase> 
        </cfswitch>
    </cffunction>
</cfcomponent>  