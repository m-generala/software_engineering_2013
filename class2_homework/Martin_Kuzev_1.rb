require 'csv'
require 'date'
 
 begin_date = Date.parse(ARGV[0])
 end_date = Date.parse(ARGV[1])
 
 income = 0.00
 outcome = 0.00
 
 
 CSV.foreach("bank.csv") do |row|
	select_date = Date.parse(row[0])
	if select_date >= first_date && file_date <= second_date
	income = income + row[1].to_f
	outcome = outcome + row[2].to_f
	end
end

balance = income - outcome

printf "%.2f,%.2f,%.2f", incomes, outcome, balance
