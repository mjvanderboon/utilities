// ==UserScript==
// @name         Google Keep Checkmark Sound
// @namespace    https://keep.google.com/u/0/
// @version      0.1
// @description  plays sound when checkmark is clicked in google keep
// @author       Matthijs
// @match        https://keep.google.com/u/0/
// @grant        none
// @require http://code.jquery.com/jquery-latest.js
// ==/UserScript==

function addGlobalStyle(css) {
   var head, style;
   head = document.getElementsByTagName('head')[0];
   if (!head) { return; }
   style = document.createElement('style');
   style.type = 'text/css';
   style.innerHTML = css;
   head.appendChild(style);
}

$(document).ready(function() {
    setTimeout(function() {
        $(".IZ65Hb-MPu53c").click(function() { //class name from google keep checkboxes           
            let mCoinSound = new Audio("https://www.mboxdrive.com/checksound.mp3"); //externally hosted audio file of checkmark
            mCoinSound.volume = .35;
            mCoinSound.play();
        });
    }, 10000); //wait because some elements (checklists) take a long time to load from Google.
});
