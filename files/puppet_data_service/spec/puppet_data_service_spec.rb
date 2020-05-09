require 'cassandra'

RSpec.describe PuppetDataService do

  it "has a version number" do
    expect(PuppetDataService::VERSION).not_to be nil
  end

  it "returns Cassandra database context" do
    context = PuppetDataService.connect(database: 'cassandra', hosts: ['192.168.0.1'])
    expect(context).not_to be nil
  end
end
