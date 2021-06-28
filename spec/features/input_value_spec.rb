
require 'rails_helper'

feature 'Create a record then check queries of index' do

  scenario 'Submit an input then check if its on the latest created list' do

    visit root_path
    fill_in 'input_value[input_val]', with: 'asdfasfasdfsfsafsdgsgagsretawwefafsdfsfassfv'
    click_button 'commit'
    expect(page).to have_text 'gsretaw'
    click_on 'BACK TO MAIN'
    click_on 'SEE FEATURED INPUTS'
    expect(page).to have_text 'asdfasfasdfsfsafsdgsgagsretawwefafsdfsfassfv'
  
  end
end