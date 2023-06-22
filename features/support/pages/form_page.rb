class FormPage
    include Capybara::DSL

    def fill_name(nome)
        fill_in 'name', with: nome
    end
  
    def fill_cpf(cpf)
      fill_in 'cpf', with: cpf
    end
  
    def fill_email(email)
      fill_in 'email', with: email
    end
  
    def fill_whatsapp(whatsapp)
      fill_in 'whatsapp', with: whatsapp
    end

    def fill_cep(cep)
        fill_in 'CEP', with: cep
        click_button 'Buscar CEP'
    end

    def fill_number(numero)
        fill_in 'address-number', with: numero
    end

    def fill_complement(complemento)
        fill_in 'address-details', with: complemento
    end

    def click_moto
        find('img[alt="Moto"]').click
    end
        
      def upload_cnh
        file_path = File.expand_path('features/support/files/carteira.jpg')
        script = <<~JS
          var fileInput = document.querySelector('div.dropzone input[type="file"]');
          var file = new File([""], "#{file_path}");
          var dataTransfer = new DataTransfer();
          dataTransfer.items.add(file);
          fileInput.files = dataTransfer.files;
          fileInput.dispatchEvent(new Event('change', { bubbles: true }));
        JS
        page.execute_script(script)
      end
      
      def click_signin
      find('button.button-success').click
      end
end  