puts "Bem-Vindo aos seus contatos"
puts "As opções são: listar, guardar e sair."
puts "Se digitar outra coisa, será procurado o valor na agenda! \n\n"

agenda = {}

while true
    print "> "
    opt = gets.chomp
    case opt
    when /sair/i
        puts "Saindo..."
        return
    when /listar/i
        agenda.each do |key, val|
            puts "#{key} = #{val}"
        end
        puts "Terminado de listar!"
    when /guardar/i
        puts "Digite o nome: "
        nome = gets.chomp.strip #strip tira espaços

        puts "Digite o telefone: "
        fone = gets.chomp.strip

        if nome.size < 1 || fone.size < 1
            puts "precisa ter conteúdo!"
            next
        end

        agenda[nome] = fone
        puts "Armazenado!\n\n"
    else
        fone = agenda[opt]
        puts fone ? fone : "Não encontrado!\n\n"
    end
end
