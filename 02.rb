class Player
  attr_accessor :hand
  def initialize
    @hand = hand
  end

  def player_hand  #player手を選択
    index = ["じゃんけん...,数字を入力してください","0: グー","1: チョキ","2: パー"]
    index.each do |content|
      puts content
    end

    @hand = gets.to_i

    if hand < 0 || hand > 2
      puts "0,1,2以外できません"
      return 3
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
  
  def re_entry(player_hand)
    puts player_hand
    if player_hand == 3
    player.player_hand
    end 
  end  
end #class

player = Player.new
player.player_hand
