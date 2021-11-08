feature 'index page' do
	scenario 'it displays the index page' do
		visit('/')
		expect(page).to have_content 'Bookmark Manager'
	end
end