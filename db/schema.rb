# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170831205711) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answer_options", force: :cascade do |t|
    t.integer  "question_id"
    t.text     "statement"
    t.boolean  "correct"
    t.text     "explanation"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["question_id"], name: "index_answer_options_on_question_id", using: :btree
  end

  create_table "boards", force: :cascade do |t|
    t.integer  "exercise_id"
    t.string   "card1"
    t.string   "card2"
    t.string   "card3"
    t.string   "turn"
    t.string   "river"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["exercise_id"], name: "index_boards_on_exercise_id", using: :btree
  end

  create_table "content_items", force: :cascade do |t|
    t.text     "statement"
    t.string   "image"
    t.integer  "content_id"
    t.boolean  "clickable"
    t.integer  "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["content_id"], name: "index_content_items_on_content_id", using: :btree
  end

  create_table "contents", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.string   "name"
    t.boolean  "live"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "lesson_id"
    t.text     "statement"
    t.index ["lesson_id"], name: "index_exercises_on_lesson_id", using: :btree
  end

  create_table "lessons", force: :cascade do |t|
    t.string   "title"
    t.integer  "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.integer  "exercise_id"
    t.string   "name"
    t.string   "card1"
    t.string   "card2"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["exercise_id"], name: "index_players_on_exercise_id", using: :btree
  end

  create_table "questions", force: :cascade do |t|
    t.integer  "exercise_id"
    t.text     "statement"
    t.text     "answer"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["exercise_id"], name: "index_questions_on_exercise_id", using: :btree
  end

  create_table "quiz_statements", force: :cascade do |t|
    t.text     "statement"
    t.text     "question"
    t.text     "answer"
    t.integer  "quiz_id"
    t.integer  "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quiz_id"], name: "index_quiz_statements_on_quiz_id", using: :btree
  end

  create_table "quizzes", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string   "contentable_type"
    t.integer  "contentable_id"
    t.integer  "lesson_id"
    t.integer  "order"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["contentable_type", "contentable_id"], name: "index_sections_on_contentable_type_and_contentable_id", using: :btree
    t.index ["lesson_id"], name: "index_sections_on_lesson_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "facebook_picture_url"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "token"
    t.datetime "token_expiry"
    t.boolean  "admin",                  default: false
    t.integer  "chip_count",             default: 0,     null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "videos", force: :cascade do |t|
    t.string   "title"
    t.text     "statement"
    t.string   "url"
    t.string   "thumbnail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "answer_options", "questions"
  add_foreign_key "boards", "exercises"
  add_foreign_key "exercises", "lessons"
  add_foreign_key "players", "exercises"
  add_foreign_key "questions", "exercises"
  add_foreign_key "sections", "lessons"
end
