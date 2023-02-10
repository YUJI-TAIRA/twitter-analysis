#!/bin/sh
ROOT_DIR="/src"
APP_DIR="$ROOT_DIR/app"

if [ ! -e $APP_DIR ]; then
    cd $ROOT_DIR
    echo "[START] create react app..."
    npm install -g create-react-app
    create-react-app app --template typescript
    echo "[END] create react app"
fi

cd $APP_DIR
echo "[START] yarn start..."
yarn start

exec "$@"