// write a function that sorts an unsorted array of integers.

var unsorted = [2,1,3,5,4,6,9,10,8,7];

function organizeArray(input){

    for (var i = 0; i < input.length; i++){
     if(input[i] >= input[i+1]) {

      var tmp = input[i];
      input[i] = input[i+1];
      input[i+1] = tmp;

     }
    }
    console.log(unsorted);
}
organizeArray(unsorted);


// or I can use an alreday built-in JS method

var numbers = [4, 2, 5, 1, 3];
numbers.sort(function(a, b) {
 return a - b;
});
console.log(numbers);
