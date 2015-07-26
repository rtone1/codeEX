// write a function that finds the median of any two arrays

var array1 = [1,2,3,4,5];
var array2 = [6,7,8,9,10];

function median(input, input2){

  var consolidatedArray = input.concat(input2);
  var half = Math.floor((input.length + input2.length) / 2);

  for (var i = 0; i < consolidatedArray.length; i++){
    var arrindx = consolidatedArray[half];
  }

    return arrindx;

}
median(array1, array2);
