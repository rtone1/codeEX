// write a function that takes an array of integers as an argument and creates an array of all the possible permutations.

var numbers = [1,2,3];
var variations = [];
var variationsused = [];

function permutations(arrg){

    for (var i = 0; i < arrg.length; i++){
        var swap = arrg.splice(i, 1)[0];
        //console.log(swap);
        variationsused.push(swap);
        //console.log(variationsused);

      if (arrg.length === 0){
        variations.push(variationsused.slice());
      }
      permutations(arrg);
      arrg.splice(i, 0, swap);
      variationsused.pop();

    }
    return variations;
}
permutations(numbers);
