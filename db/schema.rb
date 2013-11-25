# encoding: UTF-8
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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20131125001016) do

  create_table "abilities", force: true do |t|
  end
=======
ActiveRecord::Schema.define(version: 20131124032247) do
>>>>>>> 52bb49b8d2d6f695e0535b0f6e5df36f779fd779

  create_table "comments", force: true do |t|
    t.integer "teacher_id"
    t.integer "course_id"
    t.integer "user_id"
    t.date    "date_post"
    t.string  "content"
  end

  add_index "comments", ["course_id"], name: "index_comments_on_course_id"
  add_index "comments", ["teacher_id"], name: "index_comments_on_teacher_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "courses", force: true do |t|
    t.string  "name"
    t.integer "semester"
    t.integer "major_id"
  end

  add_index "courses", ["major_id"], name: "index_courses_on_major_id"

  create_table "courses_teachers", id: false, force: true do |t|
    t.integer "course_id"
    t.integer "teacher_id"
  end

  create_table "invitations", force: true do |t|
    t.integer  "sender_id"
    t.string   "recipient_email"
    t.string   "token"
    t.datetime "sent_at"
    t.string   "new"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "majors", force: true do |t|
    t.string  "name"
    t.integer "school_id"
  end

  add_index "majors", ["school_id"], name: "index_majors_on_school_id"

  create_table "rols", force: true do |t|
    t.string "name"
  end

  create_table "schools", force: true do |t|
    t.string "name"
  end

  create_table "teachers", force: true do |t|
    t.string  "name"
    t.string  "last_name"
    t.string  "second_last_name"
    t.string  "picture_file_name"
    t.string  "picture_content_type"
    t.integer "picture_file_size"
    t.integer "course_ids"
  end

  create_table "users", force: true do |t|
<<<<<<< HEAD
    t.string  "name"
    t.string  "last_name"
    t.string  "second_last_name"
    t.string  "email"
    t.string  "password_hash"
    t.string  "nickname"
    t.integer "rol_id"
    t.integer "school_id"
    t.string  "password_salt"
=======
    t.string   "name"
    t.string   "last_name"
    t.string   "second_last_name"
    t.string   "email"
    t.string   "password_hash"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nickname"
    t.integer  "rol_id"
    t.integer  "school_id"
    t.string   "password_salt"
    t.integer  "invitation_id"
    t.integer  "invitation_limit"
>>>>>>> 52bb49b8d2d6f695e0535b0f6e5df36f779fd779
  end

  add_index "users", ["rol_id"], name: "index_users_on_rol_id"
  add_index "users", ["school_id"], name: "index_users_on_school_id"

end
