require './lib/bookmark.rb'
require 'pg'

# describe Bookmark do 
#     it 'returns the list of all bookmarks' do 
#         connection = PG.connect(dbname: 'bookmark_manager_test2')
#         bookmarks = Bookmark.all 
#         expect(bookmarks).to include "http://www.makersacademy.com"
#         # expect(bookmarks).to include 'http://www.destroyallsoftware.com'
#         # expect(bookmarks).to include 'http://www.google.com/'
#         # expect(bookmarks).to include 'http://www.ba.co.uk'
#     end 
# end

describe '.all' do
    it 'returns a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test2')
  
      # Add the test data
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")
  
      bookmarks = Bookmark.all
  
      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
      expect(bookmarks).to include('http://www.google.com')
    end
end
