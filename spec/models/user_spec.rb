require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#create' do
    before do
      @user = FactoryBot.build(:user)
    end

    it "nickname, user_name, email, password, password_confirmationが存在すれば登録できる" do
      expect(@user).to be_valid
    end
    
    it "nicknameが空では登録できないこと" do
      @user.nickname = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("ニックネーム が入力されていません。")
    end

    it "nicknameが全角以外で入力された場合登録できないこと" do
      @user.nickname = "test"
      @user.valid?
      expect(@user.errors.full_messages).to include("ニックネーム を正しく入力して下さい。")
    end

    it "user_nameが空では登録できないこと" do
      @user.user_name = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("ユーザーネーム が入力されていません。")
    end

    it "重複したuser_nameが存在する場合登録できないこと" do
      @user.save
      another_user = FactoryBot.build(:user, user_name: @user.user_name)
      another_user.valid?
      expect(another_user.errors.full_messages).to include("ユーザーネーム は既に使用されています。")
    end

    it "introducitonが空でも登録できること" do
      @user.introduction = ""
      expect(@user).to be_valid
    end

    it "prefecture_idが空でも登録できること" do
      @user.prefecture_id = ""
      expect(@user).to be_valid
    end

    it "birthdayが空でも登録できること" do
      @user.birthday = ""
      expect(@user).to be_valid
    end

    it "emailが空では登録できないこと" do
      @user.email = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("メールアドレス が入力されていません。")
    end

    it "重複したemailが存在する場合登録できないこと" do
      @user.save
      another_user = FactoryBot.build(:user, email: @user.email)
      another_user.valid?
      expect(another_user.errors.full_messages).to include("メールアドレス は既に使用されています。")
    end
    
    it "emailに@が含まれていないと登録できないこと" do
      @user.email = "test"
      @user.valid?
      expect(@user.errors.full_messages).to include("メールアドレス を正しく入力して下さい。")
    end
    
    it "passwordが空では登録できないこと" do
      @user.password = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("パスワード が入力されていません。")
    end
    
    it "passwordが5文字以下では登録できないこと" do
      @user.password = "12345"
      @user.valid?
      expect(@user.errors.full_messages).to include("パスワード は6文字以上で入力して下さい。")
    end
    
    it "passwordが存在してもpassword_confirmationが空では登録できないこと" do
      @user.password_confirmation = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("確認用パスワード が内容とあっていません。")
    end
    
    it "passwordとpassword_confirmationが一致していないと登録できないこと" do
      @user.password = "123456"
      @user.password_confirmation = "234567"
      @user.valid?
      expect(@user.errors.full_messages).to include("確認用パスワード が内容とあっていません。")
    end
  end
end