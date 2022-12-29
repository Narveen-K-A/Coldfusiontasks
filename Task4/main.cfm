<html>
    <head>
        <link rel="stylesheet" href="css/style.css">      
    </head>
    <boby>
        <cfoutput>
            <div class="mainBody">
                <cfinvoke method="textField" component="components/component" returnVariable="myStruct"> 
                Today is #myStruct.today# <br>
                This month is #myStruct.month# (#myStruct.monthWords#)<br>
                The last friday is #myStruct.friday#<br>
                The last day of the month is #myStruct.lastM#<br>
                The last 5 days of the month is:<br>
                <cfloop from="5" to="1" index="i" step="-1" >
                    #myStruct[i]#<br>
                </cfloop>
            </div>
        </cfoutput>
    <body>
<html>