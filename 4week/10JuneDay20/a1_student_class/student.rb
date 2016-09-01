class Student
  attr_accessor :first_name, :last_name, :score

  def initialize(first_name, last_name, score)
    @first_name = first_name
    @last_name  = last_name
    @score      = score
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  def grade
    if @score.to_i > 90
      "A"
    else
      "F"
    end
  end


end
