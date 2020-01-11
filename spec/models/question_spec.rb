require 'rails_helper'

RSpec.describe Question, type: :model do
  context 'associations' do
    it { expect(Question.ancestors).to include(Commentable) }
    it { expect(subject).to have_many(:answers) }
  end

  context 'validations' do
    it { is_expected.to validate_uniqueness_of :title }
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :description }
  end
end
