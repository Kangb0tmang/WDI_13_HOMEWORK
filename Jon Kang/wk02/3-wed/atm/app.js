var savingsButton = document.querySelector(".select-savings");
var checkingButton = document.querySelector(".select-checking");
var showSavings = document.querySelector(".savings");
var showChecking = document.querySelector(".checking");

// Choose Account
var displaySavingsAccount = function()
{
   showSavings.classList.add("active");
   showChecking.classList.remove("active");
}

var displayCheckingAccount = function()
{
   showChecking.classList.add("active");
   showSavings.classList.remove("active");
}

savingsButton.addEventListener('click', displaySavingsAccount);
checkingButton.addEventListener('click', displayCheckingAccount);

// Account Balances
document.body.addEventListener('click', function(event)
{
   // var accountButtonClick = event.target.id;

   var depositAmount = function()
   {
      var savingsAmount = document.querySelector('#savings-balance');
      var userAmount = Number(balanceInput.value);
      var currentAmount = Number(balanceNum.textContent);
      var depositBalance = calculateDeposit(currentAmount, userAmount);
      balanceNum.textContent = depositBalance.toFixed(2);
   }

   var calculateDeposit = function(currentAmount)
   {
      return currentAmount + userAmount;
   }

   // if (accountButtonClick === 'deposit-savings')
   // {
   //    console.log('Deposit Savings');
   //    savingsAccount('deposit-savings');
   // }
   // else if (accountButtonClick === 'withdraw-savings')
   // {
   //    console.log('Withdraw Savings');
   // }
   // else if (accountButtonClick === 'deposit-checking')
   // {
   //    console.log('Deposit Checking');
   // }
   // else if (accountButtonClick === 'withdraw-checking')
   // {
   //    console.log('Withdraw Checking');
   // }
});
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
