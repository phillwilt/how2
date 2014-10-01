require 'test_helper'

feature 'Editting a step' do
  scenario 'Edit a step' do
    visit list_path(lists(:one))
    first('.step-edit').click
    fill_in 'Step', with: steps(:two).body
    click_on 'Update Step'
    page.text.must_include steps(:two).body
  end
end
