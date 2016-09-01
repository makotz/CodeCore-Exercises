array = (1..15).to_a.shuffle

counter = 1

new_array = []

  array.map! do |rando|
      if rando == counter
        new_array << rando
        counter += 1
      else
        array << rando
      end
  end


p new_array
