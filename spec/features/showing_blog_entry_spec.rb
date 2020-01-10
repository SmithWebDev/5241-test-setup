require "rails_helper"

RSpec.feature "Showing a blog entry" do
  before do
    @blog = Blog.create(title: "First Entry", body: "Body of the Blog")
  end

  scenario "A user shows a blog entry" do
    visit '/'
    click_link @blog.title

    expect(page).to have_content(@blog.title)
    expect(page).to have_content(@blog.body)
    expect(current_path).to eq(blog_path(@blog))
  end

end