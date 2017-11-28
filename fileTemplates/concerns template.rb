#/**
# * Created by ${USER} on ${DATE}.
# */
module ${Class_Name}able
  extend ActiveSupport::Concern
  included do
    has_many :${model}s, as: :${model}able
  end

  def ${model}s_by_user(id)
    ${model}s.where(user_id: id)
  end

  module ClassMethods
    def upvote(${model})
      Logger.info "${model} has been upvoted "
    end
  end
end