require 'rails_helper'

RSpec.describe User, type: :model do
  describe "トレイト:太郎(匿名)" do
    it "名前が匿名184になっている" do
      user = FactoryBot.build(:user, :taro)
      user.valid?
      expect(user.name).to eq "匿名184"
    end
    
    it "画像が太郎になっている" do
      user = FactoryBot.build(:user, :taro)
      user.valid?
      expect(user.image_url).to eq "http://example.com/image_taro.jpg"
    end
  end
end
