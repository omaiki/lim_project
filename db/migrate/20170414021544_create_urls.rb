class CreateUrls < ActiveRecord::Migration[5.0]
  def change
    create_table :urls do |t|

      t.string :page_url

      t.timestamps
    end
  end
end
