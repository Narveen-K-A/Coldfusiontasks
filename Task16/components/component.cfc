<cfcomponent>
    <cffunction name="pattern" access="remote"> 
        <cfloop from="1" to="3" index="i">
            <cfoutput>
                #i# #(i+3)# #(i+3+3)# 
            </cfoutput>           
            <br>
        </cfloop>
    </cffunction>
</cfcomponent>