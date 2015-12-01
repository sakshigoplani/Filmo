desc "Import reviews."
  task :import_reviews => :environment do
    File.open("Dataset/user_review_1lakh.csv", "r").each do |line|
	rating,comment,created_at,updated_at,user_id,movie_id= line.strip.split(",")

      m = Review.new( :rating => rating, :comment => comment , :created_at => created_at , :updated_at => updated_at , :user_id => user_id , :movie_id => movie_id)
      m.save
    end
  end

#:id => id,
#id,
