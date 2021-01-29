require 'pg'
feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    
    visit ('/bookmarks')
    
    expect(page).to have_link('Makers Academy', href: 'http://www.makersacademy.com')
  
  end

  scenario 'Visiting /bookmarks shows me all the bookmarks' do 
  Bookmark.create(url: "http://www.makersacademy.com", title: 'Makers Academy')
  visit('/bookmarks')
  end
end