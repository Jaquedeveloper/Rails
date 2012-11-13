class Professordisciplina < ActiveRecord::Base
  belongs_to :professor
  belongs_to :disciplina
  attr_accessible :ano, :periodo
end
