class CommentPolicy < ApplicationPolicy
  attr_reader :user, :comment

  def initialize(user, comment)
    @user = user
    @comment = comment
  end

  def create?
    true
  end

  def edit?
    user == comment.author 
  end

  def update?
    edit?
  end

  def detroy?
    edit?
  end

end
