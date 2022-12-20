<cfcomponent>
    <cffunction name="textField" access="remote">
        <cfset today = dateFormat("#now()#")>
        <cfset month = dateFormat("#now()#","mm")>
        <cfset monthWords = monthAsString("#month#")>
        <cfset todaydayOfWeek = dayOfWeek(today)>
        <cfset fridayOffset = (6-todaydayOfWeek)-7>
        <cfset mostRecentFriday = dateAdd("d", fridayOffset, today)>
        <cfset friday= dateFormat("#mostRecentFriday#")>
        <cfset LastMonth= dateAdd("d", -1, dateAdd("m", 1 , today)-2)>
        <cfset lastM = dateFormat("#LastMonth#")>
        <cfoutput>
            Today is #today#, month is #month# (#monthWords#)<br>
            The last Friday is #friday# <br>
            The last day of the month is #lastM#<br>
        </cfoutput>
        <cfloop from="1" to="5" index="i" >
            <cfset fiveDays=dateFormat(dateAdd("d",-i, today), "d - mmm - yyyy - dddd")>
            <cfset day=dateFormat(dateAdd("d",-i, today), "dddd")>
            <cfswitch expression = "#day#">
            <cfcase value="Monday">
                <cfset fiveDays="<font color= Green>#fiveDays#</font>">
            </cfcase>
            <cfcase value="Tuesday">
                <cfset fiveDays="<font color= orange>#fiveDays#</font>">
            </cfcase>
            <cfcase value="Wednesday">
                <cfset fiveDays="<font color=yellow>#fiveDays#</font>">
            </cfcase>
            <cfcase value="Thursday">
                <cfset fiveDays="<font color=bold black>#fiveDays#</font>">
            </cfcase>
            <cfcase value="Friday">
                <cfset fiveDays="<font color= blue>#fiveDays#</font>">
            </cfcase>
            <cfcase value="Saturday">
                <cfset fiveDays="<font color=bold red>#fiveDays#</font>">
            </cfcase>
            <cfcase value="Sunday">
                <cfset fiveDays="<font color=red>#fiveDays#</font>">
            </cfcase>
            <cfdefaultcase>
                Invalid
            </cfdefaultcase>
            </cfswitch>
            <cfoutput>
                #fiveDays# <br>
            </cfoutput>
        </cfloop>
    </cffunction>
</cfcomponent>