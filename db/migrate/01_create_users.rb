class CreateUsers < ActiveRecord::Migration[5.0]
    def change
        create_table :users do |t| #Every user should have a guest and host id
            t.string :name
        end
    end
end