<cfcomponent>
    <cffunction name="getJsonTable" access="remote">
        <cfset jsonDeserialize = []>
        <cfset jsonTable=serializeJSON([{"Name":"Saravanan","Age":27,"Location":"Dubai"},{"Name":"Ram","Age":26,"Location":"Kovilpatti"}])>
        <cfset jsonDeserialize=deserializeJSON(jsonTable)>
        <cfreturn jsonDeserialize>
    </cffunction>
</cfcomponent>