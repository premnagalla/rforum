require 'rails_helper'

RSpec.describe Answer, type: :model do
  context 'associations' do
    it { expect(Answer.ancestors).to include(Commentable) }
    it { expect(subject).to belong_to(:question) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of :content }
    it { is_expected.to validate_presence_of :question_id }
  end
end
