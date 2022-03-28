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

// Method to find smallest of 3 number using nested if        

function small()
        {
            var n1= prompt("Enter the first Number")
            var n2= prompt("Enter the first Number")
            var n3= prompt("Enter the first Number")

            if(n1>n2)
                {
                    if(n1>n3)
                }

        }