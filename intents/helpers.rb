require 'sqlite3'

class Ralyxa::Handler
  private

  def db
    @@db ||= SQLite3::Database.new(File.expand_path('../data/wnjpn.db', __FILE__))
  end

  def query
    @@query ||= db.prepare("SELECT lemma FROM word WHERE lang = 'jpn' ORDER BY RANDOM() LIMIT ?")
  end

  def random_words(count=3)
    query.execute(count.to_i).to_a.flatten
  end
end
