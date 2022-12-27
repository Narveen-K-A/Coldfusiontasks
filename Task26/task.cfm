<html>
    <head>
    </head>
    <body>
         <cfquery name="textCount" datasource="company">
            SELECT Word, numberOfTime
            FROM wordCount
            WHERE not len(Word)<3
            ORDER BY numberOfTime DESC,len(Word) DESC, Word ASC;
        </cfquery>
        <cfset colstr = {1:'red',2:'green',3:'blue',4:'yellow',5:'violet'}>
        <cfset valueText="#textCount.numberOfTime#">
        <cfset x=randRange(0, 255)>
        <cfset y=randRange(0, 255)>
        <cfset z=randRange(0, 255)>
        <cfoutput query="textCount">
            <cfset size="#textCount.numberOfTime#"+20>
            <cfif valueText neq textCount.numberOfTime>
   				<cfset x=randRange(0,255)>
  			    <cfset y=randRange(0,255)>
  				<cfset z=randRange(0,255)>
   			</cfif>
            <a href="##" style="font-size: #size#px; text-decoration:none; color:rgb(#x#,#y#,#z#)">#textCount.Word# (#textCount.numberOfTime#)</a>
            <cfset valueText="#textCount.numberOfTime#">
        </cfoutput>
    </body>
</html>