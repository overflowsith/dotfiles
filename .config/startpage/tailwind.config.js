const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  theme: {
    fontFamily: {
      ...defaultTheme.fontFamily,
      mono: [
        'Fira Code',
        ...defaultTheme.fontFamily.mono
      ]
    },
    extend: {}
  },
  variants: {},
  plugins: []
}
