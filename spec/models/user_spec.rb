require 'rails_helper'

describe User do

  describe 'nickname' do
    context 'nicknameが6文字以上の場合' do
      let(:user) {User.new(nickname: 'a' * 7)}
      it 'nicknameが6文字以上なので登録できない' do
        user.valid?
        expect(user.errors[:nickname]).to include("is too long (maximum is 6 characters)")
      end
    end
  end

  describe 'nickname_nil' do
    context 'nicknameが空の場合' do
      let(:user) {User.new(nickname: nil)}
      it 'nicknameが空なので登録できない' do
        user.valid?
        expect(user.errors[:nickname]).to include("can't be blank")
      end
    end
  end

  describe 'email_nil' do
    context 'emailが空の場合' do
      let(:user) {User.new(email: nil)}
      it 'emailが空なので登録できない' do
        user.valid?
        expect(user.errors[:email]).to include("can't be blank")
      end
    end
  end

  describe 'email_overlap' do
    context 'emailが既に登録されていた場合' do
      let(:user) {User.new(email: "hoge@hoge.com")}
      it '重複しているので登録できない'
        user.valid?
        expect(user.errors[:email]).to include("has already been taken")
      end
    end
  end



end
