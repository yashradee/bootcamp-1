// ===============ex1=================


function infoAboutMe () {
    console.log("hey! my name is yash, my hobby is mecanic");
}
infoAboutMe ();



function infoAboutPerson (personName, personAge, personFavoriteColor) {
  console.log("Your name is " + personName + ", you are " + personAge + " years old, and your favorite color is " + personFavoriteColor + ".");
}

infoAboutPerson("yash", 22, "black")
infoAboutPerson("adi", 19, "yellow")


// ===============ex2=================


function calculateTip(){
    let bill = promt ("John what is the amount of the bill.")
    bill = number(bill);
let tip = 0;

if (bill<50){
    console.log(` bill is $${bill}. your tips is 20%.`);
 } else  if (bill >= 50 && bill <= 200) {
    tip = bill * 0.15; 
}  else if (bill > 200) {
    tip = bill * 0.10;
  } else {
    console.log("Please enter a valid bill amount.");
    return; 
  }

  let total = bill + tip; 
  console.log(`Tip: $${tip.toFixed(2)}`);
  console.log(`Total Bill: $${total.toFixed(2)}`);
}

calculateTip(); 

// ===============ex3=================


function isDivisible() {
  let sum = 0;
  for (let i = 0; i <= 500; i++) {
    if (i % 23 === 0) {
      console.log(i);
      sum += i; // add to sum
    }
  }
  console.log("Sum: " + sum);
}
isDivisible();
function isDivisibleBy(divisor) {
  let sum = 0;
  for (let i = 0; i <= 500; i++) {
    if (i % divisor === 0) {
      console.log(i);
      sum += i;
    }
  }
  console.log("Sum: " + sum);
}

isDivisibleBy(3); 
isDivisibleBy(45); 