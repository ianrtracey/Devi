class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|

      t.timestamps null: false
      t.string :status
      t.belongs_to :hacker, index: true
      t.datetime :invitation_sent_at
      t.string :invitation_key
      t.datetime :decision_made_at
      t.string :decision
    end
  end
end
