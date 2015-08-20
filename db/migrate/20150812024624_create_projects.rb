class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.datetime :date
      t.string :url1
      t.string :url2
      t.string :url3
      t.string :url4
      t.boolean :kitchen
      t.string :sqft
      t.integer :number_of_cabinets
      t.string :countertop_style
      t.integer :counter_top_length
      t.integer :number_of_outlets
      t.string :light_fixture_type
      t.integer :floor_sqft
      t.string :floor_type
      t.boolean :bath
      t.integer :vanity_width
      t.integer :tub_length
      t.integer :shower_sqft
      t.string :mirror
      t.string :bath_fan
      t.boolean :air_conditioning
      t.string :ac_type
      t.integer :home_sqft
      t.integer :ac_size
      t.string :duct_work
      t.boolean :roof
      t.boolean :exterior_general
      t.text :more_detail
      t.boolean :paint
      t.boolean :floor
      t.string :floor_demo
      t.string :location_city
      t.integer :budget
      t.string :ends
      t.boolean :pool
      t.boolean :drive_way
      t.integer :length
      t.integer :width
      t.boolean :landscaping
      t.boolean :fence
      t.string :fence_material
      t.boolean :windows
      t.string :window_type
      t.integer :quantity
      t.boolean :electrical
      t.boolean :plumbing
      t.boolean :handy_man

      t.timestamps null: false
    end
  end
end
