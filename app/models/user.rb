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

  after_save :create_default_exercise_types_and_programs!

  def create_default_exercise_types_and_programs!
    create_default_exercise_types!
    create_default_exercise_programs!
  end

  private

  def create_default_exercise_types!
    exercise_types = [
      {'name' => 'bench', 'description' => 'compound chest exercise'},
      {'name' => 'low squat', 'description' => 'compound leg exercise with focus on quadriceps'},
      {'name' => 'overhead', 'description' => 'compound shoulder exercise'},
      {'name' => 'deadlift', 'description' => 'sheer strength exercise'}
    ]

    exercise_types.each do |type|
      type[:user_id] = id
      ExerciseType.find_or_create_by(type)
    end
  end

  def create_default_exercise_programs!
    exercise_programs = [
      {'name' => 'initialFourSet', 'description' => 'variable weights, focus on first set as hardest'},
      {'name' => 'Wendler1', 'description' => '5/5/5, lightest weight'},
      {'name' => 'Wendler2', 'description' => '3/3/3, medium weight'},
      {'name' => 'Wendler3', 'description' => '5/3/1, heaviest weight'},
      {'name' => 'Wendler4', 'description' => 'Rest phase of cycle'}
    ]
    exercise_programs.each do |type|
      type[:user_id] = id
      ExerciseProgram.find_or_create_by(type)
    end
  end
end
