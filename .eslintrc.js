module.exports = {
  "env": {
    "browser": true,
    "node": true
  },
  "extends": ["eslint:recommended", "plugin:node/recommended"],
  "plugins": ["import", "node"],
  "parserOptions": {
    "ecmaVersion": 8,
    "sourceType": "module",
    "ecmaFeatures": {
      "modules": true,
      "experimentalObjectRestSpread": true
    }
  },
  "rules": {
    "array-bracket-spacing": [1, "never"],
    "comma-dangle": [1, "always-multiline"],
    "object-curly-spacing": [1, "always"]
  }
};
