# coding: utf-8

require 'spec_helper'

feature 'gerenciar professordisciplina' do

  scenario 'incluir professordisciplina' do # , :js => true  do
	disciplina = FactoryGirl.create(:disciplina, :nome => 'Programacao para Web')
	professor = FactoryGirl.create(:professor, :nome => 'Luiz Gustavo')
    visit new_professordisciplina_path
    preencher_e_verificar_professordisciplina
  end

  scenario 'alterar professordisciplina' do #, :js => true  do
	disciplina = FactoryGirl.create(:disciplina, :nome => 'Programacao para Web')
	professor = FactoryGirl.create(:professor, :nome => 'Luiz Gustavo')
    professordisciplina = FactoryGirl.create(:professordisciplina, :disciplina=>disciplina, :professor=>professor )
    visit edit_professordisciplina_path(professordisciplina)
    preencher_e_verificar_professordisciplina
  end

   scenario 'excluir professordisciplina' do #, :javascript => true  do
	disciplina = FactoryGirl.create(:disciplina, :nome => 'Programacao para Web')
	professor = FactoryGirl.create(:professor, :nome => 'Luiz Gustavo')
    professordisciplina = FactoryGirl.create(:professordisciplina, :disciplina=>disciplina, :professor=>professor )
    visit professordisciplinas_path
    click_link 'Excluir'
  end

   def preencher_e_verificar_professordisciplina
	select 'Programacao para Web', :on => 'disciplina'	
	select 'Luiz Gustavo', :on => 'professor'
	fill_in 'Ano', :with => '2012'
	fill_in 'Periodo', :with => '5'
	click_button 'Salvar'
	page.should have_content 'disciplina: Programacao para Web'
	page.should have_content 'professor: Luiz Gustavo'
	page.should have_content 'Ano: 2012'
	page.should have_content 'Periodo: 5'
   end
end



