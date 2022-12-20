<cfcomponent>
    <cffunction name="getNumbers" access="remote">
        <cfif structKeyExists(form, 'formsubmit')>
            <cfset var flag=0>
            <cfset data=form.field>
            <cfset arr=REmatch("[\d]+",data)>
            <!--- <cfset array_name = ArrayNew(1)> --->
            <cfloop array="#arr#" index="i">
                <cfloop from="1" to=#i# index="j">
                    <cfif(#i# % 3) eq 0>
                        <cfset flag=1>
                        
                        <br>
                        <cfcontinue>   
                    </cfif>
                </cfloop>                
            </cfloop>
            <!--- <cfreturn array_name> --->
            <cfif flag eq 0>
                <cfreturn "In the given list there are no multiple of 3">
            </cfif>
       </cfif>
    </cffunction>
</cfcomponent>