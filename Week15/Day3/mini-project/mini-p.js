function playTheGame() {
    const wouldLikeToPlay = confirm("Would you like to play the game?");
    if (!wouldLikeToPlay) {
        alert("No problem, Goodbye")
        return;
    }
    let userNumber = prompt("Enter a number between 0 and 10");
    if (isNaN(userNumber)) {
        alert("Sorry Not a number, Goodbye")
        return;
    }
    userNumber = Number(userNumber);
    if (userNumber < 0 || userNumber > 10) {
        alert("Sorry it’s not a good number, Goodbye")
        return;
    }
    
    const computerNumber=generateARamdonNumber()

    
}
function generateARamdonNumber(){
    return Math.floor(Math.random()*11)
}


function compareNumbers(userNumber, computerNumber){
    let tries = 1;

    while(tries <= 3){
        if(userNumber === computerNumber){
            alert("WINNER 🎉");
            return;
        }
        else if(userNumber > computerNumber){
            alert("Your number is bigger then the computer’s, guess again");
        }
        else{
            alert("Your number is smaller then the computer’s, guess again");
        }

        if(tries === 3){
            alert("out of chances");
            return;
        }

        // get new number
        let newNum = prompt("try another number 0-10");
        if(newNum === null){
            alert("Game ended");
            return;
        }
        userNumber = Number(newNum);

        tries++;
    }
}