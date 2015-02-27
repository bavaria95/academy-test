feature 'All cities page', :devise do
  scenario 'visit the all cities page' do
    user = FactoryGirl.create(:user)
    signin(user.email, user.password)
    visit 'cities'
    expect(page).to have_content 'Cities'
  end

end
