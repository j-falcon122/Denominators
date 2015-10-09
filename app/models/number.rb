class Number < ActiveRecord::Base
	def split_number(number)
		number.to_s.split(".")
	end
	
	def check_bills(bills)
		bill_count = 0
		bills_included = {}
		current_bills = [100, 50, 20, 10, 5, 1]
		current_bills.each do |each_amount|
			unless bills == 0
				bill_count = bills / each_amount 
				bills = bills % each_amount
				bills_included[each_amount] = bill_count
			end
		end
		bills_included
	end

	def check_cents(cents)
		coin_count = 0
		current_change = [25, 10, 5, 1]
		coins_included = {}
		current_change.each do |each_coin|
			unless cents == 0
				coin_count = cents / each_coin 
				cents = cents % each_coin
				coins_included[each_coin] = coin_count
			end		
		end
	coins_included
	end
end
