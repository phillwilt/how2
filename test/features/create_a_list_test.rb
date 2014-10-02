require 'test_helper'

feature 'Creating a list' do
  scenario 'author creates a list with a title' do
    visit lists_path
    click_on 'New List'
    fill_in 'Title', with: lists(:one).title
    click_on 'Save'

    page.text.must_include 'List was successfully created'
  end
end
