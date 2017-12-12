class Seed

  def self.begin
    seed = Seed.new
    seed.generate_destinations
    seed.generate_reviews
  end

  def generate_destinations
    10.times do |i|
      destination = Destination.create!(
        city: Faker::Space.galaxy
      )
      puts "Destination is: #{destination.city}."
    end
  end

  def generate_reviews
    20.times do |i|
      review = Review.create!(
        content_body: Faker::Hipster.sentence(3),
        rating: Faker::Number.between(1,5),
        author: Faker::HarryPotter.character,
        destination_id: Faker::Number.between(1, 10)
      )
      puts "Review #{i}: #{review.content_body}, #{review.rating}, #{review.author}."
    end
  end

end


Seed.begin
