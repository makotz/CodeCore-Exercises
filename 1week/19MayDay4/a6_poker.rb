#M

def encoding(array)
encode_array = []

  def card(fl)
    if fl == "A"
      0
    elsif fl == "T"
      9
    elsif fl == "J"
      10
    elsif fl == "Q"
      11
    elsif fl == "K"
      12
    else
      fl.to_i-1
    end
  end

  array.each do |x|
    if x[1] == "c"
      encode_array << card(x[0])
    elsif x[1] == "d"
      encode_array << (card(x[0])+13)
    elsif x[1] == "h"
      encode_array << (card(x[0])+26)
    else
      encode_array << (card(x[0])+39)
    end
  end
  encode_array.sort!
end


def decoding(array)
array = array.sort
decoding_array = []


  def kk(n)
    if n == 0
      "A"
    elsif n == 9
      "T"
    elsif n == 10
      "J"
    elsif n == 11
      "Q"
    elsif n == 12
      "K"
    else
      n.to_i+1
    end
  end


  array.each do |x|
    if x < 13
    decoding_array << "#{kk(x)}c"
    elsif x < 26
    decoding_array << "#{kk(x-13)}d"
    elsif x < 39
    decoding_array << "#{kk(x-26)}h"
    else
    decoding_array << "#{kk(x-39)}s"
    end
  end
  decoding_array
end


p encoding(['7c', 'Ks', '5h', 'Td', '3c'])
p decoding([0, 51, 30, 22, 2])
