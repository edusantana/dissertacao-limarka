# More info at https://github.com/guard/guard#readme

guard :shell do
  watch(/^([[:alpha:]]+.*\.md|configuracao.pdf|configuracao.yaml)$/) do |m| 
    
    puts "#{Time.now.strftime('%H:%M:%S')} #{m[0]} foi alterado. Iniciando geração do PDF"
    `limarka exec`
    # Exibe erros de citações inválidas
    `pdfgrep  -H --color always '\(\\?\\?\)' xxx*.pdf`
  end
end
