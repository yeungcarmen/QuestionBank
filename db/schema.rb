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

ActiveRecord::Schema.define(version: 20180116091550) do

  create_table "hashtag_questions", force: :cascade do |t|
    t.integer "hashtag_id"
    t.integer "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hashtag_id"], name: "index_hashtag_questions_on_hashtag_id"
    t.index ["question_id"], name: "index_hashtag_questions_on_question_id"
  end

  create_table "hashtags", force: :cascade do |t|
    t.string "name"
    t.integer "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_hashtags_on_subject_id"
  end

  create_table "que_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "answer"
    t.string "question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "que_type_id"
    t.integer "subject_id"
    t.string "statement"
    t.index ["que_type_id"], name: "index_questions_on_que_type_id"
    t.index ["subject_id"], name: "index_questions_on_subject_id"
  end

  create_table "subject_teachers", force: :cascade do |t|
    t.integer "teacher_id"
    t.integer "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_subject_teachers_on_subject_id"
    t.index ["teacher_id"], name: "index_subject_teachers_on_teacher_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "username"
    t.string "fullname"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
