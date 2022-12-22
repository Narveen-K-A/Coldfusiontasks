<cfcomponent>
    <cffunction name="getNumbers" access="remote">
        <cfswitch expression="#field#"> 
            <cfcase value=1>Ok</cfcase>
            <cfcase value=2>Ok</cfcase> 
            <cfcase value=3>Fair</cfcase>
            <cfcase value=4>Good</cfcase>
            <cfcase value=5>Very Good</cfcase>
            <cfdefaultcase>Invalid!</cfdefaultcase> 
        </cfswitch>
    </cffunction>
</cfcomponent>  