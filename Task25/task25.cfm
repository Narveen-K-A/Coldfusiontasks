<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/task25.css">       
        <title></title>
    </head>
    <body>
        <cfquery name="textCount" datasource="company">
            SELECT Word, Wordcount
            FROM Textinput
            WHERE not len(Word)<3
            ORDER BY Wordcount DESC,len(Word) DESC, Word ASC
        </cfquery>
        <cfset valueText="#textCount.Wordcount#">
        <cfset x=randRange(0, 255)>
        <cfset y=randRange(0, 255)>
        <cfset z=randRange(0, 255)>
        <cfoutput query="textCount">
            <cfset size="#textCount.Wordcount#"+14>
            <cfif valueText neq textCount.Wordcount>
   				<cfset x=randRange(0,255)>
  			    <cfset y=randRange(0,255)>
  				<cfset z=randRange(0,255)>
   			</cfif>
            <a href="##" style="font-size: #size#px; text-decoration:none; color:rgb(#x#,#y#,#z#)">#textCount.Word# (#textCount.Wordcount#)</a>
            <cfset valueText="#textCount.Wordcount#">
        </cfoutput>
    </body>
</html>