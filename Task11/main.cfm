<html>
    <body>
        <cfoutput>
            <cfinvoke method="field" component="components/component" returnVariable="result">
            1*2=<cfdump var="#result.multiply1#"><br>
            1*2*3=<cfdump var="#result.multiply2#"><br>
            1*2*3*4=<cfdump var="#result.multiply3#"><br>
        </cfoutput>
    </body>
</html>