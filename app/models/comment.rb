class Comment < ActiveRecord::Base
  belongs_to :board
  validates :content, presence: true
end
