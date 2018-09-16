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
  respond('日本語の単語をランダムに3つ話します。' \
    'このスキルは、日本語ワードネットを利用しています。単語を聞きますか？')
end

intent 'AMAZON.StopIntent' do
  tell('ランダム単語を終了します')
end

intent 'AMAZON.NoIntent' do
  tell('ランダム単語を終了します')
end

intent 'SessionEndedRequest' do
end

intent 'AMAZON.NavigateHomeIntent' do
end

intent 'NumSpecifiedIntent' do
  count = request.slot_value('count').to_i
  count = 3 if count < 1
  respond("#{random_words(count).join('、')}。続けますか？")
end

intent 'SomeWordsIntent' do
  respond("#{random_words([3,4,5].sample).join('、')}。続けますか？")
end
