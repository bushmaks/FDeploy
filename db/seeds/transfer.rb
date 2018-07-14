seeds = ActiveSupport::HashWithIndifferentAccess.new(YAML::load_file('db/seeds/seeds.yml'))

for seed in seeds do

end
