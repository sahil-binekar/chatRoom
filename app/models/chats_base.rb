class ChatsBase < ApplicationRecord
    self.abstract_class = true
   
    connects_to database: { writing: :chats, reading: :chats_replica }
  end