class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :blog

  validates :content, presence: true, length: { min: 10, maximum: 750 }

  after_create_commit { CommentBroadcastJob.perform_later(self) }
end
