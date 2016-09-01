// Write a JavaScript function to merge two arrays and removes all duplicates elements. For example:
// ?
var array1 = [1, 2, 3];
var array2 = [3, 4, 5];


function merge(array1, array2) {
  merge_array = []
  for (var i = 0; i < array1.length; i++) {
      for (var y = 0; y < array2.length; y++) {
        if (array1[i] = array1[0]) {
         merge_array.push(array1[i]
        } else (for  != array2[y]) {
        merge_array.push(array1[i])
          console.log(merge_array)
        }
      }
  }
  return merge_array
}



console.log(merge(array1, array2));




ar a = [1, 2, 3], b = [101, 2, 1, 10];
var c = a.concat(b);
var d = c.filter(function (item, pos) {return c.indexOf(item) == pos});
console.log(d)
