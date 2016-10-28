class PostPolicy < ApplicationPolicy
  def create?
  	user.has_role? :admin or user.has_role? :newuser
end
def update?
  	user.has_role? :admin or record.user_id == user.id
end
def destroy?
  	user.has_role? :admin or record.user_id == user.id
end


  class Scope < Scope
    def resolve
      scope
    end
  end
end
