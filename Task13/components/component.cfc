<cfcomponent>
    <cffunction name="getArrayChar" access="remote">
        <cfargument name="formText" default="#form.text1#">
        <cfset local.textarea=arguments.formText>
        <cfset local.count=0>
        <cfset array= ["the", "quick", "brown", "fox", "jumps", "over", "the", "lazy", "dog"]>
        <cfloop from="1" to="#arrayLen(array)#" index="i">
            <cfif #local.textarea# eq #array[i]#>
                <cfset local.count = #local.count# + 1>
            </cfif>
        </cfloop>
        <cfreturn #local.count#>
    </cffunction>
</cfcomponent>