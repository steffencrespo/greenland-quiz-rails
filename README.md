# Greenland Quiz (Rails Version)

This is a complete rewrite of the original [Greenland Quiz](https://github.com/steffencrespo/greenland-quiz) built in vanilla JavaScript.  
Now implemented using **Ruby on Rails 8**, this version adds a more structured backend, session management, and a results summary.

---

## 🧠 Features

- Server-rendered quiz interface using ERB templates
- Session-based progress tracking
- Automatic scoring with final result
- Per-question feedback at the end (correct/incorrect + answer comparison)
- Lightweight setup with SQLite

---

## 🚀 Stack

- **Ruby** 3.2.3 (via asdf)
- **Rails** 8.0.2
- **SQLite3** (default dev DB)

---

## 🛠️ Getting Started

### 1. Clone the repo

```bash
git clone git@github.com:steffencrespo/greenland-quiz-rails.git
cd greenland-quiz-rails
```

### 2. Install dependencies
```bash
bundle install
```

### 3. Setup the database
```bash
bin/rails db:setup
```

### 4. Run the server
```bash
bin/rails server
```

### Visit http://localhost:3000 to start the quiz.

## 📦 Original Version (Vanilla JS)
You can check out the original version of this project here:
👉 https://github.com/steffencrespo/greenland-quiz