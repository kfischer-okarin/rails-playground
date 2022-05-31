class User < ApplicationRecord
  belongs_to :group, optional: true
  has_many :work_times, dependent: :destroy
end
