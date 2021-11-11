require 'pg'

feature 'add bookmark' do
  scenario 'a user can add a bookmark via a form on ' do
    connection = PG.connect(dbname: 'bookmark_manager_test2')
    visit('/addbookmarks')
    fill_in('url', with: 'http://makersacademy.com')
    click_button ('Add')

    
   

end