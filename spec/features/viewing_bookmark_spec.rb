require 'pg'
feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
    visit ('/bookmarks')
    
    expect(page).to have_content "http://www.makersacademy.com"
  
  end

  scenario 'Visiting /bookmarks shows me all the bookmarks' do 
    

  
  Bookmark.create(url: "http://www.makersacademy.com")
  Bookmark.create(url: "http://www.destroyallsoftware.com")
  Bookmark.create(url: "http://www.google.com")

  visit('/bookmarks')
  end
end