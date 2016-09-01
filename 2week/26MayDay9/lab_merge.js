// MERGE

var array1 = [1,2,3,3,5,6];
var array2 = [1,2,3,5,6,7,3];

console.time("SALMAN");
// SALMAN
function merge(a1,a2) {
  mergeArray = []
  for(var i = 0 , len = a1.length; i < len; i++){
    if(mergeArray.indexOf(a1[i]) < 0){
      mergeArray.push(a1[i]);
    }
  }
  for(var j = 0 , len = a2.length; j < len; j++){
    if(mergeArray.indexOf(a2[j]) < 0){
      mergeArray.push(a2[j]);
    }
  }
  return (mergeArray)

}
merge(array1, array2);
console.timeEnd("SALMAN");

// console.log(merge([1,2,3,3,5,6],[1,2,3,5,6,7,3]))

// MATT
console.time("MATT");
function merge2(array1, array2) {
  var hash = {};
  var newArray = [];

  for (var i=0, len=array1.length; i < len; i++){
    var key = array1[i];
    if (!hash[key]) {
      hash[key] = 0;
      newArray.push(key)
    }
    hash[key]++;
  }
  for (var i=0, len=array2.length; i < len; i++){
    var key = array2[i];
    if (!hash[key]) {
      hash[key] = 0;
      newArray.push(key);
    }
    hash[key]++;
  }
  return newArray.sort();
}
merge2(array1, array2);
console.timeEnd("MATT");
// console.log(merge2([1,2,3,3,5,6],[1,2,3,5,6,7,3]))

// LILY
console.time("LILY");
var c = array1.concat(array2);
var d = c.filter(function (item, pos){return c.indexOf(item) == pos});
console.timeEnd("LILY");

// angela + tong
console.time("ANGELA + TONG");
function merge3(a1,a2) {
  mergeArray = []
  for(var i = 0 , len = a1.length-1; i < len; i++){
  for(var j = 0 , len = a2.length-1; j < len; j++){
      if(mergeArray.indexOf(a1[i]) < 0){
      mergeArray.push(a1[i]); }
    if(mergeArray.indexOf(a2[j]) < 0){
      mergeArray.push(a2[j]); }
      }
    }
    return (mergeArray)
}

merge3(array1, array2);
console.timeEnd("ANGELA + TONG");
// console.log(merge([1,2,3,3,5,6],[1,2,3,5,6,7,3]))




console.time("Travis + Kenan");

function mergeArray(array1, array2){
   var hash = {}, merged = array1.concat(array2).sort(), output = [];
   for (var i = 0; i < merged.length; i++) {
       hash[merged[i]] = hash[merged[i]] || 0;
   }
   for (var key in hash) {
       output.push(key/1);
   }
   return output;
}

console.timeEnd("Travis + Kenan");
