class Student < ApplicationRecord
  belongs_to :user

  validates :class, presence: true, :inclusion => { :in => [1,2,3,4] }
  validates :user_id, presence: true, uniqueness: true

  after_save :add_user

  def create_checkout(item)

  end

  def create_checkin(item)

  end

  private

  def add_user
    self.user = User.where(id: self.user_id).first
  end

end
