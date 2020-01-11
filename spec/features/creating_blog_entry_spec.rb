require "rails_helper"

RSpec.feature "Creating Blog Entry" do
  scenario "A user creates a new blog entry" do
    visit "/"

    click_link "New Blog Entry"

    fill_in "Title", with: "Creating A Blog"
    fill_in "Body", with: "Lorem Ipsum"

    click_button "Create Blog"

    expect(page).to have_content("Blog Entry has been created")
    expect(page.current_path).to eq(blogs_path)
  end

  scenario "A user fails to create a new article" do
    visit "/"

    click_link "New Blog Entry"

    fill_in "Title", with: ""
    fill_in "Body", with: ""

    click_button "Create Blog"

    expect(page).to have_content("Blog entry has not been created")
    expect(page).to have_content("Title can't be blank")
    expect(page).to have_content("Body can't be blank")
  end
end