# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :text
#  content    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :votes
  validates :title, presence: true
  validates :content, presence: true
  validates :content, length: { minimum: 250 }

  def voted_by?(user)
    votes.exists?(user: user)
  end

end
