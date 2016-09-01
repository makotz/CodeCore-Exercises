class Consumable
  attr_accessor :sugar, :protein, :fat
  def initialize(sugar, protein, fat)
    @sugar = sugar
    @protein = protein
    @fat = fat
  end
end
    class Pizza < Consumable
      attr_accessor :weight

      def initialize(*args, weight)
        super(*args)
        @weight = weight
      end

    end

    class Beer < Consumable
      attr_accessor :volume

      def initialize(*args, volume)
        super(*args)
        @volume = volume
      end
    end

  
