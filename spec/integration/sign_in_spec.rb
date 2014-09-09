require 'rails_helper'
require 'capybara/rails'

feature "Sign in as a user" do
  scenario "with an email address only" do
    visit root_path
    fill_in "Email", with: "person@example.com"
    click_button "Sign In"

    expect(page).to have_css(".welcome", text: "Welcome, person@example.com")
  end
end
