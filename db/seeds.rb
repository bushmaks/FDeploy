# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Загружаем файл seeds/seed.yml и создаем на его основе проекты и задачи
seeds = ActiveSupport::HashWithIndifferentAccess.new(YAML::load_file('db/seeds/seeds.yml'))

for project in seeds[:projects] do

  pr = Project.create(title: project[:title])
  
  for todo in project[:todos]
    Todo.create(text: todo[:text], isCompleted: todo[:isCompleted], project_id: pr[:id])
  end
end
