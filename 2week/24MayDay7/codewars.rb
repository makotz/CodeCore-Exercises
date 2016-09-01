def get_count(*words)
  hash = Hash.new
  hash["vowels"] = 0
  hash["consonants"] = 0
  words.each do |e|
  if e == nil || e == "" || e.class == Array || e.class == Hash
    hash
    else
      split_words = e.downcase.delete(' ').split('')
      split_words.each do |elm|
        if elm == "a" || elm == "e" || elm == "i" || elm == "o" || elm == "u"
        hash["vowels"] += 1
        elsif elm == "."
        hash
        else
        hash["consonants"] += 1
        end
      end
    end
  end
  hash
end



p get_count('test')
