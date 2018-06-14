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
  validates :title, presence: true
  validates :content, presence: true

end
