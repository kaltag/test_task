Ingredient.destroy_all
Dish.destroy_all

seed_file = Rails.root.join('db/seeds/menu.yml')
config = YAML.load_file(seed_file)
Ingredient.create(config['ingredients'])
Dish.create(config['dishes'])

Rails.logger.debug 'Все прошлые записи в базе данных были удалены и заменены новыми!'
