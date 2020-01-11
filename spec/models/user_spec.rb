require 'rails_helper'

RSpec.describe User, type: :model do
  context 'associations' do
    it { expect(subject).to have_many(:questions) }
    it { expect(subject).to have_many(:answers) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of :first_name }
    it { is_expected.to validate_presence_of :email }
    it { is_expected.to validate_uniqueness_of :email }
  end
end
