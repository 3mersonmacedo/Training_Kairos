describe 'Kairos', :login do

    it 'Login Kairos' do 
        #login
        visit 'https://www.dimepkairos.com.br/'
        fill_in 'LogOnModel.UserName', with: 'planoteste06102020br1@teste.com'
        fill_in 'LogOnModel.Password', with: '1'
        click_button 'btnFormLogin'
        #Acceso criação Cargo
        visit 'https://www.dimepkairos.com.br/Dimep/Empresas'
        visit 'https://www.dimepkairos.com.br/Dimep/Cargos'
 
        sleep 10
    end
end