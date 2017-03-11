courseTotals = []

puts "Where there any appetizers ordered? (Y/n)"

sleep 0.5

appetizers = gets.chomp
 if appetizers.downcase.match(/\Ay/) || appetizers.upcase.match(/\AY/)
 	
 	puts "How many were ordered? "
 	appsOrder = gets.chomp
 	appsOrder.to_i

 	case appsOrder
 	when 1
 		puts "How much was it? "
 		appOne = gets.chomp
 		appOne.to_f
 		courseTotals.push(appOne)
 	when 2
 		puts "How much was the first? "
 		app2First = gets.chomp
 		puts "And the second?"
 		app2Second = gets.chomp
 		app2Both = app2First.to_f + app2Second.to_f
 		puts "Total for both appetizers: $#{app2Both}"
 		courseTotals.push(app2Both)
 	when 3
 		puts "How much was the first? "
 		app3First = gets.chomp
 		puts "The second? "
 		app3Second = gets.chomp
 		puts "And the third? "
 		app3Third = gets.chomp
 		app3All = app3First.to_f + app3Second.to_f + app3Third.to_f
 		puts "Total for all appetizers: $#{app3All}"
 		courseTotals.push(app3All)
 	when 4
 		puts "Having a party, are we?"
 		sleep 1.5
 		puts "Sigh...ok"
 		sleep 1
 		puts "How much was the first? "
 		app4First = gets.chomp
 		puts "The second? "
 		app4Second = gets.chomp
 		puts "The third? "
 		app4Third = gets.chomp
 		puts "Aaaaand the fourth? "
 		app4Fourth = gets.chomp
 		app4All = app4First.to_f + app4Second.to_f + app4Third.to_f + app4Fourth.to_f
 		puts "And here's the grand total for appetizers: $#{app4All}"
 		courseTotals.push(app4All)
 	end
 
 elsif appetizers.downcase.match(/\An/) || appetizers.upcase.match(/\AN/)
 	puts "Okay, cool!"
	noAppetizers = 0
	noAppetizers.to_f
	courseTotals.push(noAppetizers)
	
 else
 	redo
 end

 puts "Did we get any drinks? (Y/n)"

 sleep 0.5

 drinksOrder = gets.chomp

 if drinksOrder.downcase.match(/\Ay/)

 	puts "How many drinks did we get? "
 	drinksNum = gets.chomp
 	drinksNum.to_i

 	if drinksNum == 1..12
 		puts "Were they all the same price? (Y/n/some)"
		sameDrinks = gets.chomp
		
		if sameDrinks.downcase.match(/\Ay/)
			puts "How much were they each?"
			sameDrinksPrice = gets.chomp
			sameDrinksPrice.to_f
			sameDrinksPrice = sameDrinksPrice * drinksNum
			puts "So this is our total for #{drinksNum}: #{sameDrinksPrice}"
			courseTotals.push(sameDrinksPrice)
		
		elsif == "some" || "Some" 
			
			puts "Alright how many were the same price?: "
			samePriceD = gets.chomp
			samePriceD.to_i
			
			case samePriceD
				when 2 
					puts "What were those two priced at?"
					sameDPriceTwo = gets.chomp
					sameDPriceTwo.to_f
					sameDPriceTwo *= 2
					courseTotals.push(sameDPriceTwo)
				when 3
					puts "What was the price of those three?"
					sameDPriceThree = gets.chomp
					sameDPriceThree.to_f
					sameDPriceThree *= 3
					courseTotals.push(sameDPriceThree)
				when 4
					puts "What were those four priced at?"
					sameDPriceFour = gets.chomp
					sameDPriceFour.to_f
					sameDPriceFour *= 4
					courseTotals.push(sameDPriceFour)
				when 5
				
			end
		
		elsif sameDrinks.downcase.match(/\An/) || sameDrinks.upcase.match(/\AN/)
			
		 case drinksNum
			when 1
				puts "How much was it? "
				drinkOne = gets.chomp
				drinkOne.to_f
				courseTotals.push(drinkOne)
			when 2
				puts "How much was the first? "
				drink2First = gets.chomp
				puts "And the second? "
				drink2Second = gets.chomp
				drinks2Both = drink2First.to_f + drink2Second.to_f
				puts "Here the total for the two: $#{drinks2Both}"
				courseTotals.push(drinks2Both)
			when 3
				
			end
		
		else
			
			redo
		
		end
	
	
	elsif drinksNum == nil
 		puts "So we didn't get any drink? (Y/n)"
		noDrinks = gets.chomp
		if noDrinks.downcase.match(/\Ay/)
			noDrinksAtAll = 0
			courseTotals.push(noDrinksAtAll)
		elsif noDrinks.downcase.match(/\An/)
			puts "Oh were they free? (Y/n)"
			freeDrinksQ = gets.chomp
			if freeDrinksQ.downcase.match(/\Ay/)
				puts "Alright, cool!"
				noDrinksFree = 0
				courseTotals.push(noDrinksFree)
			elsif freeDrinksQ.downcase.match(/\An/)
				puts "Ah, we must've made a mistake"
				retry drinksNum if freeDrinksQ.downcase.match(/\An/)
			else
				redo
			end
		
		else
			redo
		end
 	
	
	else
		redo
	end
	
elsif drinksOrder.downcase.match(/\An/)
	aintNoDrinks = 0
	aintNoDrinks.to_f
	courseTotals.push(aintNoDrinks)

else
	redo
end

puts "Did we all four get appetizers? (Y/n)"

optforAppetizers = gets.chomp

if optforAppetizers.downcase.match (/\Ay/) || optforAppetizers.upcase.match (/\AY/)
	puts "Did we all order seperate items?"


 		

 	

 