<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <cfoutput>
            <cfinvoke method="makeRandomString" component="components/component" returnVariable="captch">
            <form action="components/component.cfc?method=getCaptcha" method="post" name="myform">
                <div>
                    <label>Enter your mail ID:</label><br>
                    <input type="mail" name="mail" class="field" required>
                    <div>
                        <cfimage action="captcha" text="#captch#" difficulty="low" fontSize="18" overwrite="yes">
                    </div>
                    <label>Enter captcha:</label><br>
                    <input type="text" name="captcha" class="field2" required>
                    <input type="hidden" name="captchatext" value="#captch#">
                    <div>
                        <input type="submit" value="Submit" class="button" id="submit" name="submit">
                    </div>
                </div>
            </form>
        </cfoutput>
    </body>
</html>