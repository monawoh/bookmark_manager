require './lib/bookmark.rb'
require 'pg'

describe Bookmark do 
    it 'returns the list of all bookmarks' do
        expect(Bookmark.all).to include 'https://makers.tech/'
    end 
end
