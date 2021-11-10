require './lib/bookmark.rb'
require 'pg'

describe Bookmark do 
    it 'returns the list of all bookmarks' do 
        connection = PG.connect(dbname: 'bookmark_manager')
        bookmarks = Bookmark.all 
        expect(bookmarks).to include 'https://makers.tech/'
        # expect(bookmarks).to include 'http://www.destroyallsoftware.com'
        # expect(bookmarks).to include 'http://www.google.com/'
        # expect(bookmarks).to include 'http://www.ba.co.uk'
    end 
end
