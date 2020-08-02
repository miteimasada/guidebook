require 'rails_helper'

RSpec.describe User do
  it 'ユーザーネームが空白であればエラーが出る' do
    user = User.new(name: '')
    expect(user).not_to be_valid
  end
end
