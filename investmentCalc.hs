module Calculator where
    buyPrice :: Double
    buyPrice = 1.3
    buyAmount :: Double
    buyAmount = 2500

    initialInvestment :: Double
    initialInvestment = buyPrice * buyAmount

    profit sellPrice = ( buyAmount * sellPrice ) - initialInvestment

    