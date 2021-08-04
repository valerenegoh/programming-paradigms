class CashRegister
    attr_reader :drawer

    def initialize
        @drawer = [2000,1000,500,100,25,10,5,1]     # denominations
    end

    def make_change owed, given
        change = given - owed
        
        coinsChange = []
        i = 0
        denom = @drawer[i]

        while change > 0 do
            if change < denom
                i += 1
                denom = @drawer[i]
                next
            end
    
            coinsChange << denom
            change -= denom
        end

        coinsChange
    end
end