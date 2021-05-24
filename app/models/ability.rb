# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.has_role?(:admin)
      can :manage, :all
    elsif user.has_role?(:employee_marketing)
      can :manage, Product
    else
      can :read, :all
    end
  end
end
