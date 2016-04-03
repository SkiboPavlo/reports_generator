class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.reporter?
      can :generate_report, Template
    else
      can :manage, :all
    end
  end
end
