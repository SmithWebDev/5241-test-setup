require "rails_helper"

RSpec.feature "Listing Blog Entries" do
  before do
    @blog1 = Blog.create(title: "This is the first", body: "Heres the body of the blog")
    @blog2 = Blog.create(title: "This is next", body: "Heres the body of the blog")

  end

  scenario "A user lists all blog entries" do
    visit '/'

    expect(page).to have_content(@blog1.title)
    expect(page).to have_content(@blog1.body)
    expect(page).to have_content(@blog2.title)
    expect(page).to have_content(@blog2.body)

    expect(page).to have_link(@blog1.title)
    expect(page).to have_link(@blog2.title)

  end

  scenario "A user has no blog entries" do
    Blog.delete_all

    visit '/'

    expect(page).not_to have_content(@blog1.title)
    expect(page).not_to have_content(@blog1.body)
    expect(page).not_to have_content(@blog2.title)
    expect(page).not_to have_content(@blog2.body)
    expect(page).not_to have_link(@blog1.title)
    expect(page).not_to have_link(@blog2.title)

    within("h1#no-blog_entries") do
      expect(page).to have_content("No Blog Entries Created")
    end


  end
end