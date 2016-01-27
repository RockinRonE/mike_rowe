require "rails_helper"
require 'capybara/rspec'
require 'capybara/dsl'

feature "Signing in" do
  background do
    Teacher.create(:email => 'user@example.com', :password => 'caplin')
  end

  scenario "Signing in with correct credentials" do
    visit '/'
      within("#login") do
        fill_in 'Email', :with => 'user@example.com'
        fill_in 'Password', :with => 'caplin'
      end
    click_button 'Log In'
    expect(page).to have_content 'Log out'
    # expect(page.current_path).to eq '/teachers/1'
  end

  scenario "Be able to visit students page" do
    visit '/'
    click_link 'Students'
    expect(page).to have_content 'Check out all these Students!'
  end
end

