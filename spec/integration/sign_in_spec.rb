require 'rails_helper'
require 'capybara/rails'

feature "Sign in as a user" do
  scenario "with an email address only" do
    sign_in_as("person@example.com")
    expect(page).to have_css(".welcome", text: "Welcome, person@example.com")
  end
end
