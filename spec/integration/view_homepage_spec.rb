require 'rails_helper.rb'
require 'capybara/rails'

feature "View the homepage" do
  scenario "user sees relevant information" do
    visit root_path
    expect(page).to have_content 'Todos'
    expect(page).to have_css '[data-role="description"]'
  end
end
