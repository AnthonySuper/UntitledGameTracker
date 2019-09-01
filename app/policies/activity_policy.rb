# typed: true
class ActivityPolicy < ApplicationPolicy
  sig { returns(T.nilable(User)) }
  attr_reader :user
  sig { returns(T.nilable(Event)) }
  attr_reader :event

  sig { params(user: T.nilable(User), event: T.nilable(T.any(ActiveRecord::Relation, Event))).void }
  def initialize(user, event)
    @user = user
    @event = event
  end

  sig { returns(T::Boolean) }
  def index?
    true
  end
end