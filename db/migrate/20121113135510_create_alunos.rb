class CreateAlunos < ActiveRecord::Migration
  def change
    create_table :alunos do |t|
      t.string :matricula
      t.string :nome
      t.string :sexo

      t.timestamps
    end
  end
end
