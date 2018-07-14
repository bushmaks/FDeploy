class Project < ApplicationRecord
  has_many :todos, dependent: :destroy
  # Проверка на ошибки при создании или изменении проекта
  validates :title, presence: true,
                    length: { minimum: 1 }
end
