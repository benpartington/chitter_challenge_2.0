require 'peep'

describe Peep do
  describe '.all' do
    it 'returns all peeps' do
      connection = PG.connect(dbname: 'chitter_test')

      connection.exec("INSERT INTO peeps (url) VALUES ('http://www.makersacademy.com');")
      connection.exec("INSERT INTO peeps (url) VALUES ('http://www.destroyallsoftware.com');")
      connection.exec("INSERT INTO peeps (url) VALUES ('http://www.google.com');")

      peeps = Peep.all

      expect(peeps).to include("http://www.makersacademy.com")
      expect(peeps).to include("http://www.destroyallsoftware.com")
      expect(peeps).to include("http://www.google.com")
    end
  end
end