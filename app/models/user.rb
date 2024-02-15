class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # include Kaminari::PageScopeMethods

  def self.ransackable_attributes(auth_object = nil) 
    ['username']
  end  

  def self.ransackable_associations(auth_object = nil) 
    []
  end
end
