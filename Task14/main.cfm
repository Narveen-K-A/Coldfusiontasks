<html>
    <head>
        <link rel="stylesheet" href="css/style.css">      
    </head>
    <body>
        <cfoutput>   
            <div class="mainBody">
                <form action="main.cfm" method="post" enctype="multipart/form-data">
                    <label>Image name:</label><br>
                    <input class="margin field" name="name" class="text"><br>
                    <label>Description:</label><br>
                    <textarea class="margin" rows="5" cols="40" name="description"></textarea><br>
                    <label>Select file:</label><br>
                    <input type="file" name="file" class="margin"><br>
                    The image should not greater than 1 MB<br>
                    <input type="submit" value="Submit" class="button margin" name="submit">
                </form>
                <cfif structKeyExists(form, 'submit')>
                    <cfinvoke  method="textField" component ="components/component" returnVariable="var">
                    <br>#var#<br>
                    <a href="index.cfm?name=#session.name#&location=#session.location#&size=#session.size#&des=#session.description#"> 
                        <cfimage source="#expandpath("./assets/duplicate/#session.location#")#" name="myImage" action="writeToBrowser">
                    </a>
                    <cfset structClear(form)>
                </cfif> 
            </div>
        </cfoutput>
    </body>
</html>