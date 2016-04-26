class Registration < ActiveRecord::Base

  validates :name, :affiliation, presence: true

  validates :email, format: { with: /(\S+)@(\S+)/ }

  BELT_LEVEL_OPTIONS = [
    'White',
    'Blue',
    'Purple',
    'Brown',
    'Black'
  ]

  validates :belt_level,
            inclusion: { in:  BELT_LEVEL_OPTIONS }

  GENDER_OPTIONS = [
    'M',
    'F',
    'Other'
  ]

  validates :gender,
            inclusion: { in: GENDER_OPTIONS }

  validates :age, numericality: {only_integer: true, greater_than: 0}

  belongs_to :open_mat
end
