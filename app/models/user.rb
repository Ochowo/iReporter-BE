# frozen_string_literal: true

class User < ApplicationRecord
  after_initialize :init

  def init
    self.isAdmin = false unless isAdmin
  end

  # validations
  validates_presence_of :firstname, :lastname, :email, :password_digest
  validates :email, uniqueness: true

  # encrypt password
  has_secure_password
end
