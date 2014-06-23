require 'bundler'
require 'neography'
query = 'MATCH a-[:SELLS_TO]->b return a.name,b.name'
neography = Neography::Rest.new()
neography.execute_query(query)['data'].each do |first, second|
  puts "#{first} sells to #{second}"
end
