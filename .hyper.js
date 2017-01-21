module.exports = {
  config: {
    // default font size in pixels for all tabs
    fontSize: 13,

    // font family with optional fallbacks
    fontFamily: '"Meslo LG M for Powerline", Papyrus',

    // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    cursorColor: 'rgba(248,28,229,0.8)',

    // `BEAM` for |, `UNDERLINE` for _, `BLOCK` for █
    cursorShape: 'UNDERLINE',

    // color of the text
    foregroundColor: '#000',

    // terminal background color
    backgroundColor: '#fff',

    // border color (window, tabs)
    borderColor: '#333',

    // custom css to embed in the main window
    css: `
      .tabs_title {color: #000;}
      .tabs_list .tab_text {color: #ccc;}
      .tabs_list .tab_text.tab_textActive {color: #000}
    `,

    // custom css to embed in the terminal window
    termCSS: `
      span.unicode-node {line-height:1.35;}
    `,

    // set to `true` if you're using a Linux set up
    // that doesn't shows native menus
    // default: `false` on Linux, `true` on Windows (ignored on macOS)
    showHamburgerMenu: '',

    // set to `false` if you want to hide the minimize, maximize and close buttons
    // additionally, set to `'left'` if you want them on the left, like in Ubuntu
    // default: `true` on windows and Linux (ignored on macOS)
    showWindowControls: '',

    // custom padding (css format, i.e.: `top right bottom left`)
    padding: '12px',

    // the full list. if you're going to provide the full color palette,
    // including the 6 x 6 color cubes and the grayscale map, just provide
    // an array here instead of a color map object
    //colors: {
      //black: '#394c4e',
      //red: '#ff5e5e',
      //green: '#33ff00',
      //yellow: '#ffff00',
      //blue: '#0027ff',
      //magenta: '#cc00ff',
      //cyan: '#32efc6',
      //white: '#d0d0d0',
      //lightBlack: '#808080',
      //lightRed: '#ff0000',
      //lightGreen: '#33ff00',
      //lightYellow: '#ffff00',
      //lightBlue: '#0066ff',
      //lightMagenta: '#cc00ff',
      //lightCyan: '#00ffff',
      //lightWhite: '#ffffff'
    //},

    colors: [
      '#073642',
      '#dc322f',
      '#33ff00',
      '#fff000',
      '#0027ff',
      '#cc00ff',
      '#32efc6',
      '#eee8d5',
      '#002b36',
      '#cb4b16',
      '#586e75',
      '#657b83',
      '#839496',
      '#6c71c4',
      '#93a1a1',
      '#fdf6e3'
    ],

    // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
    // if left empty, your system's login shell will be used by default
    shell: '',

    // for setting shell arguments (i.e. for using interactive shellArgs: ['-i'])
    // by default ['--login'] will be used
    shellArgs: ['--login'],

    // for environment variables
    env: {},

    // set to false for no bell
    bell: false,

    // if true, selected text will automatically be copied to the clipboard
    copyOnSelect: false

    // URL to custom bell
    // bellSoundURL: 'http://example.com/bell.mp3',

    // for advanced config flags please refer to https://hyper.is/#cfg
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hyperpower`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: [
    'hyperlinks'
  ],

  // in development, you can create a directory under
  // `~/.hyper_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: []
};
