class CreateProfessordisciplinas < ActiveRecord::Migration
  def change
    create_table :professordisciplinas do |t|
      t.string :ano
      t.string :periodo
      t.references :professor
      t.references :disciplina

      t.timestamps
    end
    add_index :professordisciplinas, :professor_id
    add_index :professordisciplinas, :disciplina_id
  end
end
