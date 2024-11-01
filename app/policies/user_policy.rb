class UserPolicy 
  attr_reader :current_user, :user

  def initialize(current_user, user)
    @current_user = current_user
    @user = user
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    user == current_user
  end

  def edit?
    update?
  end

  def destroy?
    update?
  end

  def feed?
    true
  end
  
  def show.photo?
    user == current_user ||
     !user.private? || 
     user.followers.include?(current_user)
  end
end
