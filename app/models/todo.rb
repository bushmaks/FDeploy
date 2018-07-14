class Todo < ApplicationRecord
  belongs_to :project
  # Проверка на ошибки при создании или изменении задачи
  validates :text, presence: true,
                    length: { minimum: 1 }
end
