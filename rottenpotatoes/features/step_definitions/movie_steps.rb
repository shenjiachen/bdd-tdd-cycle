Given (/^the following movies exist:$/) do |movies_table|
    movies_table.hashes.each do |movie|
    Movie.create!(movie)
end
end

Then(/^the director of "(.*?)" should be "(.*?)"$/) do |movie, director_name|
   movie = Movie.find_by_title(movie)
   movie.director = director_name
end