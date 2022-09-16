# location: spec/feature/integration_spec.rb
require 'rails_helper'


RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'Harry Potter'
    fill_in 'Author', with: 'J.K. Rowling'
    fill_in 'Price', with: '1.00'
    click_on 'Create Book'
    visit books_path(@book)
    click_on 'Show'
    expect(page).to have_content('Harry Potter')
    expect(page).to have_content('J.K. Rowling')
    expect(page).to have_content('1.0')
  end
end