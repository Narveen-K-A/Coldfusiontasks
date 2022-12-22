<cfcomponent>
    <cffunction name="getJsonTable" access="remote">
        <cfset jsonDeserialized = []>
        <cfscript>
            jsonTable=serializeJSON([{"Name":"Saravanan","Age":27,"LOCATION":"Dubai"},{"Name":"Ram","Age":26,"LOCATION":"Kovilpatti"}]);
            jsonDeserialized=deserializeJSON(jsonTable);
        </cfscript> 
        <cfreturn jsonDeserialized>
    </cffunction>
</cfcomponent>