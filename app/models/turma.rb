class Turma < ActiveRecord::Base
  belongs_to :aluno
  belongs_to :professordisciplina
  # attr_accessible :title, :body
end
