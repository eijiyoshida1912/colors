class Answer < ApplicationRecord
  1.upto(103) do |i|
    validates "q#{i}".to_sym, presence: true
  end
  validates :name, presence: true
  validates :sex, presence: true
  validates :age, presence: true
  validates :job, presence: true
end
