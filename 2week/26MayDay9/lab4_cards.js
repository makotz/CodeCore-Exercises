// Create a javascript object that stores deck of cards.
//
// - Add a print method on it that will print the cards in order.
// - Add a method shuffle that will shuffle the cards
// - Add a randomCard method that give your a random card from your collection

// var cards = {}
//
// //cards
//   for (var y = 1; y <= 13; y++) {
//
//   }
//
//
// cards.spades =
//
//
//
// console.log(cards)
//
// var buildCard = function(suite, rank) {
//     return {
//         suite: suite,
//         rank: rank
//     };
// };

//Print Method

function print() {
    var suites = ["hearts", "diamonds", "spades", "clover"];
    var ranks = [];
    for (var i = 1; i<=13; i++) {ranks.push(i)}
    var deck = [];
    for (var y = 0; y<suites.length; y++) {
      for (var x = 0; x<ranks.length; x++) {
        deck.push(suites[y]+ranks[x])
      }
    }
    console.log(deck);
};

print()





// var cardObject = {
//     deck: deck,
//     print: function() {
//         return this.deck;
//     },
//     shuffle: function() {
//        // code
//     },
//     randomCard: function() {
//         // code
//     }
// };
