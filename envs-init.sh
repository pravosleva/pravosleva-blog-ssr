# Special for CRA:
echo "SKIP_PREFLIGHT_CHECK=true" > frontend/.env &&

echo "module.exports = {
  apps : [{
    name: 'blog-1337-dev',
    cwd: __dirname + '/backend',
    script: 'yarn',
    args: 'develop',
    interpreter: 'none',
    env: {
      NODE_ENV: 'development',
      PORT: '1337',
      DATABASE_HOST: 'ds231559.mlab.com',
      DATABASE_PORT: '31559',
      DATABASE_NAME: 'gatsby-blog',
      DATABASE_USERNAME: '<DATABASE_USERNAME>',
      DATABASE_PASSWORD: '<DATABASE_PASSWORD>',
      DATABASE_AUTHENTICATION_DATABASE: 'gatsby-blog',
      DATABASE_SSL: false,
    }
  }, {
    name: 'blog-8000-dev',
    cwd: __dirname + '/frontend',
    script: 'gatsby',
    args: 'develop',
    interpreter: 'none',
    env: {
      NODE_ENV: 'development',
      PORT: '8000',
      REACT_APP_API_ENDPOINT: 'http://localhost:1337',
    }
  }],
};" > ecosystem.dev.config.js &&
echo "REACT_APP_API_ENDPOINT=\"http://localhost:1337\"" > frontend/.env.development
echo "module.exports = {
  apps : [{
    name: 'blog-1337-prod',
    cwd: __dirname + '/backend',
    script: 'yarn',
    args: 'start',
    interpreter: 'none',
    env: {
      NODE_ENV: 'production',
      PORT: '1337',
      DATABASE_HOST: 'ds231559.mlab.com',
      DATABASE_PORT: '31559',
      DATABASE_NAME: 'gatsby-blog',
      DATABASE_USERNAME: '<DATABASE_USERNAME>',
      DATABASE_PASSWORD: '<DATABASE_PASSWORD>',
      DATABASE_AUTHENTICATION_DATABASE: 'gatsby-blog',
      DATABASE_SSL: false,
    }
  }, {
    name: 'blog-9000-prod',
    cwd: __dirname + '/frontend',
    script: 'yarn',
    args: 'serve',
    interpreter: 'none',
    env: {
      NODE_ENV: 'development',
      PORT: '9000',
      REACT_APP_API_ENDPOINT: 'http://80.87.194.181/api',
    }
  }],
};" > ecosystem.prod.config.js &&
echo "REACT_APP_API_ENDPOINT=\"http://80.87.194.181/api\"" > frontend/.env.production
