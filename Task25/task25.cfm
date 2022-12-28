<html>
    <head>
        <link rel="stylesheet" href="css/task25.css">
    </head>
    <body>
        <cfinvoke component="tagCloud" method="getTextCount" returnVariable="result">
        <cfset valueText="#result.Wordcount#">
        <cfset x=randRange(0, 255)>
        <cfset y=randRange(0, 255)>
        <cfset z=randRange(0, 255)>
        <cfoutput query="result">
            <cfset size="#result.Wordcount#"+14>
            <cfif valueText neq result.Wordcount>
   				<cfset x=randRange(0,255)>
  			    <cfset y=randRange(0,255)>
  				<cfset z=randRange(0,255)>
   			</cfif>
            <a href="##" style="font-size: #size#px; text-decoration:none; color:rgb(#x#,#y#,#z#)">#result.Word# (#result.Wordcount#)</a>
            <cfset valueText="#result.Wordcount#">
        </cfoutput>
    </body>
</html>