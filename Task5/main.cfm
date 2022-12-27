<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <cfoutput>
            <form action="main.cfm" method="post" name="myform">
                <div>
                    <label for="user">Enter user's age:</label><br>
                    <input type="date" placeholder="Enter your date of birth" name="user" class="field"><br>
                    <label for="user">Enter user's mother's age:</label><br>
                    <input type="date" placeholder="Enter your mother's date of birth" name="mother" class="field">
                    <div>
                        <input type="submit" value="Submit" class="button" id="formsubmit" name="formsubmit">
                    </div>
                </div>
            </form>
            <cfif structKeyExists( form,'formsubmit')>
                <cfinvoke  method="getAge" component="components/component" returnvariable="dateStruct"> 
                Users age = #dateStruct.yourAge# <br>
                At #dateStruct.momDeliveredAge# his mother delivered him.<br>
                #dateStruct.nextDay# days are remaining for his and #dateStruct.nextDay2# days are remaining his mother birthday.
                <cfset structClear(form)>
            </cfif>   
        </cfoutput>
    </body>
</html>
