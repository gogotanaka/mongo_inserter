require "mongo_inserter/version"
module MongoInserter
	include Mongo
  METRICS_MONGODB_HOST = 'localhost'
  METRICS_MONGODB_PORT = 27017
  def self.insert
    client = MongoClient.new(METRICS_MONGODB_HOST, METRICS_MONGODB_PORT)
    @db = client['test']
    @db_suggest_logs = @db['suggest_logs']
    10.times do |i|
      data = {perfect_match: 100 + i, partial_match: 100 + i, not_mathch: 100 + i}
      @db_suggest_logs.insert(data)
    end
  end
end
