class Player
  attr_accessor :hand
  def initialize
    @hand = hand
  end

  def player_hand  #player手を選択
    index = ["『じゃんけん...』,（数字を入力してください）","0: グー","1: チョキ","2: パー"]
    index.each do |content|
      puts content
    end

    @hand = gets.to_i

    if hand < 0 || hand > 2
      puts "0,1,2以外できません。再入力してください"
      return player_hand()
    elsif hand == 0
      puts "player;グー"
      return 0
    elsif hand == 1
      puts "player;チョキ"
      return 1
    else
      puts "player;パー"
      return 2
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
    if hand == 0
      puts "enemy; グー"
      return 0
    elsif hand == 1
      puts "enemy; チョキ"
      return 1
    else
      puts "enemy; パー" 
      return 2
    end #if
  end #def
end #class


class Janken
  def pon(player_hand,enemy_hand) 
    result = (player_hand - enemy_hand + 3) % 3
    puts "（計算結果　#{result})"
    if result == 0
      puts "『あいこで』\n\n"  
      pon(Player.new.player_hand, Enemy.new.enemy_hand)
      elsif  result == 2
      puts "win! （あなたの勝ちです）"
#     return 2
      else #result == 1
      puts "lose! （相手の勝ちです）"
#     return 1
    end
  end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new

janken.pon(player.player_hand,enemy.enemy_hand)