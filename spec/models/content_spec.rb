require 'rails_helper'

RSpec.describe Content, type: :model do
  describe '#create' do
    before do
      @content = FactoryBot.build(:content)
    end

    it "全ての項目が存在すれば登録できること" do
      expect(@content).to be_valid
    end

    it "grade_idが1では登録できないこと" do
      @content.grade_id = 1
      @content.valid?
      expect(@content.errors.full_messages).to include("学　年を選択してください")
    end

    it "subject_idが1では登録できないこと" do
      @content.subject_id = 1
      @content.valid?
      expect(@content.errors.full_messages).to include("教　科を選択してください")
    end

    it "categoryが空では登録できないこと" do
      @content.category = ""
      @content.valid?
      expect(@content.errors.full_messages).to include("カテゴリーを入力してください")
    end

    it "questionが空では登録できないこと" do
      @content.question = ""
      @content.valid?
      expect(@content.errors.full_messages).to include("問　題を入力してください")
    end

    it "answerが空では登録できないこと" do
      @content.answer = ""
      @content.valid?
      expect(@content.errors.full_messages).to include("答　えを入力してください")
    end

    it "explanationが空でも登録できること" do
      @content.explanation = ""
      expect(@content).to be_valid
    end

    it "release_idが1でも登録できること" do
      @content.release_id = 1
      expect(@content).to be_valid
    end

    it "userが紐づいていないと登録できないこと" do
      @content.user = nil
      @content.valid?
      expect(@content.errors.full_messages).to include("Userを入力してください")
    end

  end
end
