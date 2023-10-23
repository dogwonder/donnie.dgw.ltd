const { EleventyRenderPlugin } = require("@11ty/eleventy");
const bundlerPlugin = require("@11ty/eleventy-plugin-bundle");
const sass = require("sass");
const path = require('node:path');
const slugify = require("slugify");
const lightningCSS = require("@11tyrocks/eleventy-plugin-lightningcss");

// Create a helpful production flag
const isProduction = process.env.NODE_ENV === 'production';

module.exports = eleventyConfig => { 

    eleventyConfig.addPassthroughCopy({"src/images": "images"});
    eleventyConfig.addPassthroughCopy({"src/scripts": "scripts"});
    eleventyConfig.addPassthroughCopy({"src/swf": "swf"});
    eleventyConfig.addPassthroughCopy({"src/fonts": "fonts"});

    //Plugins 
    eleventyConfig.addPlugin(EleventyRenderPlugin);
    eleventyConfig.addPlugin(bundlerPlugin)
    eleventyConfig.addPlugin(lightningCSS);

    //Templates
    eleventyConfig.addTemplateFormats("scss");

    // Creates the extension for use
    eleventyConfig.addExtension('scss', {
      outputFileExtension: 'css',

      compile(content, inputPath) {
        let parsed = path.parse(inputPath)

        if (parsed.name.startsWith('_')) return //Only compile files that don't start with an underscore

        console.log('🔮 compiling scss...', inputPath)

        return (data) => {
          let result = sass.compile(inputPath)
          return result.css
        }
      },

    })

    // Open the browser on launch
  eleventyConfig.setBrowserSyncConfig({
    open: true
  });

  //
  // Shortcodes
  //
  eleventyConfig.addShortcode("year", () => {
      return new Date().getFullYear();
  });

    return {
      markdownTemplateEngine: 'njk',
      dataTemplateEngine: 'njk',
      htmlTemplateEngine: 'njk',
      dir: {
        input: 'src',
        output: 'docs'
      }
    };


}