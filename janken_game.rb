class Player
  attr_accessor :hand
  def initialize
    @hand = hand
  end
  def player_hand  #player手を選択
    index = ["『じゃんけん...』（数字を入力してください）","0: グー","1: チョキ","2: パー"]
    index.each do |content|
      puts content
    end

    @hand = gets.chomp
    if @hand == "0"|| @hand == "1" || @hand == "2"
      return hand.to_i
      
    else
      puts "0,1,2以外できません。再入力してください"
      Player.new.player_hand
    end
  end
end

class Enemy
  attr_accessor :hand
  def initialize
   @hand = hand
  end
  def enemy_hand
    # グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する  
    @hand = rand(0..2)
    return hand
  end #def
end #class

class Janken
  def pon(player_hand,enemy_hand) 
    if player_hand == 0
      puts "player;グー"
    elsif player_hand == 1
      puts "player;チョキ"
    elsif hand == 2
      puts "player;パー"
    end

    if enemy_hand == 0
      puts "enemy;グー"
    elsif enemy_hand == 1
      puts "enemy;チョキ"
    elsif enemy_hand == 2
      puts "enemy;パー"
    end

    result = (player_hand - enemy_hand + 3) % 3
    # puts "（計算結果　#{result})"
    if result == 0
      puts "『あいこで』\n\n"  
      pon(Player.new.player_hand, Enemy.new.enemy_hand)
    elsif  result == 2
      puts "win! （あなたの勝ちです）"
    else 
      puts "lose! （相手の勝ちです）"
    end
  end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new

janken.pon(player.player_hand,enemy.enemy_hand)
