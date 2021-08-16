# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


class Seed

  def self.begin
    seed = Seed.new
    seed.generate_quotes
  end

  def generate_quotes
    20.times do |i|
      quote = Quote.create!(
        author: Faker::Book.author,
        content: Faker::Movie.quote
      )
      puts "Quote #{i}: Author is #{quote.author} and quotation is '#{quote.content}'."
    end
  end
end

Seed.begin