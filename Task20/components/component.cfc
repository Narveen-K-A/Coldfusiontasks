<cfcomponent>
    <cffunction name="makeRandomString" returnType="string" output="false">
	    <cfset var chars = "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ">
	    <cfset var length = randRange(6,6)>
	    <cfset var result = "">
	    <cfset var i = "">
	    <cfset var char = "">
	    <cfloop index="i" from="1" to="#length#">
		    <cfset char = mid(chars, randRange(1, len(chars)),1)>
		    <cfset result&=char>
	    </cfloop>	
	    <cfreturn result>
    </cffunction>
    <cffunction name="getCaptcha" access="remote">
        <cfset formCaptcha = form.captcha>
        <cfset captch = makeRandomString()>
        <cfset hidvar = form.captchatext>
        <cfif hidvar eq formCaptcha>
            <cfset message="Email Address successfully subscribe our newsletter!">
            <cfreturn message>
        <cfelse>
            <cfset message="Invalid captcha!">
            <cfreturn message>
        </cfif>
    </cffunction>
</cfcomponent>