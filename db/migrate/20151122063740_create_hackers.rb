class CreateHackers < ActiveRecord::Migration
  def change
    create_table :hackers do |t|

      t.timestamps null: false
      t.string :first_name
      t.string :last_name
      t.string :email
      t.boolean :is_over_18
      t.string :gender
      t.string :school
      t.string :major
      t.string :graduation_date
      t.text :learn, array: true, default: []
      t.text :experience, array: true, default: []
      t.string :num_of_hackathons
      t.boolean :returner
      t.string :github
      t.string :linkedin
      t.string :resume
      t.string :dietary_restrictions
      t.boolean :require_travel_reimbursement
      t.string :emergency_contact_name
      t.string :emergency_contact_number
    end
  end
end
