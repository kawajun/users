require './spec_helper'

RSpec.describe User, type: :model do
  describe "User" do
    context "user.nameが生成されるテスト" do
      it "user.nameがtestuserである" do
        user_name = build(:user).name
        expect(user_name).to eq "testuser"
      end
    end
  end
end
