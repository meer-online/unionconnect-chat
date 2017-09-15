class User < ActiveRecord::Base

  has_many :chat_messages, :foreign_key => 'sender_id'
  has_many :chat_participants, :as => :chatable
  has_many :associated_person, :foreign_key => 'user_id'


  def fullname
    "#{self.first_name} #{self.last_name}"
  end
  

end
