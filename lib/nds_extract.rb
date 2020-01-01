$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  ret_hash = {}
  index = 0
  while nds[index] do
    sum = 0
    num_movies = 0
    while nds[index][:movies][num_movies] do
      sum += nds[index][:movies][num_movies][:worldwide_gross]
      num_movies += 1
    end
    ret_hash[nds[index][:name]] = sum
    index += 1
  end

  ret_hash
 end
