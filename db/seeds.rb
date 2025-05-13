questions = [
  {
    text: "In what continent is Greenland Physically located?",
    answers: ["north america", "europe", "asia", "oceania", "south america"],
    correct: 0
  },
  {
    text: "To what country does Greenland belong to as a territory?",
    answers: ["Iceland", "Sweden", "United States", "Canada", "Denmark"],
    correct: 4
  },
  {
    text: "What is the native name of Greenland?",
    answers: ["North Pole", "Laponia", "Chukotka", "Kalaallit Nunaat", "Danika"],
    correct: 3
  },
  {
    text: "How is a Greenland native called?",
    answers: ["Esqimo", "Danish", "Innuit", "American", "La ponian"],
    correct: 2
  },
  {
    text: "What is the current population?",
    answers: ["56 thousand", "1 million", "560 thousand", "5 thousand", "100 million"],
    correct: 0
  },
  {
    text: "What is the name of the capital?",
    answers: ["Nuuk", "Sisimiut", "Illulisat", "Qaqortoq", "Kangerslussuaq"],
    correct: 0
  },
  {
    text: "Which animal represents the independent internal government of Greenland?",
    answers: ["Arctic Whale", "Seal", "Polar bear", "Arctic Salmon", "Shark"],
    correct: 2
  },
  {
    text: "Greenland has a very unique type of soil only found in the Northern Hemisphere. It is called:",
    answers: ["Frozen Clay", "Polar Ice Cap", "Shallow Chalk", "Tar Sand", "Permafrost"],
    correct: 4
  },
  {
    text: "Out of the total area, what percentage of it is covered by the Greenland Ice Sheet?",
    answers: ["81%", "99%", "95%", "97%", "70%"],
    correct: 0
  },
  {
    text: "Following the WWII, in 1946 the USA made an unsuccessful offer to buy Greenland from Denmark. The offered amount was:",
    answers: ["100 thousand dollars", "1 million dollars", "100 million dollars", "90 million dollars", "1 billion dollars"],
    correct: 2
  },
  {
    text: "From 1960 to 1966 the USA tried to build a subterranean network of secret missile launch sites in the Greenlandic Ice Cap, which was later abandoned as unworkable. The project was named:",
    answers: ["Icework", "Iced Weasel", "Underground War", "Iceworm", "Sub Zero Arizona"],
    correct: 3
  }
]

questions.each do |q|
  question = Question.create!(content: q[:text])
  q[:answers].each_with_index do |answer_text, index|
    question.answers.create!(
      content: answer_text,
      correct: index == q[:correct]
    )
  end
end
