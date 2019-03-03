require 'json'
require 'stringio'

# Complete the sockMerchant function below.
def sockMerchant(n, ar)
    return unless n.between?(1, 100)

    hash = Hash.new(0)
    pairs = 0

    ar.each do |v|
    	hash[v] += 1
    end

    hash.each do |k, v|
    	# if v.odd?
    	# 	pairs += ((v - 1) / 2)
    	# else
    	# 	pairs += (v / 2)
    	# end
    	pairs += (v / 2)
    end
    pairs
end

# fptr = File.open(ENV['OUTPUT_PATH'], 'w')

# n = gets.to_i
n = 9

# ar = gets.rstrip.split(' ').map(&:to_i)
ar = "10 20 20 10 10 30 50 10".split(' ').map(&:to_i)

result = sockMerchant n, ar

puts result

# fptr.write result
# fptr.write "\n"

# fptr.close()
