require 'test_helper'

feature 'Editting a list' do
  scenario 'author edits a list with a title' do
    visit list_path(lists(:one))
    first('.list-edit').click
    fill_in 'Title', with: lists(:two).title
    click_on 'Save'

    page.text.must_include 'List was successfully updated'
  end
end
