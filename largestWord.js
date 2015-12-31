function wordsLenght(array){
    var word = [];
    var base = 0;
    var largestName = '';
    for (var i = 0; i < array.length; i++) {
        word.push(array[i].length);
        largest = array[i].length ;
        largestName = array[i];
    }
    console.log(word);
    return largestName;
}

var words = ['Rodrigo','Teresa','Israel','Tom', 'Jhonathan'];
console.log(words);
console.log(wordsLenght(words));
