<cfcomponent>
    <cffunction name="getAge" access="remote">
        <cfif structKeyExists(form, 'submit')>
        <cfset yourBirthday = form.user>
        <cfset momBirthday = form.mother>
            <cfif #yourBirthday# lt #momBirthday# >
                <cfoutput>
                    Child's age should always less than mother's age!
                </cfoutput>
            <cfelse>
                <cfset nowdate = dateFormat("#now()#","yyyy")>
                <cfset yourdate = dateFormat("#yourBirthday#","yyyy")>
                <cfset momdate = dateFormat("#momBirthday#","yyyy")>
                <cfset yourAge = #nowdate#-#yourdate#>
                <cfset momDeliveredAge= #yourdate#-#momdate#>
                <cfset y= dateFormat("#now()#", "yyyy")>
                <cfset y2 =dateFormat("#now()#", "yyyy")>
                <cfset m = dateFormat("#yourBirthday#", "mm")>
                <cfset nm = dateFormat("#now()#", "mm")>
                <cfset d = dateFormat("#yourBirthday#", "dd")>
                <cfset nd = dateFormat("#now()#", "dd")>
                <cfif #m# eq #nm# && #nd# lte #d# || #m# gt #nm#>
                    <cfelse>
                        <cfset y = #y# + 1>
                </cfif>
                <cfset day = createDate("#y#", "#m#" , "#d#")>
                <cfset nextDay=dateDiff("d", now(), day)>
                <cfset m2 = dateFormat("#momBirthday#", "mm")>
                <cfset d2 = dateFormat("#momBirthday#", "dd")>
                <cfif #m2# eq #nm# && #nd# lte #d2# || #m2# gt #nm#>
                    <cfelse>
                        <cfset y2 = #y2# + 1>
                </cfif>
                <cfset day2 = createDate("#y2#", "#m2#" , "#d2#")>
                <cfset nextDay2=dateDiff("d", now(), day2)>
                <cfoutput>
                    Users age = #yourAge# <br>
                    At age #momDeliveredAge# his mother delivered him.<br>
                    #nextDay# days are remaining for his and #nextDay2# days are remaining his mother birthday.
                </cfoutput>
            </cfif>
       </cfif>
    </cffunction>
</cfcomponent>