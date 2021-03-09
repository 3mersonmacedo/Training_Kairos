
describe 'Drag and Drop', :drop do

    before(:each) do

      visit 'https://www.dimepkairos.com.br/'
      fill_in 'LogOnModel.UserName', with: 'planoteste06102020br1@teste.com'
      fill_in 'LogOnModel.Password', with: '1'
      click_button 'btnFormLogin'

      sleep 1

    end
  
    it 'Primeiro Movimento' do
      visit 'https://www.dimepkairos.com.br/Dimep/MonitoracaoEquipamentos/'
      sleep 5
      #drag1 = find('.column_0 .ui-sortable')
      #drag2 = find('.column_1 .ui-sortable')

    
      relogio = find('div#widget_2')   
      #relogio.drag_to drag2
  
      sleep 10
    end


end