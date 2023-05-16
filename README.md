# delivery_backoffice

Projeto Flutter Web - Vakinha Burguer BackOffice

## Getting Started

Projeto de backoffice para administrar o app vakinha_burguer que é um app de delivery onde o usuário pode comprar qualquer lanche, e foi desenvolvido pelo Rodrigo Rahman no evento DartWeek 9. Esse projeto foi desenvolvido no evento DartWeek 10 e tem objetivo de administrar e controlar os pedidos que são comprados pelo app. (O site web com o app mobile não tem ligação, e os dados informados são apenas exemplos de como seria essa ligação). O site contém a tela de login, depois de entrar é redirecionado para a home, onde tem um menu lateral com as opções, Administrar formas de pagamento, Administrar Produtos e os Pedidos do Dia.
Em administrar formas de pagamento o usuário pode filtrar por tipos de pagamentos que estão ativos, inativos e todos. Pode adicionar mais formas de pagamentos informando o nome e a sigla, e também se está ativo ou inativo, caso aconteça do usuário cadastrar a forma de pagamento errado, é possível editar.
Em Administrar Produto é onde fica todos os lanches cadastrados, podendo fazer a busca pelo nome e adicionar outros produtos, clicando em adicionar produto é aberto a tela de cadastro, podendo informar o nome, preço, adicionar foto e descrição, todos os campos tem validação e precisam ser informados. Depois de cadastrado o usuário pode editar e deletar o produto;
Em pedidos do Dia é o local onde fica os pedidos que foram adicionando pelos usuários do app mobile, e são filtrados por dia, ou seja, na tela irá informar os pedidos do dia. E cada pedido tem 4 estados, são eles cancelado, confirmado, pendente e finalizado. Cada um pode ser filtrado pelo DropdownButton no header da página. Clicando no pedido vai abrir a modal de detalhes do pedido contendo uma lista de lanches comprados informando o nome, quantidade e valor, e mais abaixo o valor total da compra, endereço de entrega e forma de pagamento.
Existe toda uma regra de negócio para habilitar ou desabilitar os botões de estado, por exemplo, se o pedido já tenha sido cancelado é impossível mudar o estado para finalizado ou confirmado. Se o pedido está pendente é preciso confirmar para só depois finalizar.

O site é totalmente responsivo para cada tamanho de tela, foi utilizando o banco de dados local json_rest_server e para gerência de estado o mobx, e flutter modular para injeção de dependência. 

Aula 1

- Acerto de Setting para retirar o hotreload e analysis_options do projeto;
- Adicionar e configurar Flutter Modular e Mobx do projeto;
- Criação estrutura de Environment do projeto;
- Criação de helpers do projeto (Loader, Messages, SizeExtensions);
- Criação de estilos, colors e text_styles do app;
- Criação do tema do projeto;
- Criação do modulo e página de login;
- Implementação do CustomDio;
- Implementação do Auth Data Layer;
- Criação do StorageClass para manter os dados apenas na seção ativa;
- Implementação de Auth Service Layer;


Aula 2

- Implementar a tela de login;
- Implementação da Home, template e menuBar;
- Implementação base route com RouterOutlet;
- Criação do PaymentType Module;
- Implementação do interceptor de auth, Interceptor e GlobalContext;
- Implementação do PaymentData Layer;


Aula 3

- Criação e implementação da tela de pagamento com widget personalizado base_header;
- Implementação da busca de pagamentos na tela pagamentType;
- Criação da model de criação e alteração de pagamentos;
- Implementação do filtro de pagamento se está ativo, ou inativo ou para mostrar ambos;
- Implementação da tela para criar e editar pagamentos;


Aula 4 

- Criação do modulo e rotas home e detail do produto;
- Criação da página de home de produto e product Item;
- Implementação do Product Data Layer;
- Implementação do metódo Salvar Produto no data layer;
- Realizar a busca dos produtos no backend;
- Implementação do filtro de busca da tela de produtos;
- Criação do layout da tela de salvar produto;
- Implementação da tela de salvar produto;
- Implementação do upload da imagem do produto;


Aula 5

- Criação do modulo de pedido;
- Criação do layout da tela de pedido;
- Implementação do Order Data Layer;
- Implementação da tela de lista de pedidos;
- Criação da tela detalhe de pedido;


Aula 6

- Implementação do User Data Layer;
- Implementação do Order Service Layer;
- Buscar dados do pedido e apresentar na tela de pedido;
- Implementação da lógica dos botõs da tela detalhe do pedido;
- Implementação do filtro de pedido.
