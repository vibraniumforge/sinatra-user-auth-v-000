class User < ActiveRecord::Base
  validates_presence_of :name, :email, :password
  
  def change
    create_table :users do |user|
      user.string :name
      user.string :email
      user.string :password
    end
  end

end