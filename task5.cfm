<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/task5.css">       
        <title>Submit</title>
    </head>
    <body>
        <cfoutput>
            <div class="main">
                <form action="components/task5.cfc?method=getAge" method="post" autocomplete="off" name="myform">
                    Enter Child DOB<input type="date" name="date" id="date">
                    Enter Mother's DOB<input type="date" name="mother" id="mother">
                    <input type="submit" name="submit" value="Submit" id="submit">
                </form>
            </div>
        </cfoutput>
    </body>
</html>