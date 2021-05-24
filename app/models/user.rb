class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true

  attr_accessor :type_role

  def admin?
    has_role?(:admin)
  end

  def employee_marketing?
    has_role?(:employee_marketing)
  end
end
