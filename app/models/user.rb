class User < ApplicationRecord
    after_initialize :init

    def init
        self.isAdmin = false unless self.isAdmin 
    end

    # validations
  validates_presence_of :firstname, :lastname, :email, :isAdmin, :password
end
