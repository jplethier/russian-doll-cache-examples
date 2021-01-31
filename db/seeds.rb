require 'csv'

genre_names = ["Fantasy", "Suspense", "Horror", "Drama", "Documentary"]
genres = genre_names.map do |name|
  Genre.find_or_create_by(name: name)
end

countries = ["Brazil", "France", "USA", "Italy", "Australia", "Russia", "Japan", "Argentina", "Mexico", "Canada", "Portugal", "Spain", "Germany", "China"]

books = CSV.read(Rails.root.join("public", "books.csv"))

books.each do |attrs|
  next if attrs.first == "bookID"
  next if Book.where(title: attrs.second).exists?

  puts "Adding book with attrs: #{attrs.inspect}"
  author_name = attrs.third.split("/").first

  author = Author.find_or_create_by(name: author_name) do |a|
    (rand(3) + 1).times do |i|
      Contact.create(contact_type: i, contact_value: "#{a.id}-#{rand(1000)}")
    end

    Address.create(country: countries[rand(countries.size)])
  end

  publisher = Publisher.find_or_create_by(name: attrs.last)
  genre = genres.sample

  Book.create!(author: author, publisher: publisher, genre: genre,
               title: attrs.first, publication_date: attrs[10],
               rating: attrs.fourth, num_pages: attrs[7],
               image_url: "https://smartmobilestudio.com/wp-content/uploads/2012/06/leather-book-preview.png")
end

