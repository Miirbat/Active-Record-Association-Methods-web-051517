class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
    # return the number of songs in a genre
  end

  def artist_count
    self.artists.count
    # return the number of artists associated with the genre
  end

  def all_artist_names
    arr= []
    self.artists.each do |m|
      arr << m.name
    end
    arr
  end

# self.artists
# variable.each do |m|
#   m("name")
# end
# end
#
#
#     thing = self.artists
#     thing.each do |x|
#       arr << x.select(:name).distinct
#     end
#
#     select name from genres.artists
#
#
# Client.select(:name).distinct
# query = Client.select(:name).distinct
# # => Returns unique names
# query.distinct(false)
# # => Returns all names, even if there are duplicates
#
#     User.all.each do |user|
#   NewsMailer.weekly(user).deliver_now
#
#
#   Contact.all(:select => "DISTINCT name")


   # return an array of strings containing every musician's name

end
