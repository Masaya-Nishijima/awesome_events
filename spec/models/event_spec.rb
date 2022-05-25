require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "名前" do
    it "空文字列だとバリデーションエラー" do
      event = Event.new(
        name: ''
      )
      event.valid?
      expect(event.errors[:name]).to include "を入力してください"
    end
    
  end
  
end
