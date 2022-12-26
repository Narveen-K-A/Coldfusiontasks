<html>
    <head>
        <link rel="Stylesheet" href="css/style.css">
    </head>
    <body>
        <cfoutput>
            <form action="main.cfm" method="post" name="myform" enctype="multipart/form-data">
                <div class="mainBody">
                    <input type="text" name="name" placeholder="Enter birthday baby name!" class="field" required>
                    <input type="text" name="mail" placeholder="Enter his Mail ID!" class="field" required>
                    <input type="text" name="greeting" placeholder="Enter birthday wishes!" class="field" required>
                    <div class="label">
                        <label>Please upload greeting image!</label>
                        <input type="file" name="file" required>
                    <div>
                    <input type="submit" name="submit" class="button">
                </div>
            </form>
            <cfif structKeyExists(form,'mail')>
                <cfinvoke method="getMail" component="components/component" returnVariable="result">
                #result#
            </cfif>
        </cfoutput>
    </body>
</html>