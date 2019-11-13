class User < ApplicationRecord
    has_many :notes, dependent: :destroy
    has_many :projects, -> { order(created_at: :desc) }
    # has_secure_password

    validates_presence_of :username
    validates_uniqueness_of :username, :case_sensitive => false

end
