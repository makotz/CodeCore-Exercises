

def palindrome(string)
  if string[0] == string[-1]
    until string.length == 2
        string.slice!(0)
        string.slice!(-1)
        puts string
        palindrome(string)
      end
    end
    puts "not a palindrome"
end

puts palindrome("hellh")
