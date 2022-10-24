class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    validates :password_digest, presence: { message: 'Password cant be blank'}
    validates :password, length: { minimum: 6, allow_nil: true }
    before_validation :ensure_session_token
end
