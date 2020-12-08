# CaixaEletronico-PIC18F4520
## Projeto que simula um caixa eletrônico, utilizando o microcontrolador PIC18F4520 no kit PICGenios.

###### O projeto foi utilizado como avaliação da disciplina ECOP14 - Laboratório de Programação Embarcada, do curso Engenharia de Computação da Universidade Federal de Itajubá. Foi desenvolvido em conjunto com aluno Luis Felipe Buzo.

**Proposta**:
O projeto tem como objetivo simular um caixa eletrônico, onde será possível executar as principais funções atribuídas ao dispositivo, sendo elas: acessar a conta do usuário, verificar o saldo da conta e realizar saques e depósitos. Vale ressaltar que o saldo será alterado conforme o usuário realiza as duas últimas funções, podendo ele executá-las quantas vezes desejar, selecionando-as no menu principal. A seguir, estão listadas as funções atribuídas aos componentes.
 
*LCD*:
Será responsável pela maior parte da comunicação visual e exibirá o menu do caixa e as informações relativas aos processos, como por exemplo o saldo da conta, o número da conta, as teclas referentes a cada função, etc.
 
*DISPLAY 7-SEG*:
Será utilizado para mostrar o valor final do saldo após as operações.
 
*TECLAS*:
Serão utilizadas para navegar no menu do caixa, digitar o número da conta, selecionar quantias em dinheiro e confirmar operações.
 
*LEDS*:
Serão utilizados como uma “animação de carregamento”, que irá acender de cima parar baixo e de baixo para cima enquanto a conta do usuário é acessada.



