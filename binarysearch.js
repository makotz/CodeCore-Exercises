var binarySearch = function(array, num) {
  var midpoint = Math.floor(array.length/2)
  if (num === array[midpoint]) {
    return true
  } else if (array.length === 1) {
    return false
  } else if (num > array[midpoint]) {
    array = array.slice(midpoint)
    return binarySearch(array, num)
  } else {
    array = array.slice(0, midpoint)
    return binarySearch(array, num)
  }
}

console.log(binarySearch([1,5,6,8,9], 4))
