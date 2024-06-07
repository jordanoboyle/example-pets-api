# json.extract! pet, :id, :created_at, :updated_at
# json.url pet_url(pet, format: :json)


json.id pet.id
json.name pet.name
json.breed pet.breed
json.age pet.age
json.user_id pet.user_id
json.created_at pet.created_at
json.updated_at pet.updated_at