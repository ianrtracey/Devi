class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
    	
	  t.belongs_to :hacker, index: true
      t.timestamps null: false
      t.integer :num_of_github_repos
      t.json :github_languages
      t.json :linkedin_experience
    end
  end
end
