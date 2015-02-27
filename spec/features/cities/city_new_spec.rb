include Warden::Test::Helpers
Warden.test_mode!

feature 'New city page', :devise do

  after(:each) do
    Warden.test_reset!
  end

  scenario 'user sees page to add new city' do
    user = FactoryGirl.create(:user)
    login_as(user, scope: :user)
    visit cities_path
    click_on('New City')
    expect(page).to have_content 'Name'
  end

end
