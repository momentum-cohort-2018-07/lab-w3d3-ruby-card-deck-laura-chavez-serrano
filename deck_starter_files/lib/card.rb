class Card
 attr_accessor :rank, :suit

        def initialize(rank, suit)
            
            @rank = rank
            @suit = suit
        end   
            def value
                value = case @rank
                when :A 
                    1
                when 2..10
                    @rank
                when :J
                    11
                when :Q
                    12
                when :K
                    13
                end
            end

        def greater_than?(other_card)
            self.value > other_card.value
        end

        def == other_card
        self.suit == other_card.suit &&
        self.rank == other_card.rank
        end
end
