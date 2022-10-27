class CreateAssets < ActiveRecord::Migration[7.0]
  def change
    create_table :assets do |t|
      t.string :caption
      t.string :location
      t.string :path
      t.string :aws_s3_path
      t.string :cloudinary_path
      t.datetime :taken_at
      t.datetime :last_modified_at

      t.timestamps
    end
  end
end
