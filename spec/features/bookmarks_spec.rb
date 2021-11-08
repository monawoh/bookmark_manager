feature 'bookmark page' do
    scenario 'click link to display bookmarks' do
        visit('/bookmark')
        expect(page).to have_content "https://makers.tech/"
        expect(page).to have_content "https://github.com/makersacademy/skills-workshops/tree/main/object_oriented_programming/domain_model_diagramming"
        expect(page).to have_content "https://github.com/makersacademy/course/blob/main/bookmark_manager/03_viewing_bookmarks.md"
    end 
end
