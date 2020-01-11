require 'rails_helper'

RSpec.describe "Answers", type: :request do
  describe "GET /answers" do
    it "works! (now write some real specs)" do
      get answers_path, xhr: true
      expect(response).to have_http_status(204)
    end
  end
end
