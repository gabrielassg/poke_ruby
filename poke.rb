

class Pokedex
    def initialize
      @pokemons = {
        "Pikachu" => { tipo: "Elétrico", descricao: "Quando está irritado, descarrega imediatamente a energia armazenada nas bolsas em suas bochechas.", curiosidade: "Em japonês, 'Pika' é uma onomatopeia que simboliza eletricidade, enquanto 'chu' significa o barulho feito por ratos"},
        "Bulbasaur" => { tipo: "Planta/Venenoso", descricao: "O bulbo em suas costas está cheio de nutrientes. Nele, Bulbasaur armazena suas energias. O bulbo vai crescendo à medida que envelhece porque ele absorve os raios de sol.", curiosidade:"Fushigidane (フ シ ギ ダ ネ) é a alternativa japonesa para Bulbasaur e significa semente estranha, enquanto que em inglês é apenas uma combinação de Bulb e Dinosaur."},
        "Charmander" => { tipo: "Fogo", descricao: "A chama em sua cauda mostra a força de sua força vital. Se Charmander estiver fraco, a chama também queimará fracamente.", curiosidade: "A chama acompanha o Pokémon desde seu nascimento, no momento que a chama se apaga significa que o Pokémon morreu."},
        "Squirtle" => { tipo: "Água", descricao: "Após o nascimento, suas costas incha e endurece formando uma concha.", curiosidade: "No japonês,  ゼニガメ (Zenigame) originalmente é uma palvavra que significa Tartaruga do Lago"},
        "Psyduck" => { tipo: "Psico", descricao: "É constantemente assolado por uma dor de cabeça. Quando a dor de cabeça fica intensa, ela começa a usar poderes misteriosos.", curiosidade: "O psyduck da Mitsy é um pato que não sabe nadar."},
        "Gengar" => { tipo: "Fantasma", descricao: "Para roubar a vida do seu alvo, ele se esconde na sombra da presa e espera silenciosamente por uma oportunidade.", curiosidade: "Gengar é baseado em fantasmas de desenho animado ou como sombras que foram distorcidas de pessoas"},
        "Dragonite" => { tipo: "Dragão/Voador", descricao: "Diz-se que em algum lugar do oceano existe uma ilha onde estes se reúnem. Só eles moram lá.", curiosidade: "O Dragonite, evolução final do Dratini, foi inspirado possivelmente em Dragões Japoneses, Europeus ou Dragões Fadas"},
        "Eevee" => { tipo: "Normal", descricao: "A sua capacidade de evoluir em muitas formas permite-lhe adaptar-se de forma suave e perfeita a qualquer ambiente.", curiosidade: "Eevee é um dos poucos Pokémon cujo nome é um palíndromo - ou seja, sua pronúncia se mantém a mesma se lido de trás para frente."},
        "Cubone" => { tipo: "Normal", descricao: "Quando a memória de sua mãe falecida o leva às lágrimas, seus gritos ecoam tristemente dentro do crânio que ele usa na cabeça.", curiosidade: "Esse pokémon possui uma das histórias mais tristes e tem uma personalidade misteriosa e complexa"},
        "Magikarp" => { tipo: "Normal", descricao: "Um Pokémon patético e pouco poderoso. Pode saltar alto em raras ocasiões, mas nunca mais de dois metros.", curiosidade: "Magikarp é capaz de aprender apenas um movimento, o Splash, que não causa dano algum"},
        "Neybagi" => { tipo: "Fantasma", descricao: "A pokédex desse pokémon não tem informações, é tido como raro", curiosidade: "Alguns historiadores afirmam que esse pokémon é atraído por rock e chá de maçã"}
      }
  
    end
  
    def listar_pokemons
        puts "Esses são os Pókemons que estão disponíveis nesse sisteminha. Só escolher um deles :D "
      @pokemons.keys.each_with_index do |nome, index|
        puts "#{index + 1}. #{nome}"
    end
  end 
  
    def exibir_informacoes(nome)
      pokemon = @pokemons[nome]
      if pokemon
        puts "Perfeito! Aqui tem algumas coisas sobre ele."
        puts "Nome: #{nome}"
        puts "Tipo: #{pokemon[:tipo]}"
        puts "Descrição: #{pokemon[:descricao]}"
        puts "Curiosidade!! #{pokemon[:curiosidade]}"
      else
        puts "Pokémon não encontrado, vamos tentar de novo!"
      end
    end
  end
  
  # Função principal
  def main
    pokedex = Pokedex.new
    loop do
      puts "\n Olá! Bem-vindo à Pokedex!"
      puts "Escolha uma opção disponível no sistema Pokedex:"
      puts "1. Listar todos os Pokemons"
      puts "2. Ver informações de um Pokemon"
      puts "3. Sair da Pokedex"
  
      escolha = gets.chomp.to_i
      if escolha == 1
        pokedex.listar_pokemons
      elsif escolha == 2
        puts "Digite aqui o nome do Pokémon que você deseja saber mais:"
        nome = gets.chomp.capitalize
        pokedex.exibir_informacoes(nome)
      elsif escolha == 3
        puts "Que pena. Até mais! :)"
        break
      else
        puts "Por favor, escolha uma opção válida."
      end
    end
end
main
