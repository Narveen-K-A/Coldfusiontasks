<cfcomponent>
    <cffunction name="textField"  access="remote">
        <cfset result = [[1,4,7],[2,5,8],[3,6,9]]> 
        <cfloop from="1" to="3" index="i">
            <cfloop from="1" to="3" index="j">
                <cfoutput>#Result[i][j]#</cfoutput>
            </cfloop><br>
        </cfloop>
    </cffunction>
</cfcomponent>