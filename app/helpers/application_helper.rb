module ApplicationHelper
  
  def user_icon(user, size='square', width='auto')
    if !user.facebook_id.nil? then
      image_tag("//graph.facebook.com/#{user.facebook_id}/picture?type=#{size}", {
        :alt => user.name,
        :width => width,
        :class => 'user-photo'
      })
    end
  end
  
end
