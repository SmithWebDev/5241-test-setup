require "rails_helper"

RSpec.feature "Editing an Blog Entry" do

  before do
    @blog = Blog.create(title:"Blog 1", body: "Body of the Blog")
  end

  scenario "A user updates an entry" do
    visit '/'
    click_link @blog.title
    click_link "Edit Blog Entry"

    fill_in "Title", with: "Updated Title"
    fill_in "Body", with: "Update Body of Blog"
    click_button "Update Blog Entry"

    expect(page).to have_content("Blog Entry has been updated")
    expect(current_path).to eq(blog_path(@blog))
  end

  scenario "A user fails to update an entry" do
    visit '/'
    click_link @blog.title
    click_link "Edit Blog Entry"

    fill_in "Title", with: ""
    fill_in "Body", with: ""
    click_button "Update Blog Entry"

    expect(page).to have_content("Blog Entry has not been updated")
    expect(current_path).to eq(blog_path(@blog))


  end
end