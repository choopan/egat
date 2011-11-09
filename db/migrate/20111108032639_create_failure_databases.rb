class CreateFailureDatabases < ActiveRecord::Migration
  def change
    create_table :failure_databases do |t|
      t.string :egatsn
      t.datetime :eventdate
      t.integer :counterOLTC
      t.string :environment
      t.string :failurestatus
      t.string :failuredetail
      t.datetime :downdate
      t.datetime :update
      t.string :workorder
      t.string :failuregroup
      t.string :failurepart
      t.string :failuremode
      t.string :failurereason
      t.string :manage
      t.string :remark
      t.string :user

      t.timestamps
    end
  end
end
