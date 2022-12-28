<cfcomponent>
    <cffunction name="makeRandomString" returnType="string" output="false">
	    <cfset local.chars = "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ">
	    <cfset local.length = 6>
	    <cfset local.result = "">
	    <cfloop index="i" from="1" to="#length#">
		    <cfset local.char=mid(chars, randRange(1, len(chars)),1)>
		    <cfset local.result&=local.char>
	    </cfloop>	
	    <cfreturn local.result>
    </cffunction>
    <cffunction name="getCaptcha" access="remote">
        <cfargument name="formCaptcha" type="string" default="#form.captcha#">
        <cfargument name="formCaptchatext" type="string" default="#form.captchatext#">
        <cfset local.captch = makeRandomString()>
        <cfif arguments.formCaptchatext eq arguments.formCaptcha>
            <cfset local.message="Email Address successfully subscribe our newsletter!">
            <cfreturn local.message>
        <cfelse>
            <cfset local.message="Invalid captcha!">
            <cfreturn local.message>
        </cfif>
    </cffunction>
</cfcomponent>