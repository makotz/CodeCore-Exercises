function test() {
   console.log(a);
   console.log(foo());

   var a = 1;
   function foo() {
      return 2;
   }
}

test();


In accordance with the logic behind hoisting, if var is declared before the it is printed on the console, var a would be printed. 
