#May28 DONE


# Write a method that takes the hash above and returns an array of the values divided by a 1000 in one line of code

bc_cities_population = {vancouver: 2135201,
                        victoria: 316327,
                        abbotsford: 149855,
                        kelowna: 141767,
                        nanaimo: 88799,
                        white_rock: 82368,
                        kamloops: 73472,
                        chilliwack: 66382}

p bc_cities_population.values.map! {|x| x/1000.0}

# ^ The "values" command points to the value of the hash and map! iterate the {} command (which is to divide each value by a 1000).
