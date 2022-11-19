# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { described_class.new(provider: 'github', uid: 'oski', first_name: 'Oski', last_name: 'Bear') }

  it 'computes a name' do
    expect(user.name).to eq 'Oski Bear'
  end
end
