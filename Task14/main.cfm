<html>
    <head>
        <link rel="stylesheet" href="css/style.css">      
    </head>
    <body>
        <cfoutput>   
            <div class="mainBody">
                <form action="main.cfm" method="post" enctype="multipart/form-data">
                    <label>Image name</label><br>
                    <input type="text" name="name" class="text"><br>
                    <label>Description</label><br>
                    <textarea class="text" rows="4" cols="50" name="description"></textarea><br>
                    <label>Select file</label><br>
                    <input type="file"  name="file"><br>
                    The image should not greater than 1 MB<br>
                    <input type="submit" value="submit" class="text" name="submit">
                </form>
                <cfif structKeyExists(form, 'submit')>
                    <cfinvoke  method="textField" component ="components/component" returnVariable="var">
                    <br>#var#<br>
                    <a href="index.cfm?name=#session.name#&location=#session.location#&size=#session.sizeKB#&des=#session.description#"> 
                        <cfimage source="#expandpath("./assets/duplicate/#session.location#")#" name="myImage" action="writeToBrowser">
                    </a> 
                    <cfset structClear(form)>
                </cfif> 
            </div>
        </cfoutput>
    </body>
</html>