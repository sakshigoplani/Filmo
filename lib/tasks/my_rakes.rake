desc "Import movies." 
  task :import_movies => :environment do
    File.open("/home/salil/Public/Filmo/Dataset/Movie_Dataset.csv", "r").each do |line|
      title , poster_url , genres , year , imdb_rating , length , worlwide_gross , studio , price = line.strip.split(",")
      m = Movie.new(:title => title, :poster_url => poster_url, :genres => genres , :year => year , :imdb_rating => imdb_rating , :length => length , :worldwide_gross => worldwide_gross , :studio => studio , :price => price)
      m.save
    end
  end
