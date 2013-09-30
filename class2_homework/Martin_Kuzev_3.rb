require 'csv'

cash = 0.00
bestday=" "
CSV.foreach('bank.csv') do |line| 
	if bestday == line[0] 
		cash+=line[1].to_f
	else if cash < line[1].to_f
		cash = line[1].to_f
		bestday = line[0]
	end
	end
end

puts bestday
