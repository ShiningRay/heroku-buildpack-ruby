require 'json'

class LanguagePack::Helpers::Nodebin
  def self.hardcoded_node_lts
    version = ENV.fetch("NODE_VERSION", "16.13.1")
    {
      "number" => version,
      "url"    => "https://s3.amazonaws.com/heroku-nodebin/node/release/linux-x64/node-v#{version}-linux-x64.tar.gz"
    }
  end

  def self.hardcoded_yarn
    version = ENV.fetch("YARN_VERSION", "1.22.17")
    {
      "number" => version,
      "url"    => "https://s3.amazonaws.com/heroku-nodebin/yarn/release/yarn-v#{version}.tar.gz"
    }
  end

  def self.node_lts
    hardcoded_node_lts
  end

  def self.yarn
    hardcoded_yarn
  end
end
