<cfcomponent>
    <cffunction name="makeRandomString" returnType="string" output="false">
	    <cfset local.chars = "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ">
	    <cfset local.length = 6>
	    <cfset local.result = "">
	    <cfloop index="i" from="1" to="#length#">
		    <cfset char=mid(chars, randRange(1, len(chars)),1)>
		    <cfset result&=char>
	    </cfloop>	
	    <cfreturn result>
    </cffunction>
    <cffunction name="getCaptcha" access="remote">
        <cfargument name="formCaptcha" type="string" default="#form.captcha#">
        <cfargument name="formCaptchatext" type="string" default="#form.captchatext#">
        <cfset local.captch = makeRandomString()>
        <cfif arguments.formCaptchatext eq arguments.formCaptcha>
            <cfset message="Email Address successfully subscribe our newsletter!">
            <cfreturn message>
        <cfelse>
            <cfset message="Invalid captcha!">
            <cfreturn message>
        </cfif>
    </cffunction>
</cfcomponent>