desc "Import movies." 
  task :import_movies => :environment do
    File.open("Dataset/Movie_Dataset_25K.csv", "r").each do |line|
      title , poster_url , genres , year , imdb_rating , length, studio , price = line.strip.split(",")
      m = Movie.new(:title => title, :poster_url => poster_url, :genres => genres , :year => year , :imdb_rating => imdb_rating , :length => length , :studio => studio , :price => price)
      m.save
    end
  end
