# Feature: All users page
#   As a visitor
#   I want to visit a users page
#   So I can learn more about the users of website
feature 'All users page', :devise do

  # Scenario: Visit the all users page
  #   Given I am a visitor
  #   When I visit the home page
  #   Then I see "Users"
  scenario 'visit the all users page' do
    user = FactoryGirl.create(:user)
    signin(user.email, user.password)
    visit 'all_users'
    expect(page).to have_content 'Users'
  end

end
