# This file is autogenerated. Instead of editing this file, please use the
# migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.

ActiveRecord::Schema.define(:version => 1) do

  create_table "people", :force => true do |t|
    t.column "first_name", :string
    t.column "last_name",  :string
    t.column "created_at", :datetime
    t.column "updated_at", :datetime
  end

end