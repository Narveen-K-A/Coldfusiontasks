<html>
    <head>
        <link rel="Stylesheet" href="css/style.css">
    </head>
    <body>
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
            <cfinvoke method="getForm" component="components/component">
        </form>
    </body>
</html>