json.array! @notifications do |notification|
  #  json.recipient notification.recipient
    json.id notification.id
    json.actor notification.actor
    json.action notification.action
    json.notifiable do 
      json.type "an #{notification.notifiable.class.to_s.underscore.humanize.downcase}"
    end
    # notification.notifiable
    json.url solicitation_path(notification.notifiable.solicitation, anchor: dom_id(notification.notifiable))
  end
  
  