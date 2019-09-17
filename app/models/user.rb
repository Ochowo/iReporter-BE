# frozen_string_literal: true

class User < ApplicationRecord
  after_initialize :init

  def init
    self.isAdmin = false unless isAdmin
  end

  # validations
  validates_presence_of :firstname, :lastname, :email, :password_digest
  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password_digest, length: { minimum: 6 }
  # encrypt password
  has_secure_password

  # Model associations
  has_many :incidents, foreign_key: :created_by
end
