require "rails_helper"

RSpec.describe "Blog Entries", type: :request do

  before do
    @blog = Blog.create()
  end

  describe 'GET /articles/:id' do
    context "with existing blog" do
      before { get "/blogs/#{@blog.id}"}

      it "handles existing blogs" do
        expect(response.status).to eq(200)
      end
    end

    context "with non existing blog entry" do
      before { get "/blogs/xxxx" }

      it "handles non-existing blog entries" do
        expect(response.status).to eq 302
        flash_message = "The blog you are looking for could not be found"
        expect( flash[:alert] ).to eq flash_message
      end
    end
  end
end