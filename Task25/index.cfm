<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <cfoutput>
            <form action="components/component.cfc?method=getNumbers" method="post" name="myform">
                <div>
                    <input type="text" placeholder="Enter a paragraph for counting the words in it" name="field" class="field">
                    <input type="submit" value="Submit" class="button" id="formsubmit" name="formsubmit">
                </div>
                <div>
                    <i>
                        <b>
                            Words with length less than 3 are not counted.
	                        Numbers are not counted and saved into the database.
                        </b>
                    </i>
                </div>
            </form>
        </cfoutput>
    </body>
</html>