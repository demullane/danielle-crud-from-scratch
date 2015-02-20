require 'rails_helper'

describe 'Status update can be added and liked' do

  before :each do
    StatusUpdate.create(status: "This is my status!", user: "Joe Student", number_of_likes: 0)
    visit '/'
  end

  scenario 'Status update is created' do

    click_on "New Status Update"

    fill_in "Status", with: "This is my other status!"
    fill_in "User Name", with: "Bob Smith"

    click_on "Create Status update"

    expect(page).to have_content("Status update was successfully submitted.")
    expect(page).to have_content("Status: This is my other status!")
    expect(page).to have_content("User Name: Bob Smith")
    expect(page).to have_content("Number of Likes: 0")

  end

  scenario 'Status update is edited' do

    click_on "Edit"

    fill_in "Status", with: "This is my updated status!"

    click_on "Update Status update"

    expect(page).to have_content("Status update was successfully updated.")
    expect(page).to have_content("This is my updated status!")

  end

  scenario 'Status update is not created when fields are blank' do

    click_on "New Status Update"

    click_on "Create Status update"

    expect(page).to have_content("2 errors prohibited this task from being saved")
    expect(page).to have_content("Status can't be blank")
    expect(page).to have_content("User can't be blank")
  end

  scenario 'Status update is deleted' do

    click_on "Delete"

    expect(page).to have_content("Status update was successfully deleted.")
    expect(page).to_not have_content("This is my status!")

  end

  scenario 'Status update is liked' do

    click_on "Like"

    expect(page).to have_content("1")

  end

end
