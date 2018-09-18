intent 'LaunchRequest' do
  respond("こんにちは。こちらが単語です。#{random_words.join('、')}。続けますか？")
end

intent 'AMAZON.MoreIntent' do
  respond("#{random_words.join('、')}。続けますか？")
end

intent 'AMAZON.YesIntent' do
  respond("#{random_words.join('、')}。続けますか？")
end

intent 'AMAZON.ResumeIntent' do
  respond("#{random_words.join('、')}。続けますか？")
end

intent 'AMAZON.NextIntent' do
  respond("#{random_words.join('、')}。続けますか？")
end

intent 'AMAZON.CancelIntent' do
  respond('中止しました。続けますか？')
end

intent 'AMAZON.HelpIntent' do
  respond('このスキルは、日本語の単語をランダムに3つ話します。' \
    'インスピレーションを得たいときや、語彙をチェックしたいときなどにおすすめです。' \
    '数を指定することもできます。単語を5個教えて、のように話しかけてみてください。' \
    '続けて単語を聞きますか？')
end

intent 'AMAZON.StopIntent' do
  tell('ランダム単語を終了します')
end

intent 'AMAZON.NoIntent' do
  tell('ランダム単語を終了します')
end

intent 'SessionEndedRequest' do
  tell('ランダム単語を終了します')
end

intent 'AMAZON.NavigateHomeIntent' do
  tell('ランダム単語を終了します')
end

intent 'NumSpecifiedIntent' do
  respond("#{random_words(request.slot_value('count')).join('、')}。続けますか？")
end

intent 'SomeWordsIntent' do
  respond("#{random_words([3,4,5].sample).join('、')}。続けますか？")
end
