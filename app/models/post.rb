class Post < ApplicationRecord
  belongs_to :user, counter_cache: true
  # User.find_each { |u| User.reset_counters(u.id, :posts) }
  
  validates :title, presence: true
  
  def to_s
    title
  end
end
