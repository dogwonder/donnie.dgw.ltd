var ddScripts = {

    // 'use strict';

    ruffleEmbeds: function() {

        const ruffleSources = ['object.aspect-ratio ruffle-embed', 'object.aspect-ratio ruffle-player', '.ruffle-container'];

        //If no ruffle embeds are found bail
        if (!ruffleSources) return;

        document.querySelectorAll(ruffleSources.join(",")).forEach((object) => {
          object.style.maxWidth = "100%";
          object.style.height = "auto";
          object.style.aspectRatio = `${object.getAttribute(
            "width"
          )} / ${object.getAttribute("height")}`;
        });

    },

    animateText: function(element, audioFile) {

        const text = document.getElementById(element);
        //If no text is found bail
        if (!text) return;

        const words = text.innerHTML.split(' ');
        text.innerHTML = '';

        const numTimeouts = words.length;
        let timeoutsFinished = 0;

        const audio = new Audio(audioFile);

        for (let i = 0; i < words.length; i++) {
        setTimeout(() => {
                text.innerHTML += words[i] + ' ';
                timeoutsFinished++;
                if (timeoutsFinished === numTimeouts) {
                    audio.pause();
                    const event = new CustomEvent('wordsFinished');
                    document.dispatchEvent(event);
                }
            }, i * 10);
        }
    },

}

document.addEventListener("DOMContentLoaded", function() {

  ddScripts.ruffleEmbeds();

}); 