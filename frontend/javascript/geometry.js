class history 
{
   // A default constructor
    constructor()
    {
        
        throw new Error("Object for Abstract Class cannot be created");

    }

    socialreformers()
    {
        throw new Error("Abstract function cannot have implementation");

    } 

}

class legends extends history
    {
        socialreformers()
        {
            var msg = prompt("Do you wanna Enter into the world of Legends (Y/N) ");
            if(msg=='y')
            {
                document.write("Welcome");
            }
            else 
            {
                document.write("You missed a beautiful part");
            }
        }

        var s = new legends();
         s.socialreformers();
    }