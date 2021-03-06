require 'spec_helper'

feature 'Creating Questions' do
  before do
    visit '/'
    click_link 'New Question'
  end
  
  scenario "can create a question" do
    fill_in 'Name', :with => 'TextMate 2'
    fill_in 'Description', :with => "A text-editor for OS X"
    click_button 'Create Question'
    page.should have_content('Question has been created.')
  
    question = Question.find_by_name("TextMate 2")
    page.current_url.should == question_url(question)
    title = "Question: TextMate 2"
    page.should have_content(title)
  end
  
  scenario "can not create a question without a name" do
    click_button 'Create Question'
    page.should have_content("Question has not been created.")
    page.should have_content("Name can't be blank")
  end
end
