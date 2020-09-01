class Notification < ApplicationRecord
  belongs_to :recipient, class_name: "User"
  belongs_to :actor, class_name: "User"
  belongs_to :notifiable, polymorphic: true
  after_create :broadcast_notification

  scope :unread, -> { where(read: false)}

  def broadcast_notification
   NotificationChannel.broadcast_to(recipient, ApplicationController.new.render_to_string(partial: 'notifications/notif', locals: {notification: self }) )
  end
end
