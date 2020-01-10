require "rails_helper"

RSpec.feature "Delete Blog Entry" do
  before do
    @blog = Blog.create(title: "Blog1", body: "Body of the bLog")
  end

  scenario "A user deletes a blog entry" do
    visit '/'
    click_link @blog.title
    click_link "Delete Entry"

    expect(page).to have_content("Blog Entry has been deleted")
    expect(current_path).to eq(blogs_path)

  end
end