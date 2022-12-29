<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <cfoutput>
            <cfif structKeyExists(session,'userFlag')>
                <div class="adminBody">
                    <div>
                        <h1 class="welcomeMessage">WELCOME!</h1> <br>
                    </div>
                    <cfinvoke component="componentfile" method="userQuery" returnVariable="result">
                </div>
                <div>
                    <h3 class="pageList">Page List</h3>
                </div>
                <cfloop query="result">
                    <div class="displayFlex">
                        <div class="margin">
                            <cfset showpage="#result.pagename#">
                            <button type="submit" class="show" onclick="openPage('#result.pagename#')">#result.pagename#</button>
                        </div>
                        <div id="message" class="margin"></div>
                    </div>
                </cfloop><br><br><br><br>
                <a class="button" href="login.cfm" class="logout">LOGOUT</a>
                <script src="assets/jquery.js"></script>
                <script src="js/script.js"></script>  
            <cfelse>
                <cflocation url="login.cfm" addtoken="No">
                <cfset StructClear(Session)>
            </cfif>
        </cfoutput>
    </body>
</html>