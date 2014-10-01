require 'test_helper'

feature 'Creating a step' do
  scenario 'Create a step' do
    visit list_path(lists(:one))
    click_on 'New Step'
    fill_in 'Step', with: steps(:two).body
    click_on 'Create Step'
    page.text.must_include steps(:two).body
  end
end
