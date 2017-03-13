class Micropost < ActiveRecord::Base
  attr_accessible :content
  belongs_to :user

  validate :content, presence: true, length: { maximum: 140 }
  validate :user_id, presence: true

  default_scope order: 'microposts.created_at DESC'
end
