<cfcomponent>
    <cffunction name="textField" access="remote" returntype="struct">
        <cfset local.today = dateFormat("#now()#")>
        <cfset local.month = dateFormat("#now()#","mm")>
        <cfset local.monthWords = monthAsString("#local.month#")>
        <cfset local.todaydayOfWeek = dayOfWeek(local.today)>
        <cfset local.fridayOffset = (6-local.todaydayOfWeek)-7>
        <cfset local.mostRecentFriday = dateAdd("d", local.fridayOffset, today)>
        <cfset local.friday = dateFormat("#local.mostRecentFriday#")>
        <cfset local.dtThisMonth = CreateDate(Year( Now() ),Month( Now() ),1)>
        <cfset local.dtLastDay = (DateAdd( "m", 1, local.dtThisMonth ) -1)>
        <cfset local.dateStruct=structNew()>
        <cfset local.dateStruct.today = "#local.today#">
        <cfset local.dateStruct.month = "#local.month#">
        <cfset local.dateStruct.monthWords = "#local.monthWords#">
        <cfset local.dateStruct.friday = "#local.friday#">
        <cfset local.dateStruct.lastM = "#DateFormat( local.dtLastDay)#">
        <cfloop from="1" to="5" index="i" >
            <cfset local.fiveDays= dateFormat(dateAdd("d",-i, local.today), "d - mmm - yyyy - dddd")>
            <cfset local.day =dateFormat(dateAdd("d",-i, local.today), "dddd")>
            <cfswitch expression = "#local.day#">
                <cfcase value="Monday">
                    <cfset local.fiveDays="<font color= Green>#fiveDays#</font>">
                </cfcase>
                <cfcase value="Tuesday">
                    <cfset local.fiveDays="<font color= orange>#fiveDays#</font>">
                </cfcase>
                <cfcase value="Wednesday">
                    <cfset local.fiveDays="<font color=yellow>#fiveDays#</font>">
                </cfcase>
                <cfcase value="Thursday">
                    <cfset local.fiveDays="<font color=bold black>#fiveDays#</font>">
                </cfcase>
                <cfcase value="Friday">
                    <cfset local.fiveDays="<font color= blue>#fiveDays#</font>">
                </cfcase>
                <cfcase value="Saturday">
                    <cfset local.fiveDays="<font color=bold red>#fiveDays#</font>">
                </cfcase>
                <cfcase value="Sunday">
                    <cfset local.fiveDays="<font color=red>#fiveDays#</font>">
                </cfcase>
                <cfdefaultcase>
                    Invalid
                </cfdefaultcase>
            </cfswitch>
            <cfset structInsert( local.dateStruct,"#i#","#local.fiveDays#")>
        </cfloop>
        <cfreturn local.dateStruct>
    </cffunction>
</cfcomponent>