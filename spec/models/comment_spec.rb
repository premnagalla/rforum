require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'associations' do
    it { expect(Comment.ancestors).to include(Commentable) }
    it { expect(subject).to belong_to(:commentable) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of :comment }
    it { is_expected.to validate_presence_of :commentable_type }
    it { is_expected.to validate_inclusion_of(:commentable_type).in_array(%w(Question Answer Comment)) }
  end
end
