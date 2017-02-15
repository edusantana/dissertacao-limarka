# Introdução

Durante o período de formação superior no Brasil muitos estudantes necessitam escrever um trabalho de conclusão de curso (TCC), como requisito para conclusão dos estudos. Neste momento eles são convocados a realizarem uma pesquisa científica e reportarem o trabalho através de uma monografia, dissertação ou tese -- geralmente em conformidade com as Normas da Associação Brasileira de Normas Técnicas (ABNT).

De modo geral, o público nacional dispõe de duas alternativas para elaboração dos TCCs: utilização de um editor de texto rico (como o Microsoft Word ou Libre Office) ou utilização do Latex. 
A primeira alternativa demanda do usuário conhecimentos de uso avançados da ferramenta para produzir e formatar um documeto de acordo com as normas da ABNT, até mesmo quando utiliza-se um modelo previamente disponibilizado. Alguns estudantes sem esses conhecimentos técnicos e desconhecendo as Normas são compelidos a contratarem serviços para adequarem seu trabalho. 

Embora o Latex possua uma *curva de aprendizado maior*, editores on-line como o Overleaf \cite{overleaf} ou ShareLatex \cite{sharelatex} oferecem ambientes com interfaces gráficas que possibilitam uma experiência de edição similar aos editores de texto rico, tornando a escrita mais fácil. Esta alternativa em conjunto com a utilização de modelos pré-configurados possibilita seus usuários abstraírem algumas regras de formatação (codificadas nos modelos), por essa razão *o Latex é conhecido por permitir que seus usuários se concentrarem na elaboração do texto*, abstraindo a formatação. *O custo de sua utilização é a ofuscação do arquivo fonte do texto* devido a coexistência entre texto e códigos Latex -- que utiliza nomenclaturas originadas do inglês. 

No entanto, o arquivo fonte do texto, onde a edição ocorre, permanece repleto de códigos (geralmente com nomenclaturas provenientes do inglês) ofuscando um pouco a legibilidade do arquivo em edição.

As linguagens de marcação de leve (*lightweight markup language*) surgiram, em diferentes contextos, como alternativas para elaboração de textos ou mensagens de comunicação. Essas linguagens, mais simples que o Latex, possibilitam os usuários redigirem utilizando uma sintaxe de marcação simples, compatível com arquivos somente texto (*plain text*), e produzindo conteúdos fáceis de serem reconhecidos por humanos.

Este trabalho investiga a utilização de Markdown, uma linguagem de marcação leve, como outra alternativa para produção de TCCs em conformidade com as Normas da ABNT.

## Motivação

A motivação desse trabalho consiste em ofertar uma ferramenta para elaboração de trabalhos de conclusão de curso (monografia, dissertação ou tese) em conformidade com as Normas da ABNT, que seja fácil e agradável de utilizar, e minimizando os conhecimentos exigidos sobre as Normas.

## Objetivos

Nessa seção são apresentados o objetivo geral e os específicos da pesquisa.

### Objetivo Geral

O objetivo geral desse trabalho é *avaliar* o uso de uma linguagem de marcação leve para escritas de TCCs em conformidade com as Normas da ABNT.

### Objetivos Específicos

- *Especificar* e *implementar* um sistema que possibilite usuários escrever TCCs em Markdown em conformidade com as Normas da ABNT;
  
- *Avaliar* o uso da linguagem Markdown para a escrita de TCCs por estudantes.


## Metodologia ##

A pesquisa adotou o método de *análise qualitativa*. De acordo com \cite{hazzan2006qualitative}, o método qualitativo deve ser empregado quando o objeto de estudo envolve analisar processos mentais de indivíduos ou quando o estudo é um dos pioneiros na área e não existem dados suficientes que sugestionem elaborações de hipóteses *a priori*. 
Portanto a escolha do método qualitativo nessa pesquisa é justificada devido a ausência de pesquisas sobre utilização da linguagem Markdown para produção de TCCs nacionais.

Os instrumentos adotados para coleta de dados foram observação e entrevistas semiestruturadas . <!-- Pq esse instrumento foi escolhido?--> 

<!--
Casos diferentes:
- Testes no laboratório. Tempo limitado.
- Testes individuais. Tempo limitado vs ilimitado. Cansaço?
-->


<!-- Experimento não realístico, Observação, Entrevista.
Estudo de Caso? Utilização, Entrevista.

A avaliação da utilização do sistema foi realizada através de experimentos com usuários e a entrevista semiestruturada foi 

Ver: Chapter 4 Ann Blandford and Thomas Green Methodological Development -->

Essa pesquisa utilizará avaliação *com* envolvimento ativo dos usuários e *com* sistema em execução. Serão realizados experimentos
*com* e *sem* um contexto realístico. Os experimentos estão descritos
no Capítulo \ref{experimentos}.

<!-- Essa pesquisa utiliza filosofia Pragmática \cite[easterbrook2008selecting], ao escolher o método de pesquisa que melhor convém ao pesquisador para solucionar o problema em que se depara. -->

O contexto da pesquisa contempla apenas estudantes com nível superior *incompleto* ou *completo*, que tiveram contato com as normas da ABNT durante sua formação.


Fazer perguntas sobre motivação, percepção e experiência.\cite[p. 36]{guide2008}

Ver: \cite{Seaman2008QualitativeMethods}

<!-- The  principal  advantage  of  using  qualitative  methods  is  that  they  force  the 
researcher to delve into the complexity of the problem rather than abstract it away. 
Thus the results are richer and more informative. They help to answer questions 
that involve variables that are difficult to quantify (particularly human characteristics such as motivation, perception, and experience).

-->

## Publicações Relacionadas

O artigo \cite{limarka_paper} publicado no *Journal of Open Source Software* é um reconhecimento público que o software Limarka desenvolvido contempla os requisitos do *journal* \cite{joss}, que contemplam a licença, documentação, API e testes do *software*.

<!-- 
- pbcib
-->

## Estrutura da Dissertação ##

Esta proposta está dividida da seguinte forma:

- Capítulo 2: Apresenta a fundamentação teórica, abordando assuntos necessários para o desenvolvimento do trabalho;
- Capítulo 3: Apresenta um trabalho relacionado sobre adaptação da
  linguagem Markdown para um contexto científico;
- Capítulo 4: Apresenta a proposta de dissertação;
- Capítulo 5: Apresenta a proposta do experimento;
- Capítulo 6: Cronograma de atividades para atingir os objetivos.

# Fundamentação Teórica

A fundamentação teórica do trabalho apresenta as Normas da ABNT, e alguns dos seus requisitos.

Em seguida apresentamos o projeto abnTeX que implementa os requisitos das Normas da ABNT e auxiliou a popularizar o uso do Latex na comunidade acadêmica nacional.

Em seguida são apresentadas duas linguagens de marcação de texto Markdown e Asciidoc. A primeira, mais limitada, surgiu para edição de mensagens para Internet, enquanto a outra surgiu com o propósito de elaboração de livros técnicos. Ambas as linguagens não apresentam sintaxe que possibilitam a implementação dos requisitos das Normas da ABNT.

A ferramenta ABNTFÁCIL que implementa uma linguagem de marcação de texto nacional (e comercial) voltada para produção de trabalhos acadêmicos também é apresentada.

Os formulários em PDFs são apresentados como alternativas para aquisição de dados do usuário.

Argumentos de que uma linguagem não pode ser avaliada independente do seu ambiente são apresentados (sistema = notação + ambiente).

## Normas da ABNT para trabalhos acadêmicos ##

As normas da ABNT que normatizam os elementos dos trabalhos acadêmicos são apresentadas a seguir:

- ABNT NBR 14724, Informação e documentação - Trabalhos acadêmicos - Apresentação;

- ABNT NBR 6023, Informação e documentação - Referências - Elaboração;

- ABNT NBR 6024, Informação e documentação - Numeração progressiva das seções de um documento escrito - Apresentação;

- ABNT NBR 6027, Informação e documentação - Sumário - Apresentação;

- ABNT NBR 6028, Informação e documentação - Resumo - Procedimento;

- ABNT NBR 6034, Informação e documentação - Índice - Apresentação;

- ABNT NBR 10520, Informação e documentação - Citações em documentos - Apresentação;

- ABNT NBR 12225, Informação e documentação - Lombada - Apresentação;

- Código de Catalogação Anglo-Americano. 2. ed. rev. 2002. São Paulo: FEBRA, 2004.

- IBGE. Normas de apresentação tabular. 3. ed. Rio de Janeiro, 1993.

A seguir são destacadas regras de elementos relevantes a essa pesquisa: Ilustrações e tabelas.

### A Capa

A NBR 14724 \cite[p. 5-6]{ABNT14724} que normatiza a capa do trabalho, especifica que ela deve conter os seguintes elementos:


a) nome da instituição (opcional);
b) nome do autor;
c) título;
d) subtítulo;
e) número do volume;
f) local (cidade);
g) ano de depósito.


#### Discussão

A capa é um elemento frequentemente customizado pelas instituições, adicionando conteúdos que não estão presentes nas Normas, tais como:

- Logotipo da instituição.
- Curso ou Programa de Pós-Graduação;
- Departamento

A capa pode ser o primeiro elemento que o estudante irá avaliar, para verificar se um modelo está de acordo com as normas de sua instituição.


### Regras da ABNT para ilustrações e tabelas

As regras para ilustrações e tabelas são relevantes para essa pesquisa pois a sintaxe de Markdown para esses elementos não possibilita que a Norma seja contemplada.

Segundo a ABNT NBR 14724:2011 \cite[p. 11]{ABNT14724}, ao inserir uma ilustração no texto, deveremos:

- Obrigatoriamente, adicionar na *parte superior* (a) o tipo da ilustração (Figura, Quadro, Tabela etc.), (b) um travessão como separador, e (c) um título para a ilustração. (Regra de apresentação);

- Obrigatoriamente adicionar na *parte inferior*, a fonte da imagem, mesmo que seja do próprio autor. (Regra de apresentação);

- Opicionalmente notas explicativas e legendas também podem ser adicionadas na *parte inferior*. (Regra de apresentação);

- Obrigatoriamente, *referenciar* a ilustração no texto, o mais próximo possível. (Regra de utilização).

As tabelas também possuem regras de apresentações adicionais, que são normatizadas pelo IBGE, através do documento "Normas de apresentação tabular".


### Guias ou manuais conflitantes com as Normas da ABNT

Alguns guias de formatação disponibilizados por instituições de ensino superior estão em conflito com as Normas da ABNT. Os guias são documentos que apresentam informações adicionais (tais como tamanho ou tipo da fonte de determinados elementos) que direcionam os alunos a uma implementação das Normas, mas que não são exigências delas. 

Segue exemplos de trechos de guias que estão em conflito com as Normas da ABNT:

> o título [da figura] *na parte inferior*, sem ponto final, precedido da palavra FIGURA (ou GRÁFICO) e do número de ordem em algarismos arábicos, deve ser digitado em espaço simples e fonte tamanho 12, sem negrito; 
>
> na parte inferior da Figura deve constar *também* a fonte de onde foram obtidas as informações e a legenda (se houver), deve ser digitado em espaçamento simples e fonte tamanho 10, minúscula e sem negrito.  Faz-se necessária a indicação completa da fonte na seção “Referências”. \[...\] \cite[p. 7, grifo nosso]{conselheiro_lafaiete_manual_2016}

> A identificação da figura deve estar localizada em sua *parte inferior*, em letras maiúsculas, em tamanho 10, alinhada à margem lateral esquerda do texto, contendo: 
>
> \[...\] 
> 
> 3\) título, precedido por *um hífen*, sem ponto final. \cite[p. 6, grifo nosso]{joelma_marques_da_silva_normas_2012}

### Discussão

Os guias das Normas da ABNT tem o propósito de auxiliar os alunos a realizarem uma implementação das Normas. O surgimento de inconsistências de informações entre Guias e Normas poderia ser decorrência das Normas não serem públicas.

*Os estudantes podem estarem sendo sobrecarregados com atividades de formatação*. As instituições não são obrigadas a seguirem as Normas da ABNT para trabalhos acadêmicos, elas podem elaborar regras próprias. Quando instituições elaboram guias de formatação sem ofertarem modelos (Word, LibreOffice e Latex) os estudantes são terão um esforço maior para implementar as regras da instituição em seus trabalhos.

*No caso extremo um estudante precisaria implementar quatro versões diferentes das Normas da ABNT*, quando sua formação acadêmica (graduação, especialização, mestrado e doutorado) ocorrer em instituições diferentes.


## Fluxo de escrita científica ##

<!-- http://blog.kdheepak.com/writing-papers-with-markdown.html 

-->

### Considerações Finais ###

Na fundamentação teórica apresentamos as normas da ABNT, as regras
para utilizar ilustrações e como o projeto abnTeX popularizou o uso do
Latex em trabalhos acadêmicos nacionais.

Em seguida apresentamos duas linguagens de marcação de texto: Markdown e
Asciidoc, com seus contextos de criação e suas limitações.

A ferramenta Pandoc, que implementa a linguagem Markdown, pode ser
configurada para utilizar modelos Latex para geração de arquivos
PDFs. Muitas configurações são inseridas pelo usuário através de
arquivos ou blocos no formato YAML, que possui uma sintaxe bastante
expressiva, mas um pouco complexa. A sintaxe de inserção de imagens e
tabelas utilizada pelo Markdown não permite incluir a notas
explicativas ou informar a fonte da imagem, requisitos para produção
de textos em conformidade com as Normas da ABNT.

O formato de arquivo PDF, bastante utilizado para publicação de
textos, também permite a inserção e extração de dados através do
recurso de formulários, fornecendo uma interface potencialmente mais
amigável que o YAML.

O sistema comercial ABNTFácil implementou uma linguagem de marcação
especializada para o público nacional, em que mesclou conceitos das
normas da ABNT com recursos do Word.

O Design de uma linguagem necessita de reflexões cognitivas de como
usuário irá interagir com ela através de um sistema. O ideal é que as
decisões da criação da linguagem estejam associadas a estudos
empíricos.

## Linguagem de marcação ##

<!-- Falar sobre Linguagem de marcação sem ser leve -->


### Docbook ###

\index{DocBook}
Nessa seção é apresentado o formato DocBook, uma linguagem de marcação com o propósito original de possibilitar publicação de de livros técnicos, que posteriormente motivou a origem do Asciidoc (\autoref{Asciidoc}).

O Docbook é um formato XML de produção de livros criado pela editora O’Reilly, especializada na produção e comercialização de livros técnicos. O formato possui diversas versões que determinam todos os elementos de um livro \cite{docbook-guide}. Foram produzidas várias ferramentas para converter um DocBook para apresentação em diversos formatos.

Na versão 5.0, o formato possui mais de 350 *tags* para contemplar a escrita dos livros e todos seus elementos: prefácio, preambulo, resumo, dedicatória, capítulo, glossário, sinopse, índice remissivo, exemplos, quadros (notas, informações, atenção), códigos fontes etc. Com o DocBook é possível separar a formatação da apresentação e configurá-la para cada formato de saída desejado.

A complexidade dessas *tags* motivou a criação de uma linguagem mais simples, mas que fosse capaz de aproveitar todas as ferramentas compatíveis com formato DocBook: a Asciidoc.

#### Discussão

## Linguagens de marcação leve ##

<!-- A lightweight markup language (LML), also termed a simple or humane markup language, is a markup language with simple, unobtrusive syntax. -->

<!--
https://techwhirl.com/series/structured-writing/
https://techwhirl.com/what-is-structured-writing/

-->

As linguagens de marcação de leves (*lightweight markup languages*) são linguagens que realizaram marcações simples em textos, de fácil leitura/escrita para os usuários. Elas costumam serem utilizadas para escrita de textos e composição de mensagens na Internet.

Nessa seção são apresentadas três linguagens de marcação: Markdown que teve como objetivo original geração de código HTML, DocBook uma linguagem XML para produção de livros e Asciidoc uma linguagem no formato de texto para geração de documentos no formato DocBook.


### Asciidoc {#Asciidoc} ###

\index{Asciidoc}
Nessa seção é apresentado o formato Asciidoc, uma linguagem de marcação simples com o propósito original agilizar a produção de livros e manter compatibilidade as ferramentas que processam DocBook.

A linguagem Asciidoc foi concebida para agilizar a produção de livros técnicos no formato DocBook.[^6] Em vez de escrever o livro em XML, o autor poderia utilizar a sintaxe do Asciidoc e exportar um arquivo em conformidade com o padrão DocBook \cite{asciidoc}.

[^6]: Formato XML, criado pela editora O’Reilly Media para editoração de
    livros técnicos: <http://www.docbook.org>.

A Asciidoc possui sintaxe mais simples para criar vários elementos de um livro compatível, com mapeamentos com o padrão Docbook (aceitando inclusive a inserção de código DocBook puro). Ela suporta modularização através da inclusão de arquivos externos. Permite incluir códigos fontes de arquivos externos e invocar um comando do sistema e para incluir seu resultado.

Ela é expansível através da instalações de filtros. Existem filtros para geração de QRCode, de diagramas UML, de partitura etc. O usuário pode escrever novos filtros.

A sintaxe de criação de tabelas permite mesclar células, configurar o alingamento de colunas (ou de células individualmente), cabeçalho e rodapé. É possível inclusão de dados externos, como um arquivo de texto separado por vírgulas.

Por ter sua origem na produção de livros, é possível referenciar automaticamente quase todos os elementos, tais como: images, tabelas, capítulos, seções, códigos, quadros etc.


### Markdown ###

\index{Markdown}
Markdown é uma linguagem de marcação de texto simples que dispensa o uso de palavras chaves \cite{pandoc}. Sua origem foi inspirada na escrita de e-mails e seu propósito original era exclusivamente *escrever para Web* (geração de código HTML). Sua filosofia é que *o formato do texto escrito possua uma formatação visual similar à apresentação do documento final* (página HTML) \cite{markdown}.

A Figura \ref{fig:rmarkdown} apresenta um subconjunto da linguagem Markdown. Na coluna esquerda (*syntax*) é apresentada a sintaxe da linguagem, na coluna do lado direito (*becomes*) temos a apresentação em HTML gerado a partir do código da esquerda. É possível ver a sintaxe para itálico, negrito, capítulos e seções (*headers*), listas, tabelas etc.

\begin{figure}[htb]
\caption{\label{fig:rmarkdown}Subconjunto da sintaxe de Markdown}
\begin{center}
\includegraphics[width=0.70000\textwidth]{imagens/Rmarkdown.png}
\end{center}
\legend{Fonte: \url{https://www.rstudio.com/wp-content/uploads/2015/02/rmarkdown-cheatsheet.pdf}}
\end{figure}


Várias ferramentas possuem implementações próprias do Markdown, expandindo o formato original para contemplar novos contextos e funcionalidaes, uma dessas ferramentas bastante utilizada é a Pandoc. 

## Ferramentas ##
### Pandoc ###

\index{Pandoc}
A arquitetura da ferramenta Pandoc permite converter arquivos em diferentes formatos.[^2] Ela difere de ferramentas usuais por possibilitar o usuário escolher quais extensões do Markdown deseja utilizar, em outras palavras, ela possibilita configurar a sintaxe da linguagem.


Na geração do código ela utiliza modelos internamente e configuração
de parâmetros em arquivos no formato YAML, que será apresentado adiante.

[^2]: Atualmente possibilita ler os formatos Markdown, CommonMark, PHP
    Markdown Extra, GitHub-Flavored Markdown, reStructuredText, HTML,
    LaTeX, MediaWiki markup, TWiki markup, Haddock markup, OPML, Emacs
    Org mode, DocBook, txt2tags, EPUB, ODT e Word docx. Além desses
    formatos, a ferramenta também permite mais formatos de saída.

### YAML ###

\index{YAML}

Nessa seção é apresentado o formato YAML, como ele agiliza a inserção de dados pelo usuário mas exige conhecimentos de estrutura de dados para sua utilização. Por essa razão foi optado por substituí-lo por um formulário PDF no Limarka.

As configurações dos modelos na ferramenta Pandoc são realizadas através de uma *linguagem de template*. O usuário deve atribuir os valores das variáveis no formato YAML, seja em um arquivo separado ou dentro do próprio texto através da criação de um bloco de configuração YAML, como mostrado em \ref{fig:yaml}. Os templates do Pandoc processam esses valores para gerar o documento final.

\begin{figure}[htb]
\caption{\label{fig:yaml}Exemplo de um bloco configuração no formato YAML}
\begin{center}
\includegraphics[width=0.80000\textwidth]{imagens/yaml.png}
\end{center}
\legend{Fonte: Autor}
\end{figure}

O formato YAML é *tipado* e *razoavelmente permissivo* \cite{yamlv12}. O fato de ser tipado facilita o desenvolvimento de aplicações, pois as variáveis retornam com o tipo apropriado, sem necessidade do desenvolvedor realizar conversões manualmente. No código na Figura \ref{fig:yaml} as variáveis `title`, `abstract` e `date` retornariam valores do tipo *String*, *String* e *Inteiro* respectivamente. O tipo da variável `author` é um pouco mais complexo, ele é *Hash* de *Lista* de *Hash* -- isso é necessário para possibilitar informar múltiplos autores.

A permissividade agiliza a inserção de dados pelo o usuário, pois permite inserir valores *String* sem aspas, como nas variáveis `title` e `fontsize`. No entanto, caso deseje-se preencher um *String* com o caracter “:”, será necessário inserir todo o valor entre aspas, como na variável `abstract`.

A *indentação* também é obrigatória para definir hierarquia. Na Figura \ref{fig:yaml}, a variável `affiliation` não estaria relacionada a `author` se não houvesse indentação.

#### Notações de imagens e tabelas do Markdown não são expressivas para atender requisitos da ABNT {#inclusao-imagens-e-tabelas} ####

Nessa seção é apresentada a notação de inclusão de imagens e tabelas
no Markdown do Pandoc *e como ela são insuficientes para atender as
especificações das Normas da ABNT*.

A notação para inserir imagens no Markdown é simples, sendo de fácil
memorização e utilização:

~~~~~~~
![Título da figura](/caminho/da/imagem.png)
~~~~~~~

A notação original foi estendida para possibilitar referenciar a
imagem e redimensionar sua apresentação:

~~~~~~~
![Título da figura](/caminho/da/imagem.png){#id width=30 height=20px}
~~~~~~~

O Markdown do Pandoc disponibiliza 4 sintaxes diferentes para elaboração de tabelas, a seguir é apresentado uma delas:

	: Título da tabela
	
    +---------------+---------------+--------------------+
    | Fruit         | Price         | Advantages         |
    +===============+===============+====================+
    | Bananas       | $1.34         | - built-in wrapper |
    |               |               | - bright color     |
    +---------------+---------------+--------------------+
    | Oranges       | $2.10         | - cures scurvy     |
    |               |               | - tasty            |
    +---------------+---------------+--------------------+


Essa notação não permite configurar alinhamento, e nenhuma das demais notações permite a mesclagem de células.

É válido mencionar que a edição de uma tabela no formato apresentado através de um editor de texto simples pode ser bastante tediosa. Na tabela a seguir é apresentado um possível problema de edição quando o editor não provém suporte a edição de tabelas com essa notação:


    +---------------+---------------+--------------------+
    | Fruit         | Price         | Advantages         |
    +===============+===============+====================+
    | Bananas       | $1.34         | Indicativo da dificuldade de edição |
    +---------------+---------------+--------------------+
    | Oranges       | $2.10         | - cures scurvy     |
    |               |               | - tasty            |
    +---------------+---------------+--------------------+

Para que essa sintaxe seja utilizada facilmente é recomendado que o editor de texto implemente funcionalidades para auxiliar na edição.

Mas nenhuma das sintaxes de Figura e Tabela possibilitam atender as especificações exigidas pelas Normas da ABNT, pois *não proveem a notação para a Fonte* da Figura ou Tabela. E as tabelas *não possuem sintaxe para mesclagem de células*.

### Editores ###

A Ferramenta Authorea 

<!-- 
https://www.authorea.com/featured_templates

Working on a research paper, thesis or a scientific project? To simplify your research submission process, we give you over 8000 templates to choose from. The templates follow guidelines set by the journals including the correct citation format. How does it work? Just pick the journal template and start writing. Don’t worry if you decide to submit your work to a different journal, you can switch templates at any time. All your data, text, images, and citations will be reformatted automatically.
-->

#### Discussão ####

Embora Asciidoc seja uma linguagem mais expressiva que Markdown, ela exige que o usário conheça uma sintaxe maior de símbolos e, os significados e grafias de alguns termos em inglês (tais como: *image, table, witdh, footnote e preface*).
	

\begin{figure}[htbp]
\caption{\label{fig:comparacao-popularidade-de-linguagens}Comparação de consultas de linguagens de marcação de texto}
\begin{center}
\includegraphics[width=1.0\textwidth]{/home/eduardo/w/dissertacao-limarka/imagens/comparacao-popularidade-de-linguagens.png}
\end{center}
\legend{Fonte: Google trends.}
\end{figure}

<!--Para referenciar a figura acima no texto utilize: Figura \ref{fig:comparacao-popularidade-de-linguagens} 
-->


### abnTeX2 ###

O abnTeX (*ABsurd Norms for TeX*) é uma iniciativa da comunidade da comunidade de software livre que teve início em 2001 para produção de documentos Latex em conformidade com as Normas da ABNT. A versão atual, abnTeX2, foi oficialmente lançada em 2012 \cite{abntex2manual}. Ele oferece modelos de documentos (artigo, trabalho acadêmico, relatório técnico e projeto de pesquisa), manuais e um conjunto de comandos para contemplar as Normas da ABNT.

O surgimento do projeto abnTeX constribuiu na popularização da utilização do Latex para trabalhos acadêmicos no Brasil. Algumas instituições de ensino superior disponibilizam modificações dos modelos baseados no abnTeX para os alunos que desejam realizar os trabalhos de conclusão de curso no Latex.

<!-- A escolha de qual ambiente utilizar varia de acordo com gosto, a área
do trabalho e afinidade do aluno (e do orientado) com as ferramentas. -->

<!--

Em ambos sistemas são possíveis elaborar modelos de documentos com
estilos de formatação, previamente configurados, para atender aos
requisitos das Normas da ABNT para trabalhos acadêmicos.

As coordenações de cursos costumam disponibilizar para os alunos tais
modelos.

costuma utilizar o Word, mas uma parcela menor opta pelo Latex, que
possui uma curva de aprendizado maior. As linguagens de marcações de
texto, como o Markdown e similares, surgem como alternativas para
simplificar a complexidade de formatação de textos.

Essas linguagens de marcação de texto alegam serem mais
ágeis\footnote{Comparado ao Latex.} para composição de textos, mas não
encontramos na literatura estudos empíricos para suportar essa
afirmação, especialmente para formatação com as normas da ABNT.

, mas o equivalente
ainda não aconteceu com as linguagens de marcação. Não encontramos
iniciativas que foram capazes de escrever e formatar, com sucesso,
monografias em Markdown no país.

O *Design* simplista do Markdown impõe algumas
limitações\footnote{Sintaxe original do Markdown
\href{https://daringfireball.net/projects/markdown/syntax}.}, uma
delas é impossibilitar adicionar, simultaneamente, as legendas e
fontes das Figuras ou Tabelas, exigência das normas da ABNT.
-->

### Formulários em PDF ###

Nessa seção apresentamos os formulários PDF como uma alternativa
amigável para obtenção de dados do usuário para processamento
posterior.

O formato PDF foi criado pela Adobe, mas atualmente é um formato aberto
mantido pela ISO. Além de textos e imagens, o formato permite a adição
de botões, *formulários*, áudio, vídeo e lógica de negócios
\cite{adobe-pdf}.

Através do software leitor de PDF e um documento com formulário é
possível solicitar ao usuário dados que podem salvos e posteriormente
processados.

### Sistema = Notação + Ambiente ###

Um sistema é formado pelo conjunto Notação (linguagem) e o Ambiente de
utilização. Não podemos avaliar uma linguagem separadamente do seu
ambiente de utilização \cite{green1989}.

<!--
A seguir são fornecidos dois exemplos que ilustram essa afirmação.

Em Java nós atribuímos *um tipo* a uma coleção (*Generics*), e o
compilador emite um erro se tentarmos adicionar um objeto de tipo
diferente. Qual seria o propósito da linguagem exigir que o usuário
forneça um tipo se a ferramenta (ambiente) não emitisse o erro de
compilação?

Outro exemplo foi a produção de uma ferramenta com o propósito de
possibilitar deficientes físicos desenvolverem aplicações em pascal
através de comandos por voz \cite{green1989}. No entanto, o sistema
permitia apenas entradas válidas, ou seja, seria necessário ditar as
instruções sequencialmente e sem nenhum erro de sintaxe. Uma decisão
do design do sistema causou uma limitação na utilização da linguagem,
pois exigia um esforço cognitivo enorme do usuário para programar
nesse ambiente.
-->

<!--

O Design de uma linguagem deve levar em consideração aspectos de
usabilidade. Quem desejar implemetar uma nova linguagens encontrará
recomendações sobre o tema em \cite{pane1996}, \cite{green1989} e \cite{green1998}. O
desginer deverá ponderar sobre diversos aspectos da linguagem, entre
eles:

-->


# Trabalhos relacionados

Nessa seção são apresentados os trabalhos relacionados da pesquisa.

O R Markdown é apresentado como um exemplo de personalização da
linguagem Markdown para possibilitar a reprodutibilidade de pesquisas
científicas.

Os demais trabalhos apresentam análises de usabilidade que foram
empregadas utilizando o *framework* de Dimensões Cognitivas.

O último trabalho relacionado apresenta um Questionário para avaliação
de sistemas através de experiências de usuários que não conhecem o
*framework.*

## R Markdown: linguagem para reprodutibilidade de pesquisas científicas

\index{R Markdown}
Uma das iniciativas de utilização de Markdown na escrita científica é o R Markdown, disponibilizado na ferramenta R Studio \cite{rmarkdown}. O RStudio é uma IDE que facilita a criação, execução e depuração de *scripts* R, utilizado principalemnte para análises estatísticas.

O R Markdown é essencialmente Markdown, mas possibilita a inserção de blocos de instruções na linguagem R para realização de tratamentos estatísticos (como geração de gráficos, tabelas etc.). Durante a compilação de um documento os gráficos ou tabelas são gerados dinamicamente através da execução dos *scripts* R e inseridos no documento.


### Discussão

\index{reprodutibilidade}
A linguagem R Markdown tem o propósito de facilitar a *reprodutibilidade* de pesquisas científicas. A *replicação* de uma pesquisa consiste em executar toda a análise estatística novamente, gerar gráficos ou tabelas e incorporá-los no documento final, no mesmo ambiente de trabalho. A *reprodução* da pesquisa consiste em outro pesquisador ser capaz de reproduzir os mesmos resultados em um ambiente de trabalho diferente \cite{gandrud2013reproducible}.

Supondo um artigo científico que contenha um gráfico proveniente de um análise de dados, como esse gráfico foi gerado? Quais os dados utilizados? Qual método de análise foi empregado? Quais parâmetros foram utilizados?  Através dos *scripts* R é possível especificar todas essas informações. O autor da pesquisa é o primeiro beneficiado, pois consegue facilmente replicar a análise mesmo quando os dados mudam.

Se os dados da pesquisa esteveremm disponibilizados publicamente outros pesquisadores podem reproduzir o mesmo ambiente de execução e chegar aos mesmos resultados, promovendo a *reprodutibilidade* de pesquisas científicas.

<!--
O surgumento de R Markdown mostra que a linguagem Markdown já foi
estendida para proporcionar produção de documentos acadêmicos e
reprodutibilidade de pesquisa.

No entanto, a linguagem de marcação de texto R Markdown não é
expressiva o suficiente para atender as exigências das normas da ABNT
para elaboração de trabalhos acadêmicos, conforme explicado na Seção
\ref{inclusao-imagens-e-tabelas}.

-->

## Proposta para utilização de Markua em dissertações no Departamento de Minas da FEUP

\index{Markua}
Existe uma proposta \cite{minas} de produção de dissertações para o Departamento de Minas da Faculdade de Engenharia da Universidade do Porto com utilização de Markua, uma linguagem de marcação leve baseada em Markdown e especializada para produção de livros \cite{markua}.

O Markua contém a sintaxe base do Markdown e implementa diversas extensões para contemplar as necessidades de autores de livros. Dentre as funcionalidades adicionadas estão: sintaxe própria de tabelas, que permite mesclagem de células; inclusão de vídeo e áudio; inclusão de código fonte a partir de arquivos; inclusão de quadros ao lado e formatação de parágrafo.

A proposta requer a utilização do fluxo de trabalho disponibilizado pelo site <https://leanpub.com>. O autor da dissertação deveria baixar um modelo de dissertação e editá-lo localmente utilizando a sintaxe de Markua. Os conteúdos são submetidos ou sincronizados com o site através de serviços como o Dropbox, Github ou Bitbucket. Em seguida o site iria gerar um PDF que deveria ser aceito pelo curso.

### Discussão

Essa proposta pode ser considerada uma tentativa local para agilizar as produções de Dissertações. Esse fluxo de trabalho apresenta uma tentativa para diminuir o esforço empreendido pelos estudantes para produzir e formatar uma Dissertação. Ao utilizar Markua e Leanpub os estudantes seriam capazes de produzir um livro facilmente, que deveria ser aceito pelo departamento como uma dissertação.

O modelo disponibilizado tenta contemplar as normas da ABNT, fornecendo uma estrutura de pré-textual, textual e pós-textual que se assemelha às Normas. Mas o sistema não permite a parametrização dos *layouts* e estilos. Por exemplo, embora seja possível formatar um parágrafo para ser utilizado como uma citação longa, não é possível alterar sua formatação para adequar-se as normas da ABNT. O sistema também não prevê a inclusão de PDFs, um recurso desejado para apresentar artigos publicados ou Anexos nos TCCs. O sistema do Leanpub foi projetado para produção de livros em diversos formatos, incluindo PDFs e formatos específicos para leitores de livros digitais, e por isso disponibiliza recursos disponíveis em ambientes específicos.

<!-- https://leanpub.com/lean
Lean Publishing
Peter Armstrong
Peter Armstrong

This book explains the philosophy behind Leanpub, from its origin in "a book is a startup" to the present form. Lean Publishing is the act of publishing an in-progress book using lightweight tools and many iterations to get reader feedback, pivot until you have the right book and build traction once you do.


http://shop.oreilly.com/category/early-release.do

Get Early Access to O'Reilly Titles
Ebooks and videos you can only buy at shop.oreilly.com

With Early Release ebooks and video training, you get access to titles while they are being written so you can take advantage of these technologies right now. You'll receive updates when content is added, as well as the completed ebooks and videos when they're done.

Video training and ebooks from shop.oreilly.com are DRM-free. You get free lifetime access, multiple file formats, and free updates. Sync with Dropbox and Drive—your files, anywhere.

-->



## ABNTFÁCIL: formatação de trabalhos acadêmicos ##

\index{ABNTFÁCIL}
A elaboração de uma linguagem para produção de trabalhos acadêmicos em conformidade com as normas da ABNT não é algo inédito, existe um software nacional que implementa uma linguagem de marcação própria, concebida com esse propósito.

O software ABNTFÁCIL (Figura \ref{fig_abntfacil_apresentacao}) possui duas notações: a linguagem de edição e formulários para configuração de diversos elementos \cite{abntfacil}. O processo de compilação utiliza macros do MS-Word, que geram os documentos com a formatação apropriada.

\begin{figure}[htbp]
\caption{\label{fig_abntfacil_apresentacao}Apresentação do Software ABNTFÁCIL}
\begin{center}
\includegraphics[width=0.85000\textwidth]{imagens/abntfacil-apresentacao.jpg}
\end{center}
\legend{Fonte: \citeonline{abntfacil}.}
\end{figure}

A linguagem do ABNTFÁCIL utiliza *tags*, com formato parecido com xml. Todas as *tags* são em português (ver Figuras \ref{fig:abntfacil:tags} e \ref{fig:abntfacil:tags:independentes}) e curtas, sendo fáceis de serem memorizadas e digitadas.

\begin{figure}[htbp]
\caption{\label{fig:abntfacil:tags}Tags com abertura e fechamento do ABNTFÁCIL}
\begin{center}
\includegraphics[width=0.85000\textwidth]{imagens/abntfacil-tags-com-fechamento.png}
\end{center}
\legend{Fonte: \citeonline{abntfacil}.}
\end{figure}

\begin{figure}[htbp]
\caption{\label{fig:abntfacil:tags:independentes}Tags independentes do ABNTFÁCIL}
\begin{center}
\includegraphics[width=0.85000\textwidth]{imagens/abntfacil-tags-independentes.png}
\end{center}
\legend{Fonte: \citeonline{abntfacil}.}
\end{figure}

O ABNTFÁCIL utiliza formulários para configurar vários elementos, tais
como Folha de Rosto (Figura \ref{fig:abntfacil:folha-de-rosto}),
Quadros (Figura \ref{fig:abntfacil-quadro} e \ref{fig:abntfacil-quadro-tag}).

\begin{figure}[htbp]
\caption{\label{fig:abntfacil:folha-de-rosto}Configuração da folha de rosto através de formulário}
\begin{center}
\includegraphics[width=0.85000\textwidth]{imagens/abntfacil-formulario-folha-de-rosto.png}
\end{center}
\legend{Fonte: \citeonline{abntfacil}.}
\end{figure}

\begin{figure}[htbp]
\caption{\label{fig:abntfacil-quadro}Configuração para inserção de Quadro através de formulário}
\begin{center}
\includegraphics[width=0.85000\textwidth]{imagens/abntfacil-quadro.png}
\end{center}
\legend{Fonte: \citeonline{abntfacil}.}
\end{figure}

\begin{figure}[htbp]
\caption{\label{fig:abntfacil-quadro-tag}Apresentação da {\em tag} de Quadro no documento}
\begin{center}
\includegraphics[width=0.85000\textwidth]{imagens/abntfacil-quadro-tag.png}
\end{center}
\legend{Fonte: \citeonline{abntfacil}.}
\end{figure}

O ABNTFÁCIL implementa um gestor de referências próprio (Figura \ref{fig:abntfacil:referencias}) e mecanismos para
referenciá-las, através de formulários.

\begin{figure}[htbp]
\caption{\label{fig:abntfacil:referencias}Formulário de cadastro de uma referência de Artigo}
\begin{center}
\includegraphics[width=0.85000\textwidth]{imagens/abntfacil-referencias.png}
\end{center}
\legend{Fonte: \citeonline{abntfacil}.}
\end{figure}

### Discussão

Apesar do ABNTFÁCIL ser um solução especializada nas Normas da ABNT ela falha em implementar a Norma, expõe conceitos originados no MS  Word, não permite personalização e interoperabilidade, e impossibilita utilizar alguns recursos como Fórmulas e Códigos.

Percebemos que algumas *tags* foram inspiradas nas normas da ABNT: **QDR** (Quadro), **TAB** (Tabela), **int** (Introdução), **NRP** (Nota de rodapé), **ctd** (Citação direta) e **img** (Imagem). E outras foram inspiradas na nomenclatura que o MS-Word utilizada para os recursos: **mci** (marcadores de itens – *lista não ordenada*), **mcl** (marcadores com letras – *lista ordenada com letras*), **mcn** (*marcador de número – lista ordenada por números*).

Inexiste meios para customizar a geração do documento, além dos já previstos pela ferramenta. Por exemplo, não seria possível personalizar a capa do trabalho, embora a alteração possa ser realizada manualmente no arquivo do Word após geração.

Não existe suporte a equações, lista de tabelas, inserção de códigos, fontes de imagens e tabelas e referenciação de conteúdos no texto.
O suporte a Anexos e Apêndices é realizado através da geração de páginas em branco, que devem ser substituídas por páginas impressas externamente, mas mantendo a numeração exigida pela ABNT.

As soluções adotadas pelo ABNTFÁCIL, além de serem proprietárias, não possuem interoperabilidade com outros formatos internacionais. A sintaxe da linguagem é proprietária e não é utilizada por outros aplicativos. O sistema de referências não importa entradas salvas no *formato bibtex*, o único meio de inserir uma nova referência é através do preenchimento de formulários.

A solução provavelmente tem como público alvo usuários da área de Humanas, que desconhecem as normas da ABNT, estão dispostos a pagarem pelo aplicativo, e que não precisam inserir equações ou códigos. 

# Miolo
# Proposta de dissertação

A motivação dessa pesquisa é ofertar uma linguagem especializada para
produção de trabalhos acadêmicos em conformidade com as Normas da
ABNT.  O objetivo dessa pesquisa é *propor* e *avaliar* a usabilidade
de um sistema que implementa essa linguagem.

Para alcançar este objetivo, os seguintes passos serão seguidos:

-   Elaboração da ferramenta Limarka para implementar a linguagem;

-   Configuração de modelo Latex, baseados no abnTeX2, e parametrizado
    para utilização com a ferramenta Pandoc para geração de trabalhos
    acadêmicos (monografias, dissertação e tese) com a formatação
    segundo as regras da ABNT;

-   Elaboração e utilização de formulário PDF para obter configurações
    do usuário;

-   Avaliação de usabilidade utilizando o *framework* de Dimensões
    Cognitivas baseada na utilização de um caso real (escrita dessa
    dissertação) e experimentos com aplicação do questionário com
    contextos não realísticos.

<!-- conferência para submissão: https://www.computer.org/web/tlt/author -->

## Status de implementação ##

\cite{limarka_paper}.

A ferramenta Limarka foi produzida na linguagem Ruby, utilizando
testes comportamentais automatizados (Apêndice \ref{apendice:testes}).

Atualmente a ferramenta está parcialmente implementada, mas
utilizável, encontra-se disponível em
\url{https://github.com/abntex/limarka}. Ainda requer a implementação
de alguns recursos para melhorar a usabilidade e algumas correções
devido a decisões de projeto que não demonstraram ser positivas
(personalização do modelo disponibilizado pelo Pandoc).

O formulário PDF também encontra-se funcional, no Apêndice
\ref{apendice:formulariopdf} encontra-se o formulário utilizado na
geração deste documento.

Uma das dependências do projeto, o *pdf-forms*, possui uma limitação:
não permite ler campos com múltiplas linhas de um formulário PDF. Em
13 de Julho submeti uma correção no projeto
(\url{https://github.com/jkraemer/pdf-forms/pull/51}) mas ainda não
foi aceita pelo mantenedor do projeto, mesmo que com testes de
compatibilidade implementados sem apresentarem erros.

A solução temporária foi a geração de uma versão local com a
atualização, e publicação dessa versão junto com a distribuição da
ferramenta na sua primeira versão.


# Proposta de Avaliação Experimental {#experimentos}

A avaliação de usabilidade de uma linguagem deve ser realizada em
conjunto com o sistema que a provém (Seção \ref{sistema-notauxe7uxe3o-ambiente}).
O *framework* de Dimensões Cognitivas de Notação será método
empregado para avaliar a usabilidade do sistema com a linguagem
em desenvolvimento.

<!-- PQ esse foi escolhido e outro não? -->

Os experimentos de a avaliação da usabilidade do sistema podem ser
realizados através de um *expert* do *framework* verificando o
sistema, ou através de impressões de usuários do sistema. 

Os dois tipos de experimentos serão realizados nessa pesquisa, e estão
descritos a seguir.

## Experimento com *expert* e contexto realístico

O *framework* de Dimensões Cognitivas foi elaborado para ser utilizado
por alguém que conheça bem o *framework* (um *expert*) e também
conheça bem o sistema \cite{CDquestionario}.

Por esse razão um experimento será realizado pelo autor desse
trabalho, em contexto realístico, na elaboração de sua dissertação.

O autor desse trabalho irá utilizar o próprio sistema em
desenvolvimento para a escrita de sua dissertação.

Durante a implementação da ferramenta e a experiência com a utilização
do sistema serão registrados informações referente a todas as
dimensões cognitivas do *framework*, que irão compor a análise de
usabilidade do sistema.

## Experimento com opiniões de usuários e contexto realístico

O questionário elaborado em \cite{CDquestionario} e disponibilizado no
Anexo \ref{anexoquestionario} foi elaborado com o propósito de
possibilitar uma avaliação através do *feedback* de usuários que não
conhecem o *framework* de Dimensões Cognitivas de Notação.

Os usuários receberão uma capacitação para utilização do sistema e
serão solicitados a realizarem diversas ações relacionadas a
elaboração de uma monografia durante um determinado tempo.

Em seguida o questionário será preenchido através de entrevistas, com
os *feedbacks* dos usuários.

## Experimento não controlado e com opiniões de usuários da internet

Com a publicação de uma *release* oficial da ferramenta, usuários
serão convidados através de fóruns e redes sociais para experimentação
da ferramenta e realização de *feedbacks* através do preenchimento do
mesmo formulário do experimento anterior.

# Desenvolvimento do sistema

<!-- 

Neste capítulo do trabalho está descrito o desenvolvimento de um sistema que utiliza o Ki-
nect como dispositivo de interface natural para a captura de movimentos.

xdg-open /home/eduardo/Downloads/dissertacoes/6116-2013.pdf_unencrypted.pdf

-->

## Descrição do sistema

fig:modulos do sistema


### Módulo X

### Módulo Y



## Requisitos

### BNR 6028-2003 - Resumo

### Resumo

#### Posição (NBR 6028-2003 3.2)
#### Conteúdo (NBR 6028-2003 
#### Tamanho
#### Palavras chaves

#### BNR 6028-2003 3.3.3 Palavras chaves abaixo do resumo e separadas por ponto

#### BNR 6028-2003 3.3.5 Limitado de 150 a 500 palavras



## Arquitetura

fig diagrama de classes

exemplo de código fonte

Código de interação com o pandoc



## Discussão

# Processo de desenvolvimento

## Mapeamento de requisitos

## Projetos no github

## Issues 

## Changelog

## Documentação

## Vídeos

## Discussão


# Miolo da Dissertação
# Avaliação experimental

## Experimento

P:localidade do experimento, quantidade de alunos, cursos e instituições. Critérios para seleção dos participantes.

Estrutura do experimento.

## cuidados tomandos

The observer must take measures to ensure that those being observed are not constantly thinking 
about being observed. \cite[p. 38]{guide2008}
Ideally,  all  those  being 
observed should know beforehand that the observer will be observing and why. 


Entrevista não estruturada \cite[p. 44]{guide2008}: as opposed to an unstructured interview in which the interviewee is the source of both questions and answers. In an unstructured interview, the object is to elicit as much information as possible on a broadly defined topic. The interviewer does not know the form of this information ahead of time, so the questions asked must be as open-ended as possible. In the extreme, the interviewer doesn’t even ask questions, but just mentions the topic to be discussed and allows the interviewee to expound.


[p. 45] It is also important to make it clear that there are no “right” answers. 


[p. 45] Interview guides are purely for the use of the interviewer; they are never shown to the interviewee.

Criar um guida para entrevista.



[p. 46] However, many of these questions were open-ended and were intended for (and successful in) 
soliciting other information not foreseen by the interviewer. For example, one ques-
tion on the COTS Study interview guide was:
What are the disadvantages of [COTS integration] in comparison with tradi-
tional development?

## Plano e execução do experimento

Criação de um grupo no whatsapp?

Imagem de aluno executando o experimento

## Análise do experimento

percentual que já utilizaram antes

- Facilidade de utilização de ferramenta?
- Desafios da ferramenta?
- O produto final do documento?
- O que poderia ser melhorado?
- Módulos do sistema
- Figuras e tabelas
- Análise de conformidade com as normas
- Benefícios do sistema

## Discussão

# Resultados

Vol  | Campo | Valor
:---:|-----------------|----------------------------------------------
1 | Formação Acadêmica | Ensino técnico em Instituto Federal, Graduação em Ciência da Computação.

Formação Acadêmica | Voluntários
:----------:|:-------------------------------------:
Engenharia de computação | 4
Ciência da Computação | 2
Engenheria Elétrica, Mestrando | 1
Engenheira Florestal, Mestrando | 1
Engenharia de Produção | 1
Engenharia ambiental | 1


# Considerações finais

# Recomendações

## Recomendações para relaxamento das Normas da ABNT para facilitar adoção de Markdown

* Permitir que os títulos de Ilustrações e Tabelas possam apareçam na parte superior ou inferior, mantendo o mesmo padrão ao longo do documento. (ABNT NBR 14724:2011, item 5.8 Ilustrações);
* Possibilitar que as indicações de fonte das Ilustrações e tabelas possam ser apresentadas como Notas de Rodapé, mesmo quando utilizando o Sistema de Referências Numérico. (NBR 6023:2002, item 9.2 Sistema numérico, ABNT NBR 14724:2011, item 5.8 Ilustrações);
	* Somente no caso em que se estiver utilizando Referências Numéricas através de notas de rodapé, as notas de fontes adotariam o sequenciamento alfabético para distingui-las das referências.

## Recomendações para instituições

- Tornar opcional a especificação de Fontes para Ilustrações e Tabelas.



## Extrapolação

- Experimento realizado em contexto não realístico

## Sugestões para trabalhos futuros

- Utilização para produção de artigos do SBC
- Utilização para produção de trabalhos escolares

<!-- 
- Avaliação do software
SOFTWARE EVALUATION : TUTORIAL - BASED:
https://www.software.ac.uk/sites/default/files/SSI-SoftwareEvaluationTutorial.pdf?_ga=1.60258478.2094067149.1483721180
-->

<!-- pdftk A=xxx-Monografia.pdf B=configuracao.pdf cat A1-47 B A68-END output proposta-qualificacao-eduardo.pdf
-->
# Conclusão
