#!/usr/koeki/bin/ruby
# -*- coding: utf-8 -*-

item = ["サマンサタバサの財布","ckの香水","ドルガバのネックレス","コーチのバッグ","ディーゼルの時計","ヴィヴィアンウエストウッドのバッグ","ルイヴィトンの財布","イヴサンローランの財布","グッチのネックレス","北海道の鮭を咥えた熊の置物","マヨコーンピザ","カイジのdvd","男塾のマンガ","熊本産のトマト"]

print"名前を入力せよ\n"
name = gets.chomp

if name == "eitaro"
puts"ちっ、えいたかよ。
指輪してんなよ。
"
elsif name == "ikeda"
puts"ふう、えいちゃんかよ。
また赤に染めてんのかよ。
だから彼女できないんだよ。
"
elsif name == "houtin"
puts"ほうちんさんだ!
毎日ブログみてるよ
"
end

print"あなたの性別は? おどご=1,おなご=2,その他=3\n"
sex = gets.chomp.to_i

if sex == 3
  printf("\e[2J\e[31mまじかよ。君はプログラムを動かせない。\n")
  exit

elsif sex == 1 || sex == 2
  printf("誕生月を数字2ケタで入力してね【例：7月=07】\n")
  birthm = gets.to_i
  if birthm < 1 || birthm > 12
    printf("fuck!\n")
    exit
  end

  printf("誕生日を数字2ケタで入力してね【例：9日=09】\n")
  birthd = gets.to_i

  if birthd < 1 || birthd > 31
    printf("fuck!\n")
    exit
  end

else
  printf("fuck!\n")
  exit
end

hoge = rand(1278) + 1

result = (birthm * birthd * hoge) % 10

if result == 1
  printf("%s様は大吉だよ。よかったね!\n",name)
elsif result == 2
  printf("吉だよ、意外といんでねいかい\n")
elsif result == 3
  printf("%sさんは中吉だよ、ばーかばーか\n",name)
elsif result == 4
  printf("%sしゃんは小吉だよ。残念だね\n",name)
elsif result == 5
  printf("半吉だよ、微妙だね\n")
elsif result == 6
  printf("末吉だよ、君の人生そのもとが末吉だもんね\n")
elsif result == 7
  printf("小凶だったよ、ゴミだな\n")
elsif result == 8
  printf("末小吉だよ、ま、お前はそれくらい\n")
elsif result == 9
  printf("%sさん大凶だよ、まぁそんな日もあるさ\n",name)
elsif result == 0
  printf("%sよ、今日は凶だよ。\n",name)
elsif result < 0 || result > 9
  puts"しっかりしてよ、おにいちゃん
  もう一回プログラムを動かしてみてよ"
  exit
end

if result >= 0 && result <= 9

puts"運勢に納得いったかしら。
これからマルチプルチョイスによって
ラッキーアイテムを診断するよ。
さぁはじめようかしら"

lucky = 0

while result >= 0 && result <= 9
 puts"このまま続けるかい？(はい=1,いいえ=2)\n"
 makesure = gets.to_i

  if makesure == 1
    printf("それじゃ、%sさん、診断するよ\n",name)
    break
  elsif makesure == 2
    printf("おっけい、%sさんおつかれさま!\n",name)
    exit
  elsif makesure != 1 || makesure != 2
    printf("ちゃんと選んでよ\n")
    redo
  end
end

line = []

open("question.txt","r") do |question1|
puts question1.readlines[0..4] 
end

while true
 answer = gets.to_i
  if answer == 1
  printf("うれしいのかよ\n")
  lucky += 0
  break
  elsif answer == 2
  printf("おれもー、おこている\n")
  lucky += 1
  break
  elsif answer == 3
  printf("泣くなよ、そういう時もあるさ\n")
  lucky += 2
  break
  elsif answer == 4
  printf("ばかみたいじゃん\n")
  lucky += 3
  break
  else
  printf("そんな選択肢ないよ。ばかじゃない\n")
  redo
  end
end

open("question.txt","r") do |question2|
puts question2.readlines[6..10]
end

while true
 answer = gets.to_i
  if answer == 1
  printf("だからそうやって太るんだよ\n")
  lucky += 0
  break
  elsif answer == 2
  printf("回転ずし屋で喜ぶ中学生かよっ\n")
  lucky += 1
  break
  elsif answer == 3
  printf("疲れてんのかよっ\n")
  lucky += 2
  break
  elsif answer == 4
  printf("子供かよっ\n")
  lucky += 3
  break
  else
  printf("そんな選択肢ないよ。ばかじゃない\n")
  redo
  end
end

open("question.txt","r") do |question3|
puts question3.readlines[12..16]
end

while true
 answer = gets.to_i
  if answer == 1
  printf("課金厨なのね\n")
  lucky += 0
  break
  elsif answer == 2
  printf("獣神祭やってるよ\n")
  lucky += 1
  break
  elsif answer == 3
  printf("まだやってるのかよ\n")
  lucky += 2
  break
  elsif answer == 4
  printf("サプチケきてるぞ\n")
  lucky += 3
  break
  else
  printf("そんな選択肢ないよ。ばかじゃない\n")
  redo
  end
end

open("question.txt","r") do |question4|
puts question4.readlines[18..23]
end

while true
 answer = gets.to_i
  if answer == 1
  printf("そんなことないぜ\n")
  lucky += 0
  break
  elsif answer == 2
  printf("ばかじゃないって!だいじょーぶ!\n")
  lucky += 1
  break
  elsif answer == 3
  printf("あほか、そんなことないとおもうなぁ\n")
  lucky += 2
  break
  elsif answer == 4
  printf("そんなことないとおもふ\n")
  lucky += 3
  break
  else
  printf("そんな選択肢ないよ。ばかじゃない\n")
  redo
  end
end

printf("あなたのラッキーアイテムは%sだよ\n",item[lucky])
puts"
動かしてくれてありがと!

またあそんでね"
end
