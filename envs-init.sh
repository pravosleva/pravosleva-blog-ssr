if [ $# -eq 1 ]
then
  case $1 in
    "gatsby")
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
        }, {
          name: 'helper-5000-prod',
          cwd: __dirname + '/express-helper',
          script: 'yarn',
          args: 'start',
          interpreter: 'none',
          env: {
            NODE_ENV: 'production',
            PORT: '5000',
          }
        }],
      };" > ecosystem.dev.config.js &&
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
            NODE_ENV: 'production',
            PORT: '9000',
            REACT_APP_API_ENDPOINT: 'http://80.87.194.181/api',
          }
        }, {
          name: 'helper-5000-prod',
          cwd: __dirname + '/express-helper',
          script: 'yarn',
          args: 'start',
          interpreter: 'none',
          env: {
            NODE_ENV: 'production',
            PORT: '5000',
          }
        }],
      };" > ecosystem.prod.config.js
    ;;
    "nextjs")
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
          name: 'blog-9000-dev',
          cwd: __dirname + '/frontend',
          script: 'yarn',
          args: 'dev',
          interpreter: 'none',
          env: {
            NODE_ENV: 'development',
            REACT_APP_API_ENDPOINT: 'http://localhost:1337',
            REACT_APP_SOCKET_ENDPOINT: 'http://localhost:1337',
          }
        }, {
          name: 'helper-5000-prod',
          cwd: __dirname + '/express-helper',
          script: 'yarn',
          args: 'start',
          interpreter: 'none',
          env: {
            NODE_ENV: 'production',
            PORT: '5000',
          }
        }],
      };" > ecosystem.dev.config.js &&
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
          args: 'start',
          interpreter: 'none',
          env: {
            NODE_ENV: 'production',
            REACT_APP_API_ENDPOINT: 'http://80.87.194.181/api',
            REACT_APP_SOCKET_ENDPOINT: 'http://80.87.194.181',
          }
        }, {
          name: 'helper-5000-prod',
          cwd: __dirname + '/express-helper',
          script: 'yarn',
          args: 'start',
          interpreter: 'none',
          env: {
            NODE_ENV: 'production',
            PORT: '5000',
          }
        }],
      };" > ecosystem.prod.config.js
    ;;
    *)
    echo "☠️ SCRIPT: envs-init.sh | Undefined param value" &&
    exit 1
  esac
  exit 0
else
  echo "☠️ SCRIPT: envs-init.sh | Param is required! gatsby|nextjs"
  exit 1
fi
