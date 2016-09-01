//
// var daysInYear = 365;
// var totaldays = 3;
//
// for (var i = 2014; i <= 2050; i ++) {
//   if (i % 4 == 0) {
//     daysInYear = 366
//     if (totaldays % 7 == 0) {
//       console.log(i)
//     };
//     else {
//       totaldays += daysInYear
// };


document.addEventListener("click", function() {
 for (var i = 14; i <= 50; i++) {
   time = "January 1, 20" + i;
   date = new Date(time); // Loop through each year's Jan 1st
   if (date.getDay() == 0) {//Check if its equal to 0 aka Sunday
     alert(date);
   }
 }
})
