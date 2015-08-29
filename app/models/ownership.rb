class Ownership < ActiveRecord::Base
  belongs_to :user, class_name: "User"
  belongs_to :item, class_name: "Item"
  
  has_many :wants, class_name: "Want", foreign_key: "user_id", dependent: :destroy
  has_many :want_items , through: :wants, source: :item
  
  has_many :haves, class_name: "Have", foreign_key: "user_id", dependent: :destroy
  has_many :have_items , through: :haves, source: :item
  
  # has_many :users, class_name: "Want", foreign_key: "user_id", dependent: :destroy
  # has_many :want_users , through: :wants, source: :item
  
  # has_many :users, class_name: "Have", foreign_key: "user_id", dependent: :destroy
  # has_many :have_users , through: :haves, source: :item
  
end
