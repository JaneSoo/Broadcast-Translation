class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  ROLES = ['Super', 'Admin']

  ROLES.each do |role_name|
   scope role_name.downcase, -> { where(role: role_name) }
   define_method "#{role_name.downcase.parameterize.underscore}?" do
     role == role_name
   end
  end

end
