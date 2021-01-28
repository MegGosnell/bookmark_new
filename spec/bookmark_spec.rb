require 'bookmark'

describe Bookmark do 
    
    describe './all' do 
        it 'returns all bookmarks' do 
        connection = PG.connect(dbname: 'bookmark_manager_test')

        connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
            bookmarks = Bookmarks.all
        expect(bookmarks).to include("http://www.makersacademy.com")
        end
    end
end