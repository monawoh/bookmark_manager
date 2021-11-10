# feature 'bookmark page' do
#     scenario 'click link to display bookmarks' do
#         connection = PG.connect(dbname: 'bookmark_manager')
#         visit('/bookmark')
#         expect(page).to have_content "https://makers.tech/"
#         # expect(page).to have_content "https://github.com/makersacademy/skills-workshops/tree/main/object_oriented_programming/domain_model_diagramming"
#         # expect(page).to have_content "https://github.com/makersacademy/course/blob/main/bookmark_manager/03_viewing_bookmarks.md"
#     end 
# end

require 'pg'

feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test2')

    # Add the test data
    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")

    visit('/bookmark')

    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end
end
