const colors = require('tailwindcss/colors');

module.exports = {
    content: [
        './src/main/resources/theme/cloud-iam-redesign/**/*.{scss,ftl,html,properties}',
    ],
    theme: {
        colors: {
            transparent: 'transparent',
            current: 'currentColor',
            black: colors.black,
            white: colors.white,
            gray: colors.gray,
            emerald: colors.emerald,
            indigo: colors.indigo,
            yellow: colors.yellow,
            ciam_dark: '#00318A',
            ciam_medium: '#3063BC',
            ciam_light: '#86E2FA',
        },
    },
    plugins: [
        require('@tailwindcss/forms'),
    ],
};
