feature 'Adding bookmark' do 
    scenario 'The user can add a bookmark to Bookmark manager' do 
        visit('/bookmarks/new')
        fill_in('url', with: 'http//www.testbookmark.com')
        fill_in('title', with: 'Test Bookmark')
        click_button 'Submit'
        
    end 
end 