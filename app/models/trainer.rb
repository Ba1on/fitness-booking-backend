class Trainer < User
  has_many :cources, dependent: :destroy
end
