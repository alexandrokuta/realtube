class Message < ApplicationRecord
  validates :content, presence:true,unless: -> { youtube.present? }
  belongs_to :user
  belongs_to :room
  #after_create_commit {MessageBroadcastJob.perform_later self}
end
