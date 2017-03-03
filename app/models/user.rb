class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum role: {cityzen: 0, council: 1}
  before_create :set_default_role
  has_many :issues, foreign_key: "creator_id", class_name: "Issue"

  private
  def set_default_role
    self.role ||= :cityzen
  end
end
