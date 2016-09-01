function returns(string) {
  var obj = {}
  for (var i = 0; i < string.length; i++) {
    obj[string[i]] = obj[string[i]] || 0
    obj[string[i]] += 1
  }
  return obj
}


var string = "hello"

returns(string)
