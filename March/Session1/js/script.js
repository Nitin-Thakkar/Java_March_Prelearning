function display()
        {
            const b = "VALUE";
            var name = document.getElementById("txtName").value;
            document.getElementById("output").innerHTML = "<h2>"+name+"</h2>";
            // alert(name);

            let no1 = 20;
            let no2 = 30;

            alert (no1-no2);
            console.log("function called");

        }
    
    function add(no1,no2)
    {
        
        var no1 = document.getElementById("txtNo1").value;
        var no2 = document.getElementById("txtNo2").value;

        // var add = no1+no2;
        var add = parseInt(no1) + parseInt(no2);
        alert(add)

    }