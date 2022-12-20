<html>
    <head>
        <link rel="stylesheet" href="css/style.css">      
    </head>
    <boby>
        <cfoutput>
            <div class="mainBody">
                <form action="main.cfm" method="post" name="myform">
                    <input type="submit" value="Submit" class="text" id="submit" name="formsubmit">
                </form>
                <cfif structKeyExists(form,'formsubmit')>
                    <cfinvoke method="visitcount" component="components/component" returnVariable="local.result">
                    You have visited this page #local.result# times!
                </cfif>
            </div>
        </cfoutput>
    <body>
<html>