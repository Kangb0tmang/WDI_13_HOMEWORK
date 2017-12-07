# Week 1 Assessment

## Instructions (READ ME FIRST)
* This is a checkpoint to test the knowledge you have gained so far.
* Complete all tasks for the test in your homework folder: `WDI_13_HOMEWORK/your_name/wk02/2-tue`.
* If you feel any part of the test is ambiguous, create a README.md file in your homework folder (stated above), and write your assumptions for any question you feel is ambiguous.

## Bash (Terminal) Test

#### Create a directory called `bash_test` in your homework folder. Do the following inside `bash_test`:
1. Create a file called `commands.md`. You will have to write each terminal command you run for the Bash Test inside that file.
<br><br>

2. Make two directories inside `bash_test`: `scoobies` and `vamps`
<br><br>

3. Make files in `scoobies` named `buffy.txt`, `giles.txt` and `angel.txt`
<br><br>

4. Copy `angel.txt` into the `vamps` directory
<br><br>

5. Delete the `vamps` directory and everything inside it
<br><br>

## JavaScript Test

Create a file in your homework folder called `js_test.js`. Complete the following sections in that one file (label each question you are solving with the section name as a comment in your JS file.

### JS Variables

1. Assign the string "Jack" to a variable called `captain`
<br><br>

2. Using the `captain` variable, use string concatenation to form the string "Oh Jack, my Jack!", assigning it to a variable named `phrase`
<br><br>


### JS Conditionals
Add these two lines to your JS file:
```js
var souls = 3;
var lifeRafts = 2;
```

1. Write an `if` statement that console.logs "SOS!" if there are more _souls_ than _lifeRafts_
<br><br>


### Data Structures - JS Arrays

1. Create an array named `weekend` with just 'Saturday' in it
<br><br>

2. Write JS to add 'Sunday' to the end of the `weekend` array
<br><br>

3. Write JS to add 'Friday' to the front of the `weekend` array
<br><br>

4. Write JS to access 'Saturday' in the array and assign to a variable named `day`
<br><br>

5. Write JS to remove 'Friday' from the array
<br><br>

### Data Structures - JS Objects

1. Write an object literal named `brain` having a property of `energyLevel` with a value of `10`
<br><br>

2. Write JS to assign the property of `energyLevel` to a variable named `energy`
<br><br>

3. Write JS to add a `dream` property to the `brain` object that holds the string 'electric sheep'
<br><br>

### JS Functions

1. Write a function to return the area of a rectangle (the product of its length and its width)
<br><br>

2. Invoke the function with `3` and `4` as arguments and save it to a variable
<br><br>

3. In the following code sample:
```
var fruits = ['banana', 'apple', 'kiwi'];

var addFruit = function(arr) {
  arr.push('mango');
}

addFruit(fruits);
console.log(fruits);
```

When fruits gets console logged, it displays `["banana", "apple", "kiwi", "mango"]`. Explain in plain english why the global variable `fruits` gets modified, when the local variable `arr` is getting a new fruit added?

## Palindrome Problem
Create a new file called `palindrome.js` and complete the palindrome problem in it: https://gist.github.com/kasun-maldeni/d567e18549569f399b30f421f8330e49/