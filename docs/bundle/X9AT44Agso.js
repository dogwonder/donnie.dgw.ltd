document.addEventListener("DOMContentLoaded", function() {

        const ruffleSources = ['object.aspect-ratio ruffle-embed', 'object.aspect-ratio ruffle-player', '.ruffle-container'];

        document.querySelectorAll(ruffleSources.join(",")).forEach((object) => {
          object.style.maxWidth = "100%";
          object.style.height = "auto";
          object.style.aspectRatio = `${object.getAttribute(
            "width"
          )} / ${object.getAttribute("height")}`;
        });

    });