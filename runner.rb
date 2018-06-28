require 'unirest'

response = Unirest.post("http://localhost:3000/api/query_guessing_game",
  parameters: {
    user_guess: 37
  }
)

p response.body
