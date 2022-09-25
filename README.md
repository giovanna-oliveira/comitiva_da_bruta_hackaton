# Comitiva da Bruta

Hackaton BTGfazTech

## Conheça a BrutaTech

**A Fintech que veio para semear o futuro**


**Pesquisa**

Investimentos sustentáveis são a combinação de investimentos tradicionais com um olhar para as melhores práticas ambientais, sociais e de governança a fim de investir em empresas e projetos que transformam positivamente o mundo.

Cerca de US$ 715 bilhões geridos por quase 2000 instituições ao redor do mundo com foco em investimentos de impacto em 2019.

**(Global Impact Investing Network)**

Hoje o BTG já atua com empresas e projetos que possuem iniciativas de impacto ambiental e social principalmente as áreas do agronegócio sustentável, então porque não trazer para perto quem realmente pode fazer a diferença nessa missão.

Segundo dados de um levantamento do Banco Central, as dívidas com crédito rural com atraso acima de 90 dias somavam R$ 2,6 bilhões em fevereiro deste ano, uma alta de 103% em comparação com 1,2 bilhão de dívidas no mesmo mês de 2021.

Ainda de acordo com dados do Serasa, a inadimplência do produtor é menos da metade do consumidor não-rural, que foi de 40,4% no mesmo período.

A relação do produtor com crédito é muito forte, por isso pensamos em um **Ecossistema de Inovação** focada para o agronegócio sustentável. Como funciona?

O produtor através de um aplicativo integra os dados vindos do Open Finance de sua conta bancárias, através desse aplicativo ele conseguirá organizar suas contas de forma consolidada e gerenciar suas finanças, nesse aplicativo ele terá o controle das despesas da próxima safra e qual a previsão de gasto com insumos, mão de obra.

Dessa forma a plataforma do Ecossistema centralizará todos os produtores e através desses dados conseguirá desenvolver um score de crédito para produtor.

Gerando uma pontuação de 0 a 100 onde quanto maior a pontuação menor o risco de oferecer o crédito, vender a prazo, financiar equipamentos ou mesmo negociar a venda de safras antecipadas.

Hoje sabemos que a agricultura é responsável pela produção de menos de 1% dos créditos voluntários de carbono. Então isso precisa ser mudado!

Os produtores que possuem projetos de práticas agrícolas sustentáveis, poderão reveter esse crédito em pontos em seu score ou mesmo em valores que poderão entrar como abatimento em financiamentos, pagamento de dívidas atrasadas, ou mesmo em investimentos.

Nos Estados Unidos um produtor chamado Lance Unger que recebeu U$ 26.000 doláres em receita adicional com créditos de carbono, comentou "_A fazenda não parece a mesma quando meu avô a iniciou e vejo os créditos de carbono como uma opção nova e valiosa para nós a longo prazo_".

"Nosso solo pode produzir créditos de carbono todos os anos, e quanto mais empresas se concentram em se tornar neutras em carbono, mais valiosos se tornam esses créditos.

A missão do BTG Agro Invest é alavancar o Open Finance e ser um agente de transformação que fortaleza a cadeia produtiva do agronegócio e estimule ações

que reduza as emissões de carbono.

## Semeando o futuro com o Open Finance.

**Conheça nosso modelo de Negócio**

![unnamed](https://user-images.githubusercontent.com/61799678/192168381-d2c71c71-df68-4af0-9928-4d61cfb631ec.png)

![unnamed (1)](https://user-images.githubusercontent.com/61799678/192168405-dbdd1a5f-24b1-4b08-bf37-1d0fb58ff77e.png)



**Como funcionará nosso negócio?**

Somos uma fintech voltada para o pequeno produtor rural. Através da BrutaTech você poderá solicitar crédito a diversos bancos e eles ficarão disponíveis para lhe oferecer a melhor proposta. Aqui também poderá ter um controle das despesas de suas contas e controlar melhor a próxima safra.

Mas não paramos por aí, fornecemos ideias e monitoramento de projetos que podem ser implementadas em sua propriedade de forma que poderá gerar um enorme impacto positivo para planeta e ainda ter ganhos. Mas como?

Esses projetos poderão ter créditos de carbono que poderão ser monetizados ou disponibilizados em seus próximos empréstimos/financiamentos.

Vem com a gente semear um futuro menor.

BrutaTech semeando o futuro com Open Finance.

**Como iremos monitizar nosso negócio?**

Nosso público principal são os pequenos produtores a cada transação de empréstimos realizados, 3% do valor total será repassado do banco para a BrutaTech. Outra forma de monetizar será repassando os créditos de carbono do produtor a empresas, ou aportando esses títulos para vender quando esses créditos tiverem mais valorizados.

BrutaTech também monetizará com vendas de análises de dados do Open Finance, oferecendo estudos e análises avançadas com os dados que são disponibilizados pelos nossos clientes e cruzamentos com dados do Open Finance.

**Veja como funciona nosso portal para controle dos bancos?**

[**https://brutatech.brutadosdados.com.br/**](https://brutatech.brutadosdados.com.br/)

**Documentação Técnica**

1. Estudo de dados usando Mineração de Dados Complexos

Para um estudo completo das relações dos dados, como não temos conhecimentos de quais atributos são importantes para a criação de um modelo para cálculo do score, ou risco de inadimplência, resolvemos analisar as interligações das relações utilizando o DAMICORE. Ele é um arcabouço teórico composto de várias técnicas provindas de diversas pesquisas como:

- Teoria da Informação
- Bioinformática
- Redes Complexas

Essas técnicas são combinadas em uma cadeia capaz de prover relações hierárquicas entre objetos de dados não estruturados.

O primeiro passo deste algoritmo é gerar um grande repositório dos dados, após ler e quebrar em partes esses dados ele cria uma métrica de similaridade através de uma matriz de distância que é construída comparando cada par de objetos do repositório.

No próximo passo ele converte a matriz de distâncias em uma rede através da conexão de objetos mais próximos entre si, em seguida um processo de detecção de comunidades é aplicado para formar grupos conectados a rede para isso ele utiliza matriz de distâncias é a **NCD** (Normalized Compression Distance), do inglês, Distância de Compressão Normalizada, que é uma aproximação computável da complexidade de Kolgomorov(LI; VITÁNYI, 2013; LUI et al., 2015) e é definida pela equação

![unnamed (2)](https://user-images.githubusercontent.com/61799678/192168427-64cee4da-bccf-4b8b-a146-b4a159760f84.png)


Os problemas de similaridade de códigos e identificação de padrões necessitam ser bem caracterizados para que seja possível definir um conjunto promissor de técnicas de mineração de dados para se investigar. Aspectos de relevância incluem: 1. Uma alta quantidade de códigos com as mesmas similaridades. Com isso, um grande número de problemas com códigos semelhantes poderá ensejar predições que explorem de forma mais eficiente suas componentes similares. Esse procedimento tem sido chamado de design-suggestion; 2. Identificação de aspectos do código que podem influenciar diretamente no desempenho e consumo de recursos. Esse procedimento é conhecido como mapping suitability.

Após a geração da primeira geração da árvore temos a árvore filogénica.

[http://etetoolkit.org/treeview/?treeid=f626cc0db2301a9a009e98fd909339f0&algid=ce443ed1e53858bf4e11d1e069c7a927](http://etetoolkit.org/treeview/?treeid=f626cc0db2301a9a009e98fd909339f0&algid=ce443ed1e53858bf4e11d1e069c7a927)

Clique em view.

Support values are shown in red.

![unnamed (3)](https://user-images.githubusercontent.com/61799678/192168449-61cd104a-10d3-4728-8973-0b866fc24918.png)

**Validando Modelos de Score**

Após avaliação das árvores podemos utilizar o Knime com ferramentas específicas para Scoring.

![unnamed (4)](https://user-images.githubusercontent.com/61799678/192168484-1fa16c8e-31b2-4948-8404-53264725c7e0.png)


![unnamed (5)](https://user-images.githubusercontent.com/61799678/192168492-c4e84231-fabc-48dc-9cf7-78255c455878.png)


1. Referências

[https://www.teses.usp.br/teses/disponiveis/55/55134/tde-16112016-170837/publico/BrunoKimMedeirosCesar\_revisada.pdf](https://www.teses.usp.br/teses/disponiveis/55/55134/tde-16112016-170837/publico/BrunoKimMedeirosCesar_revisada.pdf)

[https://www.teses.usp.br/teses/disponiveis/55/55134/tde-06022018-150306/publico/RenedeSouzaPinto\_revisada.pdf](https://www.teses.usp.br/teses/disponiveis/55/55134/tde-06022018-150306/publico/RenedeSouzaPinto_revisada.pdf)

LI, M.; VITÁNYI, P. An introduction to Kolmogorov complexity and its applications. [S.l.]: Springer Science & Business Media, 2013.
