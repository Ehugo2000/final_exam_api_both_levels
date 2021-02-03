RSpec.describe 'POST /api/articles/:article_id/comments', type: :request do

  describe 'successfully create a comment' do
    before do
      post "api/articles/#{existing_post.id}/comments",
      params: {
        comment: {
          body: "A comment",
          post_id: existing_post.id,
        }
      }
    end
    
    it 'is expected to return a 201 status' do
      expect(response).to have_http_status 201
   end
  end
end