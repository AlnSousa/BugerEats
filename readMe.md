## Instalando

`bundle install`

## Rodando os testes - WEB

`cucumber` realizará a execução padrão no ambiente de desenvolvimento. 

`cucumber -p hmg -p chrome` o teste será executado no ambiente de homologação.

Cada ambiente possui um arquivo de configuração com configurações específicas para que aquele ambiente execute os testes.
Os arquivos estão na pasta `config`.

Ambiente de desenvolvimento: dev.yml
Ambiente de aprovação: hmg.yml

Foi criado um arquivo para um ambiente de homologação fictício.

Para modificar a saida do report padrão de json para html basta executar com a tag desejada exemplo:

`cucumber -p html` relatório padrão do cucumber
`cucumber -p json` relatório com a gem report builder

Por *padrão* se nenhuma tag for passado os relatórios sairão no formato *report builder*.
