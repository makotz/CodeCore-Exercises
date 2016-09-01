(function() {
   var a = b = 5;
})();

console.log(b);

the "var" function limits the scope of the variable "a" to within the function and thus is unaccessible outside of the function. Whereas, "b" is not declared a variable and thus can be accessed outside.
