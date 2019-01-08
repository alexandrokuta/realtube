class Message < ApplicationRecord
  validates :content, presence:true,unless: -> { youtube.present? }
end
