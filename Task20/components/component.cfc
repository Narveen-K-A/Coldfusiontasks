<cfcomponent>
    <cffunction name="makeRandomString" returnType="string" output="false">
	    <cfset var chars = "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ">
	    <cfset var length = randRange(6,6)>
	    <cfset var result = "">
	    <cfset var i = "">
	    <cfset var char = "">
	    <cfscript>
	        for(i=1; i <= length; i++) {
		        char = mid(chars, randRange(1, len(chars)),1);
		        result&=char;
	        }
	    </cfscript>	
	    <cfreturn result>
    </cffunction>
    <cffunction name="getCaptcha" access="remote">
        <cfif structKeyExists(form, 'submit')>
            <cfset variable = form.captcha>
            <cfset captch = makeRandomString()>
            <cfset hidvar = form.captchatext>
            <cfif hidvar eq variable>
                <cfreturn "Email Address successfully subscribe our newsletter!">
            <cfelse>
                <cfreturn "Invalid captcha!">
            </cfif>
        </cfif>
    </cffunction>
</cfcomponent>