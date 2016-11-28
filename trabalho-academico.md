# Introdução

## Motivação

## Objetivos

### Objetivo geral

Apresentação do objetivo geral.

### Objetivos específicos

- objetivo 1
- objetivo 2
- objetivo 3

<!--

# Referencial teórico

# Resultados

Resultados aqui.

# Conclusão

Conclusão do trabalho.

-->

# Como utilizar recursos do limarka

**Consulte o wiki do projeto**: https://github.com/abntex/limarka/wiki

Cada capítulo inicia automaticamente em página ímpar (em conformidade com as Normas). Por isso que existem várias páginas em branco nesse documento.

## Como citar e referenciar

O arquivo de referências é configurado em "configuracao.pdf", utilize-o
para gerenciar suas referências.

Veja um exemplo de citação direta e referenciação a seguir:

> A ‘norma’ 6023:2000 (2) é complicada e cheia de inconsistências. Jamais será
possível gerar um estilo bibtex totalmente consistente com a ‘norma’, até porque
nem a ‘norma’ é compatível com ela mesma. Um bom estilo bibliográfico deve
ter uma linha lógica para formatação de referências. Assim, com alguns poucos
exemplos, qualquer pessoa poderia deduzir os casos omissos. Nesse sentido, a
‘norma’ 6023 trafega pela contra-mão. É quase impossível deduzir sua linha lógica.
O problema mais grave, no entanto, fica pela maneira de organizar nomes. A ABNT
quebrou o sobrenome em duas partes. Normalmente se fala apenas em “*last name*”,
mas agora temos o “*last last name*” graças à ABNT. \cite[p. 5]{abntex2cite}.

Consulte o documento \citeonline{abntex2cite} para conhecer como referenciar os
conteúdos.

## Como inserir imagens

As imagens precisam ser inseridas utilizando código em latex, utilize o comando `limarka fig -i` com esse propósito. 

Por exemplo, a Figura \ref{fig:passaro} mostra um pássaro que possui as cores da bandeira do Brasil. Consulte a documentações do limarka para aprender como utilizar o comando.

<!--
Para referenciar essa figura no texto utilize: Figura \ref{fig:passaro} 
-->
\begin{figure}[htb]
\caption{\label{fig:passaro}Pássaro com as cores da bandeira do Brasil}
\begin{center}
\includegraphics[width=0.4\textwidth]{imagens/passaro.jpg}
\end{center}
\legend{Fonte: \citeonline{limarka}}
\end{figure}

As imagens são inseridas o mais próximo possível do texto que as referenciam.

