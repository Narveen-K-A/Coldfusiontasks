<html>
    <head>
        <link rel="stylesheet" href="css/style.css">       
        <title></title>
    </head>
    <boby>
        <cfoutput>
            <div class="mainBody">
                <form action="main.cfm" method="post" name="myform">
                    <input type="text" name="text1" id="text1" placeholder="Enter a word" class="field">
                    <input type="submit" id="submit" name="submit" class="button">
                </form>
                <cfif structKeyExists(form, "submit")>
                    <cfinvoke  method="getArrayChar" component="components/component" returnVariable="local.result">
                    Found the key word <mark>#form.text1#</mark> in the sentence <b>#local.result#</b> time - <q>The quick brown fox jumps over the lazy dog.</q>
                </cfif>
            </div>
        </cfoutput>
    <body>
<html>