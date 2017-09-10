var savingsButton = document.querySelector(".select-savings");
var checkingButton = document.querySelector(".select-checking");

var displaySavingsAccount = function()
{
   var showSavings = document.querySelector(".savings");
   var showChecking = document.querySelector(".checking");
   showSavings.classList.add("active");
   showChecking.classList.remove("active");
}

var displayCheckingAccount = function()
{
   var showChecking = document.querySelector(".checking");
   var showSavings = document.querySelector(".savings");
   showChecking.classList.add("active");
   showSavings.classList.remove("active");
}

savingsButton.addEventListener('click', displaySavingsAccount);
checkingButton.addEventListener('click', displayCheckingAccount);

// Account Functionality
// event.target - which one got clicked
// use dom tree to find parent (find.actve)
document.body.addEventListener('click', function(event)
{

});
// searchActiveClasses.forEach(function(div)
// {
//    divActiveClass.push(div);
// });

// var findChosenAccount = function(activeClass)
// {
//    savingsAccount(activeClass);
//    checkingAccount(activeClass);
// }
//
// var savingsAccount = function()
// {
//    depositAmount();
//    withdrawAmount();
// }
//
// var checkingAccount() = function()
// {
//    depositAmount();
//    withdrawAmount();
// }
//
// var depositAmount = function()
// {
//
// }
//
// var withdrawAmount = function()
// {
//
// }
// document.getElementById("deposit-savings").addEventListener("click", savingsAccount);
// document.getElementById("withdraw-savings").addEventListener("click", savingsAccount);
// // Deposit
// var depositAmount = function()
// {
//    var userAmount = Number(amountInput.value);
//    var currentAmount = Number(balanceNum.textContent);
//    var depositBalance = calculateDeposit(currentAmount, userAmount);
//    balanceNum.textContent = depositBalance.toFixed(2);
// }
// var calculateDeposit = function(currentAmount, userAmount)
// {
//    return currentAmount + userAmount;
// }
//
// // Withdraw
// var calculateWithdraw = function(currentAmount, userAmount)
// {
//    if (currentAmount < userAmount)
//    {
//       alert("You can't withdraw money you don't have!");
//       amountInput.value = '';
//       return currentAmount;
//    }
//    else
//    {
//       return currentAmount - userAmount;
//    }
// }
//
// var withdrawAmount = function()
// {
//    var userAmount = Number(amountInput.value);
//    var currentAmount = Number(balanceNum.textContent);
//    var withdrawBalance = calculateWithdraw(currentAmount, userAmount);
//    balanceNum.textContent = withdrawBalance.toFixed(2);
// }
//
// depositButton.addEventListener('click', depositAmount);
// withdrawButton.addEventListener('click', withdrawAmount);
