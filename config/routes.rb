Rails.application.routes.draw do
  get '/quiz', to: 'quizzes#show'
  post '/quiz/answer', to: 'quizzes#answer'
  get '/quiz/result', to: 'quizzes#result'
  root to: 'quizzes#show'
end
