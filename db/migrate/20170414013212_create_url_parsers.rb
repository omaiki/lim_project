class CreateUrlParsers < ActiveRecord::Migration[5.0]
  def change
    create_table :url_parsers do |t|

      t.string :url
      t.json :parsed_content

      t.timestamps
    end
  end
end
