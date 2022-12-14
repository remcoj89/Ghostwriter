class Book < ApplicationRecord
  belongs_to :user

  has_many :shares, dependent: :destroy
  validates :title, :description, :initial_share_value, :total_amount, presence: true
  has_one_attached :photo

  acts_as_taggable_on :tags

  # def share_value
  #   :value / :total_amount
  # end
end
