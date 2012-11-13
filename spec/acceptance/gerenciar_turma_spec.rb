# coding: utf-8

require 'spec_helper'

feature 'gerenciar turma' do

  scenario 'incluir turma' do # , :js => true  do
	aluno = FactoryGirl.create(:aluno, :nome => 'Jaqueline Passos')
	professordisciplina = FactoryGirl.create(:professordisciplina, :ano => '2012')
    visit new_turma_path
    preencher_e_verificar_turma
  end

  scenario 'alterar turma' do #, :js => true  do
	aluno = FactoryGirl.create(:aluno, :nome => 'Jaqueline Passos')
	professordisciplina = FactoryGirl.create(:professordisciplina, :ano => '2012')
    turma = FactoryGirl.create(:turma, :professordisciplina=>professordisciplina, :aluno=>aluno )
    visit edit_turma_path(turma)
    preencher_e_verificar_turma
  end

   scenario 'excluir turma' do #, :javascript => true  do
	aluno = FactoryGirl.create(:aluno, :nome => 'Jaqueline Passos')
	professordisciplina = FactoryGirl.create(:professordisciplina, :ano => '2012')
    turma = FactoryGirl.create(:turma, :professordisciplina=>professordisciplina, :aluno=>aluno )
    visit turmas_path
    click_link 'Excluir'
  end

   def preencher_e_verificar_turma
	select '2012', :on => 'Professordisciplina'	
	select 'Jaqueline Passos', :on => 'Aluno'
	click_button 'Salvar'
	page.should have_content 'Professordisciplina: 2012'
	page.should have_content 'Aluno: Jaqueline Passos'
   end
end



