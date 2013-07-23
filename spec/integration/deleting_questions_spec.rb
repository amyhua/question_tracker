require 'spec_helper'

feature 'Deleting Questions' do
  
  scenario 'Can delete existing question' do
    Factory(:question, :name => "Sample Question to be removed")
    visit '/'
    click_link 'Sample Question'
    click_link 'Delete'
    page.should have_content("Question has been deleted.")
    page.should_not have_content("Sample Question to be removed")    
  end
  
end
