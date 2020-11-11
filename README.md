# ぼくのかんがえたさいきょうのかいはつかんきょう(web フロント, プレーンバージョン)

- ディストリ

  - Ubuntu 20.04

- apt でインストールしたもの

  - software-properties-common
  - curl
  - git
  - nodejs(後に削除)
  - npm(後に削除)

- npm でグローバルインストールしたもの

  - n(Node.js のバージョン管理のため)
    - なお、n で Node.js と npm を入れ直しているため、apt で入れたものは削除済み

- npm で devDependencies として入れたもの
  - webpack
  - webpack-cli
  - typescript
  - ts-loader
  - style-loader
  - css-loader
  - sass
  - sass-loader
  - node-sass
  - prettier
  - eslint
  - express

## ディレクトリ構造

```
.
├── .git
├── node_modules
├── package-lock.json
├── package.json
├── public
│   ├── index.html
│   └── js
├── src
│   └── main.ts
├── tsconfig.json
└── webpack.config.js
```
