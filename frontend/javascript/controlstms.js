// Method for displaying tabels using for loop

        
function tabels()
    {
        var a = 5;
        for (var i=1; i<=10;i++)
        {
            document.write(a+" x "+i+" = "+a*i+"<br>");
        }
    }
// Method to find odd or Even number

function even()
    {
        var num = prompt("Enter the number")
        
        var num1 = 2;
        var num3 = num%num1;

        if(num3==0)
        {
            document.write(num+ " is a Even Number");
        }
        else 
        {
            document.write(num+ " is  Not a Number");
        }
       
    }

// Method to display Odd numbers using double click event
    function odd()
    {
        var num = prompt("Enter the number")
        
        var num1 = 2;
        var num3 = num%num1;

        if(num3==0)
        {
            document.write(num+ " is Not a Number");
        }
        else 
        {
            document.write(num+ " is a Odd Number");
        }
    }

// Method to check the given alphabet is a vowel or not using switch statement

    function vowel()
        {
            var char = prompt("Enter a Single Character")
            var char1= char.toLowerCase();
            switch(char1)
                {
                    case "a"  : document.write("Character " +char+ " belongs to Vowels");
                    break;

                    case "e" : document.write("Character " +char+ " belongs to Vowels");
                    break;

                    case "i" : document.write("Character " +char+ " belongs to Vowels");
                    break;

                    case "o" : document.write("Character " +char+ " belongs to Vowels");
                    break;

                    case "u" : document.write("Character " +char+ " belongs to Vowels");
                    break;

                    default: document.write("Character " +char+ " Doesnt belongs to Vowels");
                    break;

                }
        }

// Method to find smallest of 3 number using nested if | if else | else if      

function small()
        {
            var n1= prompt("Enter the first Number")
            var n2= prompt("Enter the Second Number")
            var n3= prompt("Enter the Third Number")
            var result;

            if(n1<n2)
                {
                    if(n1<n3)
                    {
                    result=n1;
                    }
                else if(n2<n3)
                    {
                        result=n2;
                    }
                    else
                    result=n3;

        }

        document.write(result+ " is the smallest of Three numbers");
    }

//Square of two numbers

    function sqr(num1)
    {
        
        document.write("Square of "+num1+ " = " +num1*num1);
    }

//Human Verification using while loop

    function robot()
    {
        var que = prompt("What is 10+2")
        while(que==12)
        {
            window.location= "https://www.google.com/search";
        }
        document.write("ERROR 404 ");
    }

//confirm box

    function exit()
    {
        var msg = confirm("Do you exit");
        if(msg)
        {
            window.location= "https://www.google.com/search";   
        }
        else
        {
            alert("Thanks for staying in the page")
        }
    }



