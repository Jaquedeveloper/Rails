class CreateTurmas < ActiveRecord::Migration
  def change
    create_table :turmas do |t|
      t.references :aluno
      t.references :professordisciplina

      t.timestamps
    end
    add_index :turmas, :aluno_id
    add_index :turmas, :professordisciplina_id
  end
end
