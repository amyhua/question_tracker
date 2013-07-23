require 'spec_helper'

feature 'Editing Questions' do
  before do
    Factory(:question, :name => "Name of a Question?")
    visit '/'

    click_link 'Name of a Question?'
    click_link 'Edit'
  end
  
  scenario "can edit a question" do
    fill_in 'Name', :with => 'What is your Name?'
    fill_in 'Description', :with => "Give your full name."
    click_button 'Update Question'
    page.should have_content("Question has been updated.")
  end
 
  scenario "can not edit a question to have no name" do
    fill_in 'Name', :with => ''
    fill_in 'Description', :with => "Give your full name."
    click_button 'Update Question'
    page.should have_content("Question has not been updated.")
    page.should have_content("Name can't be blank")
  end   
end
