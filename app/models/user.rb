# frozen_string_literal: true

# After a user is created, if they have an invite code, find the invite with that code and mark it as
# confirmed.
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :autoconfirm_invited_user

  private

  def autoconfirm_invited_user
    return unless invite_code.present?

    invite = Invite.find_by(code: invite_code)
    return unless invite.present?

    self.confirmed_at = Time.now

    save
  end
end
