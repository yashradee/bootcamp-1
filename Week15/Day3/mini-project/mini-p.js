function playTheGame(){
  let ask = confirm("you want to play?")
  if(ask == false){
    alert("No problem Goodbye")
    return
  }

  let userNum = prompt("choose number between 0-10")

  if(isNaN(userNum)){
    alert("Sorry not a number good bye")
    return
  }

  userNum = Number(userNum)

  if(userNum > 10){
    alert("its not a good number, bye")
    return
  }

  let computerNum = Math.floor(Math.random()*11)
  console.log("computer was: "+computerNum) 

  computerareNumbers(userNum, computerNum)
}

function computerareNumbers(userNum, computerNum){
  let tries = 1

  while(tries <=3){
    if(userNum === computerNum){
      alert("WINNER!!!")
      return
    } else if(userNum > computerNum){
      alert("your number bigger then computer, try again")
    } else {
      alert("your number smaller then computer, try again")
    }

    userNum = prompt("guess again")
    userNum = Number(userNum)

    tries++
    if(tries >3){
      alert("out of chance, number was "+computerNum)
      return
    }
  }
}
