json.array! @restaurant do |restaurant|
  json.id          restaurant.id
  json.name        restaurant.name
  json.budget_d    restaurant.budget_d
  json.budget_n    restaurant.budget_n
  json.header      restaurant.header
  json.description restaurant.description
  json.image       restaurant.image
end
