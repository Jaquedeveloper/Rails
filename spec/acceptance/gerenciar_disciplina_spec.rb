# coding: utf-8

require 'spec_helper'

feature 'gerenciar disciplina' do

  scenario 'incluir disciplina' do # , :js => true  do

    visit new_disciplina_path

    preencher_e_verificar_disciplina

    

  end

  scenario 'alterar disciplina' do #, :js => true  do

    disciplina = FactoryGirl.create(:disciplina)

    visit edit_disciplina_path(disciplina)

    preencher_e_verificar_disciplina



  end

   scenario 'excluir disciplina' do #, :javascript => true  do

       disciplina = FactoryGirl.create(:disciplina)

        visit disciplinas_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_disciplina

	fill_in 'Nome',  :with => "Programacao Web"
	fill_in 'Sigla',  :with => "Pweb"
	fill_in 'Carga horaria',  :with => "80h"
	fill_in 'Periodo',  :with => "5"
	click_button 'Salvar'
	page.should have_content 'Nome: Programacao Web'
	page.should have_content 'Sigla: Pweb'
	page.should have_content 'Carga horaria: 80h'
	page.should have_content 'Periodo: 5'
   end
end



