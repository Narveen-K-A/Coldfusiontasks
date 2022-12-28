<cfcomponent>
    <cffunction  name="getSQL" access="remote">
        <cfset queryField=queryNew("ID, Name, Email","Integer,Varchar,Varchar", 
            [{ID=101, Name="Narveen K A", email="narveenanwar2@gmail.com"}, 
            {ID=102, Name="Ram Prakash J D", email="ramprakash@gmail.com"}, 
            {ID=103, Name="Ashna F Raj", email="ashnafrajan@gmail.com"}])>
        <cfreturn queryField>
    </cffunction>
</cfcomponent>