class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :title
      t.string :author
      t.boolean :published

      t.timestamps
    end
  end
end
