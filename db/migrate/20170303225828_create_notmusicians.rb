class CreateNotmusicians < ActiveRecord::Migration[5.0]
  def change
    create_table :notmusicians do |t|
      t.string :market
      t.string :payment
      t.string :location
      t.string :meet
      t.string :contact
      t.string :notify
      t.string :pay
      t.string :rent
      t.string :rent_pay
      t.string :rent_space
      t.string :rating
      t.text :comment

      t.timestamps
    end
  end
end
