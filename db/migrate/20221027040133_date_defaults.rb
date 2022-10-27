class DateDefaults < ActiveRecord::Migration[7.0]
  def change
    change_column_default :assets, :created_at, -> { 'now()' }
    change_column_default :assets, :updated_at, -> { 'now()' }
  end
end
