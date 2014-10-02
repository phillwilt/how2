require 'test_helper'

feature 'Show a step' do
  scenario 'Show a step' do
    visit list_step_path(lists(:one), steps(:one))
    page.text.must_include steps(:one).body
  end
end
