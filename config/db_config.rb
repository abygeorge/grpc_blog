class DbConfig
  def self.config
    {
      adapter: 'postgresql',
      # host: ENV['DB_HOST'],
      username: 'postgres',
      password: 'qburst',
      database: 'blog',
      pool: 5,
      timeout: 5000,
      reconnect: true
    }
  end
end
