RSpec.describe 'POST /api/articles/:article_id/comments', type: :request do
  let!(:existing_article) { create(:article)}

  describe 'successfully create a comment' do
    before do
      post "/api/articles/#{existing_article.id}/comments",
      params: {
        comment: {
          body: "A comment",
          article_id: existing_article.id,
        }
      }
    end
    
    it 'is expected to return a 201 status' do
      expect(response).to have_http_status 201
   end
  end
end