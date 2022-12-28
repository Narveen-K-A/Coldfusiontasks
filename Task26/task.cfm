<html>
    <head>
    </head>
    <body>
        <cfinvoke component="components/tagCloud" method="getTextCount" returnVariable="result">
        <cfset colstr = {1:'red',2:'green',3:'blue',4:'yellow',5:'violet'}>
        <cfset valueText="#result.numberOfTime#">
        <cfset x=randRange(0, 255)>
        <cfset y=randRange(0, 255)>
        <cfset z=randRange(0, 255)>
        <cfoutput query="result">
            <cfset size="#result.numberOfTime#"+20>
            <cfif valueText neq result.numberOfTime>
   				<cfset x=randRange(0,255)>
  			    <cfset y=randRange(0,255)>
  				<cfset z=randRange(0,255)>
   			</cfif>
            <a href="##" style="font-size: #size#px; text-decoration:none; color:rgb(#x#,#y#,#z#)">#result.Word# (#result.numberOfTime#)</a>
            <cfset valueText="#result.numberOfTime#">
        </cfoutput>
    </body>
</html>