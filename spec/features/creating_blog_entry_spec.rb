require "rails_helper"

RSpec.feature "Creating Blog Entry" do
  scenario "A user creates a new blog entry" do
    visit "/"

    click_link "New Blog Entry"

    fill_in "Title", with: "Creating A Blog"
    fill_in "Body", with: "Lorem Ipsum"

    click_button "Create Entry"

    expect(page).to have_content("Blog Entry has been created")
    expect(page.current_path).to eq(blogs_path)
  end
end