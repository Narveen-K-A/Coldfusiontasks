<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <cfoutput>
            <form action="main.cfm" method="post" name="myform">
                <div>
                    <label for="user">Enter your date of birth:</label><br>
                    <input type="date" name="user" class="field"><br>
                    <label for="user">Enter your mother's date of birth:</label><br>
                    <input type="date" name="mother" class="field">
                    <div>
                        <input type="submit" value="Submit" class="button" id="formsubmit" name="formsubmit">
                    </div>
                </div>
            </form>
            <cfif structKeyExists( form,'formsubmit')>
                <cfinvoke  method="getAge" component="components/component" returnvariable="dateStruct"> 
                Your age = #dateStruct.yourAge# <br>
                At age #dateStruct.momDeliveredAge# your mother delivered you.<br>
                #dateStruct.nextDay# days are remaining for your and #dateStruct.nextDay2# days are remaining for your mother's birthday.
                <cfset structClear(form)>
            </cfif>   
        </cfoutput>
    </body>
</html>
