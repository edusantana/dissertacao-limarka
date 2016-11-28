# Introdução

Durante o período de formação superior no Brasil, muitos alunos *sofrem* para elaborar e entregar uma monografia, como requisito para conclusão dos estudos. Uma parte desse sofrimento está associada à formatação da monografia (no software de editoração) em conformidade com as normas da Associação Brasileira de Normas Técnicas (ABNT).

O público nacional atualmente possui, de modo geral, duas alternativas para formatação de trabalhos acadêmicos: (1) Utilização de um editor de texto rico (como o Microsoft Word ou Libre Office) ou (2) Utilização do Latex. Embora o Latex possua uma *curva de aprendizado maior*, a produção de trabalhos acadêmicos com um editor de texto rico exige conhecimentos avançados da ferramenta (tais como utilização de estilos, geração de sumário e gerência de referências), ou caso o usuário não domine essas técnicas terá um esforço de edição muito grande para formatações manuais de todas as seções do trabalho.

As linguagens de marcação de texto (*lightweight markup language*) surgiram, em diferentes contextos, como alternativas para elaboração e formatação de textos. Essas linguagens possibilitam os usuários redigirem em arquivos somente texto (*plain text*), com uma curva de aprendizado menor do que o Latex.

## Motivação

A motivação desse trabalho consiste em ofertar uma nova alternativa para elaboração de trabalhos acadêmicos (monografia, dissertação ou tese) utilizando uma linguagem de marcação de texto, elaborada com o propósito de redigirem e formatarem seus trabalhos em conformidade com as Normas da ABNT.

## Objetivos

### Objetivo Geral

Esse trabalho objetiva *propor* e *avaliar* um sistema que utiliza uma linguagem de marcação de texto especializada para a produção de trabalhos acadêmicos em conformidades com as normas da ABNT.

O objetivo dessa pesquisa é o desenvolvimento de uma ferramenta para possibilitar usuários escreverem os trabalhos de conclusão de curso utilizando uma _lightweight markup language_, .  Como prova de conceito da arquitetura foi desenvolvida a ferramenta Arthron.

### Objetivos Específicos

- Implementar um sistema com utilização de uma linguagem de marcação
  de texto na produção de monografias;
  
- Avaliar a usabilidade da linguagem através de experimentos de
  elaboração de trabalhos acadêmicos em contextos realístico e não realístico.


O objetivos deste trabalho são:
- Estudo de ambientes multimídia, aplicações e tecnologias relacionadas;
• Análise de ferramentas semelhantes;
• Definição de uma arquitetura distribuída da ferramenta;
• Especificar, modelar e implementar a ferramenta;
• Integrar com outros sistemas existentes de forma transparente; e
• Realizar um experimento para demonstrar viabilidade e avaliar os resultados
alcançados com ferramenta.


## Método

Um método de avaliação de um sistema pode ocorrer em três dimensões: a) com ou sem o envolvimento ativo dos usuários, b) com ou sem o sistema em execução e c) com ou sem um contexto realístico de utilização. Além disso, seus os requisitos de avaliação mais comuns são: validade analítica, escopo, confiança, produtividade, usabilidade e capacidade de aprendê-lo \cite{blandfordann}.

<!-- Tese: elaborar uma metodologia para avaliar sistemas para produção de trabalhos acadêmicos.

Ver: Chapter 4 Ann Blandford and Thomas Green Methodological Development -->

Essa pesquisa utilizará avaliação *com* envolvimento ativo dos usuários e *com* sistema em execução. Serão realizados experimentos
*com* e *sem* um contexto realístico. Os experimentos estão descritos
no Capítulo \ref{experimentos}.

O método de avaliação da usabilidade empregado será o mesmo de \cite{green1996usability} do trabalho relacionado (Seção \ref{referenciadeavaliacao}) que utiliza o *framework* de Dimensões Cognitivas (descrito mais adiante na Seção \ref{frameworkcd}).

<!-- Essa pesquisa utiliza filosofia Pragmática \cite[easterbrook2008selecting], ao escolher o método de pesquisa que melhor convém ao pesquisador para solucionar o problema em que se depara. -->

O contexto da pesquisa contempla apenas usuários com nível superior
*incompleto* ou *completo*, que tiveram contato com as normas da ABNT
durante sua formação.

## Estrutura da Dissertação

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

Por fim o *framework* de Dimensões Cognitivas de Notações é apresentado com a descrição de suas dimensões e como ele pode ser utilizado para avaliar a usabilidade um sistema.

## Lightweight markup language

<!-- A lightweight markup language (LML), also termed a simple or humane markup language, is a markup language with simple, unobtrusive syntax. -->

## Normas da ABNT para trabalhos acadêmicos ##

As normas da ABNT que normatizam como cada elemento dos trabalhos acadêmcios trabalhos são as seguintes:

- ABNT NBR 14724, Informação e documentação - Trabalhos acadêmicos -
    Apresentação;

- ABNT NBR 6023, Informação e documentação - Referências - Elaboração;

- ABNT NBR 6024, Informação e documentação - Numeração progressiva das
    seções de um documento escrito - Apresentação;

- ABNT NBR 6027, Informação e documentação - Sumário - Apresentação;

- ABNT NBR 6028, Informação e documentação - Resumo - Procedimento;

- ABNT NBR 6034, Informação e documentação - Índice - Apresentação;

- ABNT NBR 10520, Informação e documentação - Citações em documentos -
    Apresentação;

- ABNT NBR 12225, Informação e documentação - Lombada - Apresentação;

- Código de Catalogação Anglo-Americano. 2. ed. rev. 2002. São Paulo:
    FEBAB, 2004.

- IBGE. Normas de apresentação tabular. 3. ed. Rio de Janeiro, 1993.

A seguir serão destacadas as regras a elementos relevantes a essa pesquisa.

### Ilustrações e tabelas

Segundo a ABNT NBR 14724:2011, ao inserir uma ilustração no texto, deveremos:

- Obrigatoriamente, adicionar na *parte superior* (a) o tipo da
    ilustração (Figura, Quadro, Tabela etc.), (b) um travessão como separador, e (c) um título para a ilustração. (Regra de apresentação);

- Obrigatoriamente adicionar na *parte inferior*, a fonte da imagem,
    mesmo que seja do próprio autor. (Regra de apresentação);

- Opicionalmente notas explicativas e legendas também podem ser
    adicionadas na *parte inferior*. (Regra de apresentação);

- Obrigatoriamente, referenciar a ilustração no texto, o mais
    próximo possível. (Regra de utilização).

As tabelas também possui regras de apresentações adicionais, que são normatizadas pelo IBGE, através do documento "Normas de apresentação tabular".

### Guias ou manuais conflitantes com as Normas da ABNT

Muitos guias de formatação disponibilizados por instituições de ensino superior possuem erros. Provavelmente devido as normas da ABNT não serem distribuídas livremente, muitas instituições produzem guias próprios para auxiliarem os alunos na formatação dos trabalhos. Percebemos que os guias apresentam informações adicionais (tais como tamanho ou tipo da fonte de determinados elementos) que direcionam os alunos a uma implementação das normas, mas que não são exigências delas.

Também é possível encontrar manuais tais como \cite{joelma_marques_da_silva_normas_2012} e \cite{conselheiro_lafaiete_manual_2016} que apresentam instruções conflitantes com as normas, os grifos a seguir ilustram isso:

> A identificação da figura deve estar localizada em sua *parte inferior*, em letras maiúsculas, em tamanho 10, alinhada à margem lateral esquerda do texto, contendo \[...\]
>
> A fonte de onde foram extraídas as informações deve ser colocada *abaixo do título da figura*, precedida dos seguintes itens \[...\]
	
## abnTeX2 #

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

## Linguagens de marcação de texto ##

As linguagens de marcação de texto (*Lightweight markup language*) são
linguagens que realizaram marcações no texto de forma simples, de
fácil leitura/escrita para o usuário. Elas costumam serem utilizadas
para composição de mensagens na internet, ou geração de textos.

Nessa seção são apresentadas quatro linguagens: Markdown que teve como
objetivo original geração de código HTML, DocBook uma linguagem XML
para produção de livros e Asciidoc uma linguagem no formato de texto
para geração de documentos no formato DocBook e o ABNTFÁCIL linguagem
criada para produção de trabalhos acadêmicos em conformidade com
Normas da ABNT.

### Markdown

Markdown é uma linguagem de marcação de texto simples que dispensa o uso
de palavras chaves \cite{pandoc}. Sua origem foi inspirada na escrita de
e-mails e seu propósito original era exclusivamente *escrever para
Web* (geração de código HTML). Sua filosofia é que o formato do
texto escrito possua uma formatação visual similar à apresentação do
documento final (página HTML).

Várias ferramentas possuem implementações próprias do Markdown,
expandindo o formato original para contemplar novos recursos e
contextos, uma dessas ferramenta é a Pandoc.

#### Pandoc

A arquitetura da ferramenta Pandoc permite converter arquivos em
diferentes formatos.[^2] Ela difere de linguagens normais por
possibilitar o usuário escolher quais extensões do Markdown deseja
utilizar, em outras palavras, ela possibilita configurar a sintaxe da
linguagem. 

A Figura \ref{fig:rmarkdown} apresenta um subconjunto da linguagem. Na
coluna esquerda (*syntax*) é apresentada a sintaxe da linguagem, na
coluna do lado direito (*becomes*) temos a apresentação em HTML gerado
a partir do código da esquerda. É possível ver a sintaxe para itálico,
negrito, capítulos e seções (*headers*), listas, tabelas etc.

\begin{figure}[htb]
\caption{\label{fig:rmarkdown}Subconjunto da sintaxe do Markdown}
\begin{center}
\includegraphics[width=0.70000\textwidth]{imagens/Rmarkdown.png}
\end{center}
\legend{Fonte: \url{https://www.rstudio.com/wp-content/uploads/2015/02/rmarkdown-cheatsheet.pdf}}
\end{figure}

Na geração do código ela utiliza modelos internamente e configuração
de parâmetros em arquivos no formato YAML, que será apresentado adiante.

[^2]: Atualmente possibilita ler os formatos Markdown, CommonMark, PHP
    Markdown Extra, GitHub-Flavored Markdown, reStructuredText, HTML,
    LaTeX, MediaWiki markup, TWiki markup, Haddock markup, OPML, Emacs
    Org mode, DocBook, txt2tags, EPUB, ODT e Word docx. Além desses
    formatos, a ferramenta também permite mais formatos de saída.

#### YAML

Nessa seção é apresentado o formato YAML, como ele agiliza a inserção
de dados pelo usuário mas requer conhecimentos de tipagem de dados e
indentação para sua utilização.

As configurações dos modelos na ferramenta Pandoc são realizadas
através de uma sintaxe de configuração de modelos. O usuário deve
atribuir os valores das variáveis no formato YAML, em um arquivo
separado ou dentro do próprio texto através da criação de um bloco de
configuração YAML, como mostrado em \ref{fig:yaml}.

\begin{figure}[htb]
\caption{\label{fig:yaml}Exemplo de um bloco configuração no formato YAML}
\begin{center}
\includegraphics[width=0.70000\textwidth]{imagens/yaml.png}
\end{center}
\legend{Fonte: Autor}
\end{figure}

\begin{figure}[htb]
\caption{\label{fig:yaml}Exemplo de um bloco configuração no formato YAML}
\begin{center}
\includegraphics[width=0.80000\textwidth]{imagens/yaml.png}
\end{center}
\legend{Fonte: Autor}
\end{figure}

\begin{figure}[htb]
\caption{\label{fig:yaml}Exemplo de um bloco configuração no formato YAML}
\begin{center}
\includegraphics[width=0.30000\textwidth]{imagens/yaml.png}
\end{center}
\legend{Fonte: Autor}
\end{figure}


<!--Texto para referenciá-la:-->
(Figura \ref{fig:yaml})

<!--Códigos latex para inserir a Figura-->
\begin{figure}[htbp]
\caption{\label{fig:yaml}Legenda da figura.}
\begin{center}
\includegraphics[width=1.0\textwidth]{imagens/yaml.jpg}
\end{center}
\legend{Fonte: Autor.}
\end{figure}




O formato YAML é *tipado* e *razoavelmente permissivo*
\cite{yamlv12}. O fato de ser tipado facilita o desenvolvimento de
aplicações, pois as variáveis retornam com o tipo apropriado, sem
necessidade do desenvolvedor realizar um *parse* manual. No código na
Figura \ref{fig:yaml} as variáveis *title*, *abstract* e *date*
retornariam valores do tipo *String*, *String* e *Inteiro*
respectivamente. O tipo da variável *author* é um pouco mais complexo,
ele é *Hash* de *Lista* de *Hash* - no modelo padrão de Pandoc isso é
necessário para possibilitar informar o nome e a filiação de mais de
um autor.

A permissividade agiliza a inserção de dados pelo o usuário, pois
permite inserir valores *String* sem aspas, como nas variáveis *title*
e *fontsize*. No entanto, caso deseje-se preencher um *String* com o
caracter “:”, será necessário inserir todo o valor entre aspas, como
na variável *abstract*.

A *indentação* também é obrigatória para definir hierarquia. Na Figura
\ref{fig:yaml}, a variável *affiliation* não estaria relacionada a
*author* se não houvesse indentação.

#### Notações de imagens e tabelas do Markdown não são expressivas para atender requisitos da ABNT {#inclusao-imagens-e-tabelas}

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

O Markdown do Pandoc disponibiliza 4 sintaxes diferentes para
elaboração de tabelas, a seguir é apresentado uma delas:

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


Essa notação não permite configurar alinhamento, e nenhuma das demais
notações permite a mesclagem de células.

É válido mencionar que a edição de uma tabela no formato apresentado
através de um editor de texto simples pode ser bastante tediosa. Na tabela
a seguir é apresentada um possível problema de edição quando o editor
não provém suporte a edição de tabelas com essa notação:


    +---------------+---------------+--------------------+
    | Fruit         | Price         | Advantages         |
    +===============+===============+====================+
    | Bananas       | $1.34         | Indicativo da dificuldade de edição |
    +---------------+---------------+--------------------+
    | Oranges       | $2.10         | - cures scurvy     |
    |               |               | - tasty            |
    +---------------+---------------+--------------------+

Para que essa sintaxe seja utilizada facilmente é recomendado que o
editor de texto implemente funcionalidades para auxiliar na edição.

Mas nenhuma das sintaxes de Figura e Tabela possibilitam atender as
especificações exigidas pelas Normas da ABNT, pois *não proveem a
notação para a Fonte* da Figura ou Tabela. E as tabelas *não possuem
sintaxe para mesclagem de células*.

### Docbook

Nessa seção é apresentado o formato DocBook, uma linguagem complexa
com o propósito original de possibilitar escrita de livros.

O Docbook é um formato XML de produção de livros, criado pela editora
O’Reilly, especializada na produção e comercialização de livros
técnicos. O formato possui diversas versões que determinam todos os
aspectos do livro \cite{docbook-guide}. Foram produzidas várias
ferramentas para converter o documento para apresentação em outros
formatos.

Na versão 5.0, o formato possui mais de 350 *tags* para contemplar
escrita dos livros e todos seus elementos: prefácio, preambulo,
resumo, dedicatória, capítulo, glossário, sinopse, índice remissivo,
exemplos, quadros (notas, informações, atenção), códigos fontes
etc. Com ele é possível separar a formatação da apresentação e
configurá-la para cada formato de saída desejado.

A complexidade dessas *tags* motivou a criação de uma
linguagem mais simples, mas que fosse capaz de aproveitar todas as
ferramentas compatíveis com formato DocBook: a Asciidoc.

### Asciidoc

Nessa seção é apresentado o formato Asciidoc, uma linguagem simples
com o propósito original agilizar a produção de livros e exportar
código compatível com o DocBook.

A linguagem Asciidoc foi concebida para agilizar a produção de livros
técnicos no formato DocBook.[^6] Em vez de escrever o livro em XML, o
autor poderia utilizar a sintaxe do Asciidoc e exportar um arquivo em
conformidade com o padrão DocBook \cite{asciidoc}.

[^6]: Formato XML, criado pela editora O’Reilly Media para editoração de
    livros técnicos: <http://www.docbook.org>.

A Asciidoc possui sintaxe para criar vários elementos de um livro
compatível com o padrão Docbook (aceita inclusive a inserção de código
DocBook puro). Ela suporta modularização através da inclusão de
arquivos externos. É possível incluir um código fonte de um arquivo ou
invocar um comando do sistema e incluir seu resultado.

Ela é expansível através da instalações de filtros. Existem filtros para
geração de QRCode, de diagramas UML, de partitura etc.

A sintaxe de criação de tabelas permite mesclar células, configurar o
alingamento de colunas (ou de células individualmente), cabeçalho e
rodapé. É possível inclusão de dados externos, como um arquivo de texto
separado por vírgulas.

É possível referenciar automaticamente quase todos os elementos, tais
como: images, tabelas, capítulos, seções, códigos, quadros etc.

Embora Asciidoc seja uma linguagem mais expressiva que Markdown, ela
exige que o usário conheça uma sintaxe maior de símbolos, os
significados e grafias de alguns termos em inglês (tais como: 
*image, table, witdh, footnote e preface*).
	
### ABNTFÁCIL: formatação de trabalhos acadêmicos ###

A elaboração de uma linguagem para produção de trabalhos acadêmicos
em conformidade com as normas da ABNT não é algo inédito, existe
um software nacional que implementa uma linguagem de marcação própria,
concebida com esse propósito.

\begin{figure}[htbp]
\caption{\label{fig_abntfacil_apresentacao}Apresentação do Software ABNTFÁCIL}
\begin{center}
\includegraphics[width=0.85000\textwidth]{imagens/abntfacil-apresentacao.jpg}
\end{center}
\legend{Fonte: \citeonline{abntfacil}}.
\end{figure}

O software ABNTFÁCIL (Figura \ref{fig_abntfacil_apresentacao}) possui
duas notações: a linguagem de edição e formulários para configuração
de diversos elementos \cite{abntfacil}. O processo de compilação
utiliza macros do MS-Word, que geram os documentos com a formatação
apropriada. 

A linguagem do ABNTFÁCIL utiliza *tags*, todas em português (Figuras
\ref{fig:abntfacil:tags} e
\ref{fig:abntfacil:tags:independentes}). Percebemos que algumas delas
foram inspiradas nas normas da ABNT: **QDR** (Quadro), **TAB**
(Tabela), **int** (Introdução), **NRP** (Nota de rodapé), **ctd**
(Citação direta) e **img** (Imagem). Outras foram inspiradas na
nomenclatura que o MS-Word utilizada para os recursos: **mci**
(marcadores de itens – lista não ordenada), **mcl** (marcadores com
letras – lista ordenada com letras), **mcn** (marcador de número – lista
ordenada por números).

\begin{figure}[htbp]
\caption{\label{fig:abntfacil:tags}Tags com abertura e fechamento do ABNTFÁCIL}
\begin{center}
\includegraphics[width=0.85000\textwidth]{imagens/abntfacil-tags-com-fechamento.png}
\end{center}
\legend{Fonte: \citeonline{abntfacil}}.
\end{figure}

\begin{figure}[htbp]
\caption{\label{fig:abntfacil:tags:independentes}Tags independentes do ABNTFÁCIL}
\begin{center}
\includegraphics[width=0.85000\textwidth]{imagens/abntfacil-tags-independentes.png}
\end{center}
\legend{Fonte: \citeonline{abntfacil}}.
\end{figure}

Através de formulários é possível configurar vários elementos, tais
como Folha de Rosto (Figura \ref{fig:abntfacil:folha-de-rosto}),
Quadros (Figura \ref{fig:abntfacil-quadro} e \ref{fig:abntfacil-quadro-tag}).

\begin{figure}[htbp]
\caption{\label{fig:abntfacil:folha-de-rosto}Configuração da folha de rosto através de formulário}
\begin{center}
\includegraphics[width=0.85000\textwidth]{imagens/abntfacil-formulario-folha-de-rosto.png}
\end{center}
\legend{Fonte: \citeonline{abntfacil}}.
\end{figure}

\begin{figure}[htbp]
\caption{\label{fig:abntfacil-quadro}Configuração para inserção de Quadro através de formulário}
\begin{center}
\includegraphics[width=0.85000\textwidth]{imagens/abntfacil-quadro.png}
\end{center}
\legend{Fonte: \citeonline{abntfacil}}.
\end{figure}

\begin{figure}[htbp]
\caption{\label{fig:abntfacil-quadro-tag}Apresentação da {\em tag} de Quadro no documento}
\begin{center}
\includegraphics[width=0.85000\textwidth]{imagens/abntfacil-quadro-tag.png}
\end{center}
\legend{Fonte: \citeonline{abntfacil}}.
\end{figure}

Através  de formulários  o ABNTFÁCIL  também implementa  um gestor  de
referências (Figura \ref{fig:abntfacil:referencias}) e mecanismos para
referenciá-las.

\begin{figure}[htbp]
\caption{\label{fig:abntfacil:referencias}Formulário de cadastro de uma referência de Artigo}
\begin{center}
\includegraphics[width=0.85000\textwidth]{imagens/abntfacil-referencias.png}
\end{center}
\legend{Fonte: \citeonline{abntfacil}}.
\end{figure}


## Formulários em PDF ##

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

## Sistema = Notação + Ambiente

Um sistema é formado pelo conjunto Notação (linguagem) e o Ambiente de
utilização. Não podemos avaliar uma linguagem separadamente do seu
ambiente de utilização \cite{green1989}.

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

<!--

O Design de uma linguagem deve levar em consideração aspectos de
usabilidade. Quem desejar implemetar uma nova linguagens encontrará
recomendações sobre o tema em \cite{pane1996}, \cite{green1989} e \cite{green1998}. O
desginer deverá ponderar sobre diversos aspectos da linguagem, entre
eles:

-->
	
## Framework de Dimensões Cognitivas de Notações {#frameworkcd}

Essa seção apresenta um *framework* para descrever a usabilidade de
um sistema.

O *framework* de Dimensões Cognitivas de Notações (*Cognitive
Dimensions of Notations framework*), foi desenvolvido para assistir
designers de sistemas de notações para avaliar o impacto que o *design*
terá sobre os usuários desses sistemas \cite{Blackwell2001}.

O objetivo do *framework* é proporcionar discussões para que o
*Designer* possa compreender as consequências cognitivas de suas
decisões. Ele descreve a usabilidade de sistemas ou artefatos
informacionais. O *framework* não tem o propósito de guiar o
desenvolvimento de novas notações, e também não oferece critérios de
*design* que devem ser seguidos \cite{green1996usability}, limita-se a
descrever as consequências das decisões do design.

Nas seções seguintes são descritas as Dimensões Cognitivas presentes
nesse *framework* \cite{Blackwell2001}.

### Viscosidade ###

<!--
- When you need to make changes to previous work, how easy is it to make the change? Why?
Quando você precisa realizar alterações em trabalhos anteriores, quão fácil é realizar a alteração? Por que?

- Are there particular changes that are more difficult or especially difficult to make? Which ones?
Existem mudanças específicas que são mais difíceis/trabalhosas de serem realizadas? Quais são elas? 

-->

A visocidade (*Viscosity*) está relacionada a resistência a
mudanças. Um sistema com alto nível de viscosidade precisa de várias
ações do usuário para atingir um objetivo. É possível distinguir
*viscosidade de repetição* de *viscosidade knock-up*.

Um exemplo de viscosidade de repetição ocorre na manutenção de um
Sumário com numeração de páginas das seções manualmente. A adição ou
remoção de parágrafos pode gerar a necessidade de atualizar todas as
referências de páginas do Sumário, as atualizações são todas do mesmo
tipo: alterar o número da página.

Um exemplo de viscosidade *knock-up* poderia ser a exclusão de um
personagem de um livro. Essa atividade requer que várias ações sejam
realizadas para manter a consistência do livro (como se o personagem
nunca houvesse existido): bantante diálogos e situações do texto devem
ser revistas, repensadas e reescritas.

<!--

Viscosity: resistance to change. A viscous system needs many user
actions to accomplish one goal. Changing all headings to upper-case may
need one action per heading. (Environments containing suitable
abstractions can reduce viscosity.) We distinguish repetition viscosity,
many actions of the same type, from knock-on viscosity, where further
actions are required to restore consistency.
-->

### Visibilidade  ###

<!--

 ability to view components easily. Systems that bury
information in encapsulations reduce visibility. Since examples are
important for problem-solving, such systems are to be deprecated for
exploratory activities; likewise, if consistency of transcription is to
be maintained, high visibility may be needed.
-->

A Visibilidade (*Visibility*) é a habilidade de ver componentes
facilmente. O encapsulamento de informações reduz a visibilidade
\cite{green1989}.


### Compromisso Prematuro ###

<!--
: constraints on the order of doing things.
Self-explanatory. Examples: being forced to declare identifiers too
soon; choosing a search path down a decision tree; having to select your
cutlery before you choose your food.
-->

<!--
**Compromisso prematuro**: O sistema pode proporcionar que o usuário
realize ações de acordo com fluxo natural de instruções que a mente (do
usuário) produz. O extremo contra exemplo seria a necessidade de
informar o texto numa ordem específica, como no caso do sistema de
reconhecimento de voz de Pascal apresentado anteriormente.
-->

O compromisso prematuro (*Premature commitment*) consiste em impor
restrições na ordem de realizar as ações. O sistema pode proporcionar
que o usuário realize ações de acordo com fluxo natural de instruções
que a mente (do usuário) produz ou impor que ele tenha que configurar
vários detalhes antes de utilizar o sistema \cite{green1989}. 

### Dependências ocultas ###

<!--

important links between entities are not visible.

If one entity cites another entity, which in turn cites a third,
changing the value of the third entity may have unexpected
repercussions. Examples: cells of spreadsheets; style definitions in
Word; complex class hierarchies; HTML links. There are sometimes actions
that cause dependencies to get frozen – e.g. soft figure numbering can
be frozen when changing platforms; these interactions with changes over
time are still problematic in the framework.
-->

As Dependências ocultas (*Hidden dependencies*) consistem em propagar
as alterações para outras entidades.  A configuração de estilos em
cascata (CSS) propaga as configurações do pais para os seus
descendentes, gerando uma dependência. Alterações em estilos pais
podem causar drásticas consequências no documento inteiro
\cite{green1989}.

### Expressividade de papeis ###

<!--

: the purpose of an entity is readily inferred.
Role-expressive notations make it easy to discover why the programmer or
composer has built the structure in a particular way; in other notations
each entity looks much the same and discovering their relationships is
difficult. Assessing role-expressiveness requires a reasonable
conjecture about cognitive representations (see the Prolog analysis
below) but does not require the analyst to develop his/her own cognitive
model or analysis.

-->

Expressividade de papeis (*Role-expressiveness*) consiste em como as
entidades são facilmente inferidas ao observá-las \cite{green1989}.

<!-- Expressivos: listas e tabelas Itálico: // Sublinhado: __ ----  -->

### Tendência a erros ###

<!--

: the notation invites mistakes and the system gives
little protection. Enough is known about the cognitive psychology of
slips and errors to predict that certain notations will invite them.
Prevention (e.g. check digits, declarations of identifiers etc) can
redeem the problem.

-->

A Tendência a erros (*Error-proneness*) é quanto a notação facilita o
usuário a errar \cite{blackwell2003notational}. *Generics* em Java é
um recurso para diminuir os erros de execução. O usuário especifica
qual o tipo esperado da coleção, e caso haja uma tentativa de
adicionar um objeto de outro tipo haverá um erro de compilação.


### Abstração ###

<!--

: types and availability of abstraction mechanisms.
Abstractions (redefinitions) change the underlying notation. Macros,
data structures, global find-and-replace commands, quick-dial telephone
codes, and word-processor styles are all abstractions. Some are
persistent, some are transient. Abstractions, if the user is allowed to
modify them, always require an abstraction manager – a redefinition
sub-device. It will sometimes have its own notation and environment
(e.g. the Word style sheet manager) but not always (for example, a class
hierarchy can be built in a conventional text editor). Systems that
allow many abstractions are potentially difficult to learn.
-->

Abstrações (*Abstraction*) são tipos ou disponibilidade de mecanismos
de abstrações \cite{blackwell2003notational}. Exemplos de abstrações
são controles de *playback* (interface para controlar a execução de
mídias), modelos de documentos e utilização de ícones que trazem
significados \cite{Bellingham2014}.

### Notação secundária ###

<!-- 
: extra information in means other than formal syntax.
Users often need to record things that have not been anticipated by the
notation designer. Rather than anticipating every possible user
requirement, many systems support secondary notations that can be used
however the user likes. One example is comments in a programming
language, another is the use of colours or format choices to indicate
information additional to the content of text.
-->

Notação secundária (*Secondary notation*) consiste em informações
extras apresentadas ao usuário com sintaxe diferente da formal. Cores,
fontes e comentários fazem parte dessa
categoria \cite{Bellingham2014}.

### Proximidade do mapeamento  ###

<!--
: closeness of representation to domain. How closely
related is the notation to the result it is describing?
-->

Proximidade do mapeamento (*Closeness of mapping*) refere-se a uma
correlação entre a interface e a tarefa sendo realizada ou seu
resultado experado \cite{Bellingham2014}\cite{Blackwell2001}.

### Consistência ###

<!--
: similar semantics are expressed in similar syntactic forms.
Users often infer the structure of information artefacts from patterns
in notation. If similar information is obscured by presenting it in
different ways, usability is compromised.
-->

A Consistência (*Consistency*) referê-se a como informações similares
possuem semântica semelhante \cite{Blackwell2001}. Um sistema que
possui alto nível de consistência é mais fácil de ser apreendido.


### Prolixidade ###

<!--
: verbosity of language. Some notations can be annoyingly
long-winded, or occupy too much valuable “real-estate” within a display
area. Big icons and long words reduce the available working area.
-->

Prolixidade (*Diffuseness*) refere-se a verbosidade da linguagem. A
notação permite que o usuário realize o que deseja de forma breve ou
requer tediosas intervenções? Algumas notações necessitam mais espaço
para serem descritas?

### Processos mentais potencialmente explosivos ###

<!--
: high demand on cognitive resources. A notation
can make things complex or difficult to work out in your head, by making
inordinate demands on working memory, or requiring deeply nested goal
structures.
-->

Processos mentais potencialmente explosivos (*Hard mental operations*)
refere-se a notações que exigem uma sobrecarga de processamento
cognitivo \cite{green2006cognitive}.  Um exemplo clássico é a
utilização de ponteiros em C.


### Exploração ###

<!-- degree of commitment to actions or marks. Premature
commitment refers to hard constraints on the order of doing things, but
whether ot not hard constraints exist, it can be useful to make
provisional actions – recording potential design options, sketching, or
playing “what-if” games.
-->

A Exploração (*Provisionality*) refere-se ao grau de liberdade para
testar ou explorar novas ideias. É possível planejar novas coisas sem
configuração excessiva ou informar detalhes do resultado esperado?

<!-- Provisionamento se refere à adaptação ou implantação de um
serviço de telecomunicações para um cliente em particular. As empresas
carriers ou operadoras provisionam (configuram ou instalam) circuitos
para conectar uma linha telefônica ou de dados dos clientes na rede de
telecomunicações pública 

A origem do termo provisionamento é antiga, relacionado à
logística. Nas viagens de navios da Europa para o novo mundo estes
necessitavam de suprimentos diversos, portanto eram provisionados com
comida, armas, instrumentos, entre outras coisas.

Guarnecer-se de provisões (abastecimento ou fornecimento);
abastecer-se ou aprovisionar.

-->

### Avaliação progressiva ###

<!--
work-to-date can be checked at any time.
Evaluation is an important part of the design process, and notational
systems can facilitate evaluation by allowing users to stop in the
middle to check work so far, find out how much progress has been made,
or check what stage in the work they are up to. A major advantage of
interpreted programming environments such as BASIC is that users can try
out partially-completed versions of the product program, perhaps leaving
type information or declarations incomplete.
-->

A Avaliação progressiva (*Progressive evaluation*) refere-se a
habilidade de checar o resultado a qualquer dado momento
\cite{Blackwell2001}.

<!--
Metodologia de desenvolvimento de linguagens baseadas em Estudos Empíricos

Os estudos sobre usabilidades de linguagens avançaram no área de
Linguagens de Programação. \citeonline{kaijanaho2015evidence} propõe
uma metodologia de design de linguagens baseada em evidências, através
da utilização de *pesquisas secundárias* (consolidação de pesquisas
primárias) e avaliação das análises \cite{kaijanaho2015evidence}.

Embora seja boa a ideia de implementar um *design* baseado em
pesquisas que apresentem as consequências de utilização de certas
notações, não temos conhecimento sobre estudos empíricos primários
sobre o *design* de *linguagens de marcação de texto*.

-->

## Considerações Finais ##

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

A linguagem R Markdown, suportada pela ferramenta RStudio, apresenta uma
variação da linguagem Markdown com o propósito de facilitar a 
*reprodutibilidade* de pesquisas científicas.

A *replicação* de uma pesquisa consiste em executar toda a
análise estatística novamente, gerar gráficos ou tabelas e incorporá-los
no documento final, no mesmo ambiente de trabalho. A
*reprodução* da pesquisa consiste em outro pesquisador ser
capaz de reproduzir os mesmos resultados em um ambiente de trabalho
diferente \cite{Gandrud2015}.

O R Markdown é essencialmente Markdown, mas possibilita a inserção de
blocos de instruções na linguagem R para realização de tratamentos
estatísticos (geração de gráficos, tabelas etc.), que são executadas
em uma etapa anterior a compilação do documento.  Os pesquisadores que
desejam reproduzir uma pesquisa podem inspecionar as instruções
estatísticas e reproduzir os resultados, geralmente com acesso aos
mesmos dados da pesquisa.

### Discussão

O surgumento de R Markdown mostra que a linguagem Markdown já foi
estendida para proporcionar produção de documentos acadêmicos
e reprodutibilidade de pesquisa.

No entanto, a linguagem de marcação de texto R Markdown não é
expressiva o suficiente para atender as exigências das normas da ABNT
para elaboração de trabalhos acadêmicos, conforme explicado na Seção
\ref{inclusao-imagens-e-tabelas}.

<!-- A utilização da ferramenta Pandoc para formatação de um trabalho
acadêmico com as normas da ABNT requer a criação de um novo modelo (no
formato Latex, com estilos apropriados) que possa ser configurado
através das variáveis, especificadas nos blocos YAML pelo usuário final.
-->

## Análise de interfaces de softwares para composição de músicas e efeitos sonoros

Uma análise de interfaces utilizando o *framework* de Dimensões
Cognitivas foi realizada por \citeonline{Bellingham2014}. Nesse trabalho o
alvo da pesquisa eram interfaces de softwares de composição musical,
utilizando algoritmos parametrizados. O trabalho analisa diversas
interfaces, que incluem linguagens de programação visual, linguagens
de programação orientadas a textos, e softwares que solicitam dados do
usuário.

As análises das interfaces foram realizadas sem o envolvimento ativo
de usuários (utiliza opinião de um *expert*), com execução dos sistemas e
em contextos não realísticos. A análise contemplou todas as dimensões
do *framework* de Dimensões Cognitivas.

## Análise de usabilidade de ambientes de programação visual {#referenciadeavaliacao}

O *framework* de Dimensões Cognitivas também foi utilizado para
avaliar dois ambientes de programação visual
\cite{green1996usability}. Esse trabalho apresenta uma avaliação
bastante detalhada com todas as dimensões do *framework*.

## Avaliação da usabilidade através de usuários que não conhecem o *framework*

O *framework* de Dimensões Cognitivas foi elaborado para ser utilizado
por alguém que conheça bem o *framework* e também conheça bem o
sistema \cite{CDquestionario}.

\citeonline{CDquestionario} elaborou um questionário para ser
empregado em usuários sem conhecimento do *framework*, ele encontra-se
disponível no Anexo \ref{anexoquestionario}. O questionário foi
utilizado com 18 usuários na análise de 13 sistemas.

# Proposta de dissertação #

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

# Cronograma #

\begin{table}[htb]
\IBGEtab{%
  \caption{Cronograma da pesquisa}%
  \label{tabela-ibge}
}{%
  \begin{tabular}{ccccc}
  \toprule
   Etapa & Set & Out & Nov & Dez \\
  \midrule \midrule
   Conclusão da implementação da ferramenta & X \\
  \midrule 
	Publicação da Ferramenta e convite para experimentos on-line &  & X \\
  \midrule 
	Condução de experimentos controlados &  & X \\
  \midrule 
	Análise dos resultados dos experimentos &  & X & X \\
  \midrule 
	Escrita da dissertação & X & X & X \\
  \midrule 
	Experimento realístico & X & X  \\
  \midrule 
	Defesa da dissertação &  &  & X \\

\bottomrule
\end{tabular}%
}{%
  \fonte{Autor}%
  }
\end{table}

<!-- pdftk A=xxx-Monografia.pdf B=configuracao.pdf cat A1-47 B A68-END output proposta-qualificacao-eduardo.pdf
-->
