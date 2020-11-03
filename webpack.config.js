const path = require('path');

module.exports = {
    mode: 'development',
    entry: './src/main.ts',
    output: {
        path: path.join(__dirname, 'public', 'js'),
        filename: 'bundle.js'
    },
    module: {
        rules: [
            {
                test: /\.ts$/,
                use: 'ts-loader'
            },
            {
                test: /\.(sc|c)ss/,
                use: [
                    'style-loader',
                    {
                        loader: 'css-loader',
                        options: { url: false }
                    },
                    'sass-loader'
                ]
            }
        ]
    },
    resolve: {
        extensions: [
            '.ts', '.js'
        ]
    }
}