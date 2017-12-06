class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :general_stats
  has_many :exercise_sessions
  has_many :weight_sets, through: :exercise_sessions
  has_many :exercise_types
  has_many :exercise_programs
end
