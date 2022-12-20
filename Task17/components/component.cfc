<cfcomponent>
    <cffunction name="getNumbers" access="remote">
        <cfargument name="formField" default="#form.field#">
        <cfif arguments.formField gt "0">
            <cfset local.data=arguments.formField>
            <cfloop from="1" to="#local.data#" index="i">
                <cfif  (#i# % 2) eq 0>
                    <cfset i="<font color=Green>#i#</font>">
                <cfelse>
                    <cfset i="<font color=Blue>#i#</font>">
                </cfif>
                <cfset mystruct=structNew()>
                <cfset mystruct[i]=i>
                <cfreturn mystruct>
            </cfloop>    
        <cfelse>
            Invalid number!
        </cfif>
    </cffunction>
</cfcomponent>