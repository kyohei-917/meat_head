# ゲストユーザー
user = User.new(
  id: 0,
  name: "guest",
  email: "guest@example.com",
  password: "BMp3xe6YtK9knH9",
)
user.save!

# 管理用ユーザー
admin_user = User.new(
  id: 1,
  name: "admin",
  email: "admin@example.com",
  password: "Xb5RP3U2HS",
)
admin_user.save!

# 脳筋エピソード
Question.create(text: '体のどこかに筋肉痛がないと不安になる', choice: 0, user_id: 1)
Question.create(text: '外出時、プロテインを袋ごと持ち歩く', choice: 0, user_id: 1)
Question.create(text: '外出時、トイレの水でプロテインを飲んだことがある', choice: 0, user_id: 1)
Question.create(text: '夏場のプロテインシェイカーは多少臭いのがデフォルト', choice: 0, user_id: 1)
Question.create(text: 'ファミレスで「このパスタオイルなしで作れますか？」と聞く', choice: 0, user_id: 1)
Question.create(text: 'デートできる服はないが、トレーニングウェアならいくらでもある', choice: 0, user_id: 1)
Question.create(text: '食事は楽しむというより体に栄養を入れる行為になっている', choice: 0, user_id: 1)
Question.create(text: 'サブウェイに行ったら思考停止でチリチキンを注文する', choice: 0, user_id: 1)
Question.create(text: '職場に置きプロテインがある', choice: 0, user_id: 1)
Question.create(text: '人前でプロテインをシェイクすることに恥ずかしさを感じる', choice: 1, user_id: 1)
Question.create(text: 'ダイエット中、鶏肉の皮は、悪いと思いつつ捨ててしまう', choice: 0, user_id: 1)
Question.create(text: '筋トレを理由に友達の誘いを断ったことがある', choice: 0, user_id: 1)
Question.create(text: 'コンビニで商品を探すとき、第一に裏面のマクロ栄養素を確認する', choice: 0, user_id: 1)
Question.create(text: '筋肉痛なんて痛いだけで大っ嫌い！！', choice: 1, user_id: 1)
Question.create(text: 'トレーニングをした翌日に筋肉痛が来ないと不安になる', choice: 0, user_id: 1)
Question.create(text: '今日何の日？って質問に「胸の日！」って答えたことがある', choice: 0, user_id: 1)
Question.create(text: '「ダンベルよりも女子の手を握りたい」が握る機会がない', choice: 0, user_id: 1)
Question.create(text: 'モテたくて始めた筋トレが原因でモテなくなった', choice: 0, user_id: 1)
Question.create(text: '唐突に聞かれる「何キロくらい上がるんですか？」に何の重量を答えていいかわからない', choice: 0, user_id: 1)
Question.create(text: '減量中の体重計が怖い', choice: 0, user_id: 1)
Question.create(text: 'マッスル北村さんを崇拝している', choice: 0, user_id: 1)
Question.create(text: 'マッスル北村？ 誰それ？', choice: 1, user_id: 1)
Question.create(text: '山岸さん？ あぁ、大勝軒の創業者でしょ？', choice: 1, user_id: 1)
Question.create(text: '泊まりがけの旅行に行くときは現地のジムを事前にチェックする', choice: 0, user_id: 1)
Question.create(text: '「ステロイド」ってワードに敏感に反応してしまう', choice: 0, user_id: 1)
Question.create(text: '「何目指してるの？」に対する最適解がいまだに見つからない', choice: 0, user_id: 1)
Question.create(text: '結局は承認欲求が強い（筋肉かっこいいって言ってもらいたい、、）', choice: 0, user_id: 1)
Question.create(text: 'カネキン？ ヒカキンのいとこだっけ？', choice: 1, user_id: 1)
