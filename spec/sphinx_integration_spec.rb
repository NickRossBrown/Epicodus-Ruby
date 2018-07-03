require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the riddle path', {:type => :feature}) do
  it('processes the user entry and returns whether riddle is answered correctly') do
    visit('/')
    fill_in('answer_one', :with => 'gravity')
    fill_in('answer_two', :with => 'time')
    fill_in('answer_three', :with => 'teeth')
    click_button('Submit')
    expect(page).to have_content('You pass!')
  end
end
