require 'rails_helper'

describe 'the post creation process' do
  it 'creates a new post' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit '/posts/new'
    fill_in 'Title', with: 'Goldendoodle Puppy'
    attach_file('doodle', File.absolute_path('doodle'))
    fill_in 'Caption', with: "It's a puppy, genius!"
    click_on 'Create Post'
    expect(page).to have_content 'Goldendoodle Puppy'
  end
end
