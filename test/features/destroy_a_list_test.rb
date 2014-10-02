require 'test_helper'

feature 'Destroying a list' do
  scenario 'destroy a list' do
    visit list_path(lists(:one))
    click_on 'Destroy'

    page.text.wont_include lists(:one).title
  end
end
