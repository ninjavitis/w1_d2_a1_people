class Person < ApplicationRecord
  validates :first_name, :last_name, :age, :status, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
