# Notes 

## User Journey and site map

This is bonkers and amazing. 

### Level 1
1. intro.html (loads intro.swf / clouds.swf / book.swf / menu.swf ) // menu.html (loads menu.swf)
2. news/pop1.html >> news/newspaper4.htm >> close (top.swf, side.swf)
3. news/pop2.html >> news/newspaper3.htm >> close (top.swf, side.swf)
4. the/tangent/index.html (loads smurf.swf)
5. the/tangent/universe/is_unstable.html (loads philosophy.swf)
6. loads dad.swf >> donnie.swf >> straight.swf >> gran-donnie.swf (multiple toggle on/off?) >> thebook.swf 

### Level 2
1. menu.html (menu.swf / clouds.swf / book.swf)
2. pop/pop_level2.html (loads pass2.swf)
3. pop/close.html
4. are/you/sleep/golfing/index.html (loads golf.swf, birds.swf, draw.swf)
5. news/pop3.html >> news/newspaper2.htm
6. Missing section (street.swf, fear.swf, love.swf)
    1. are/you/sleep/golfing/missing/1.html
    2. are/you/sleep/golfing/missing/2.html
    3. are/you/sleep/golfing/missing/3.html >> news/newspaper5.htm
    4. are/you/sleep/golfing/missing/4.html
    5. are/you/sleep/golfing/missing/5.html
    6. are/you/sleep/golfing/missing/6.html
    7. are/you/sleep/golfing/missing/7.html
7. sparkle/motion/index.html (loads phase2_end.swf)

### Level 3
1. menu.html (menu.swf / clouds.swf / book.swf)
2. pop/pop_level3.html (loads pass3.swf)
3. pop/close.html
4. from/the/sky/index.html (loads trampolin.swf)
5. news/pop6.html 
6. Missing section (lamp.swf, phone.swf)
    1. from/the/sky/transcript.html

## Easter eggs

1. Mailto on News popup, e.g. news/pop1.html (loads iseeyou.swf)

## Level 1 User Journey

1. **Initial Page Load**: 
   - Opens `intro.html`, which loads several swfs: `intro.swf`, `clouds.swf`, `book.swf`, and `menu.swf`.
   - Alternatively, `menu.html` can be loaded directly, which only loads `menu.swf`.

2. **News pop-up (Part 1)**: 
   - Pop-up is displayed - `news/pop1.html`, which in turn loads `news/newspaper4.htm` (loads `top.swf` & `side.swf`).
   - The section is closed the next part of the game is loaded.

3. **News pop-up (Part 2)**: 
   - Pop-up is displayed - `news/pop2.html`, which in turn loads `news/newspaper3.htm` (loads `top.swf` & `side.swf`).
   - Similar to the previous step, once closed the next part of the game is loaded.

4. **The Tangent Universe Is Unstable (Part 1)**:
   - Opens `the/tangent/index.html`, which loads `smurf.swf`.

5. **The Tangent Universe Is Unstable (Part 2)**:
   - Opens`the/tangent/universe/is_unstable.html, which loads `philosophy.swf`.
   - A series of SWFs are loaded in this order: `dad.swf`, `donnie.swf`, `straight.swf`, `gran-donnie.swf`.
   - Followed by `thebook.swf`.

## Level 2 User Journey

1. **Return to Menu**:
   - User opens `menu.html`, loading `menu.swf`, `clouds.swf`, and `book.swf`.

2. **Level 2 Pop Section**:
   - Pop-up is displayed `pop/pop_level2.html`, which loads `pass2.swf`.

3. **Closing the Pop Section**:
   - Loads `pop/close.html`.

4. **Golfing Experience**:
   - Redirects to `are/you/sleep/golfing/index.html`.
   - This page loads multiple SWFs: `golf.swf`, `birds.swf`, `draw.swf`.

5. **Exploring News Section (Part 3)**:
   - The user goes to `news/pop3.html` and then to `news/newspaper2.htm`.

6. **Missing Section**:
   - The SWF files `street.swf`, `love.swf` and `fear.swf` fails to load when this happens we listen for that network event and load up `are/you/sleep/golfing/missing/intro.html`
   - The reconstructed game progresses from `are/you/sleep/golfing/missing/1.html` to `are/you/sleep/golfing/missing/7.html`.
   - The journey includes a pop-up to `news/newspaper5.htm`.

7. **Sparkle Motion Section**:
   - Game progresses to `sparkle/motion/index.html`, which loads `phase2_end.swf`.

## Level 3 User Journey

1. **Revisiting Menu**:
   - User opens `menu.html` again, loading the same set of SWFs as before.

2. **Level 3 Pop Section**:
   - Pop-up is displayed `pop/pop_level3.html`, loading `pass3.swf`.

3. **Concluding the Pop Section**:
   - Visits `pop/close.html`.

4. **Sky-Themed Exploration**:
   - Redirects to `from/the/sky/index.html`, which loads `trampolin.swf`.

5. **Pop-up warning**:
   - Pop-up is displayed `news/pop6.html`.

6. **Final Missing Section**:
   - The SWF files `lamp.swf` and `phone.swf` fail to load, once `phone.swf` fails we redirect to reconstructed page `from/the/sky/transcript.html`
   - End of the game

---

## Inspiration
I've always loved this website. Remember this was....2001! When websites generally [looked like this](https://www.webdesignmuseum.org/gallery/microsoft-2000). We were just starting to use CSS and Semtantic layout methods to produce more interesting websites. But truthfully back then if you wanyted to build a unique experience for users you would use Flash. Flash obviously is now dead after many security issues and Steve Jobs killing it off after declaring it would never be allowed onto the iPhone in 2007. 

At the time this was just so impressive. Built by the agency Hi-ReS! and launched in October 2001. It totally eshewed the general approach to building websites, it was spralling, there wasn't really any formal navigation. You progressed through the site through shear exploration, it felt just so novel. And it really isn't something we've seen since. User Experience design, accessibility, formal 'design' methodologies, design thinking and education (the original creator was a [Fine Artist](https://alexandrajugovic.com/donniedarko)), development convention and the shear weight of user expectation has led (in many ways rightly) to something like this becoming impossible to imagine. 

Being a flash site it was semi-playable until recently via various archived version of the site. But as Flash became basically obsolete it was not possible to access this peice of internet history. I always dreamed of rebuilding it, either reverse engineering it or attempting to trry something in vanilla HTML/JS/CSS which would have been a huge undertaking and probably nothing compared to the artistry of the original

Step in Ruffle.js...a Flash Player emulator built in the Rust programming language. Well well well. Maybe game on?

## Ruffle.js Revival of the Game

### Playability Through the Internet Archive
- **Ruffle.js Integration:** The game has been made playable again through Ruffle.js. 
- **Internet Archive:** The game was [playable again](https://web.archive.org/web/20160303085928/http://archive.hi-res.net/donniedarko/) after many years, thanks to its availability on the Internet Archive.
- **Archival Inconsistencies:** Unfortunately, the game often got stuck after the initial menu or just after the first section. This varies depending on the site version or the specific archive capture accessed.
- **Dispersed Archives:** Many game pages are archived, but they are scattered across different parts of the archive, requiring direct access to certain pages to progress through the game.

### Resources and Digital Archaeology
- **Archived List of Pages and Files:** A comprehensive list of all the pages and files that were archived can be found [here](https://web.archive.org/web/*/http://archive.hi-res.net/donniedarko/*) and some from the [original site](https://web.archive.org/web/*/http://ww2.donniedarko.com/are/you/sleep/golfing/*).
- **Guide to the Site:** An archived [guide to the site](https://web.archive.org/web/20130106005533/http://ruinedeye.com/cd/aid2.htm) has been invaluable.
- **Creator’s Showcase:** Alexandra Jugovic, the site's creator, showcases the original site and much user journey on her [website reel](https://alexandrajugovic.com/donniedarko).
- **Building a Sitemap:** Utilizing these resources, along with 404 errors indicated in the console and network tab, helped in constructing a sitemap of the original site.
- **Reddit Insights:** Reddit discussions provided valuable insights and interpretations of the site's text, contributing significantly to the reconstruction process.

### Reconstruction and Archival Layers
- **Multi-Layered Archive:** The current version is an archive of an archive of an archive, originating from donniedarko.com and later archive.hi-res.net.
- **Lost Elements:** Unfortunately, some parts, particularly a few SWF files, were lost over time. These include files from Level 2 (`street.swf`, `love.swf`, `fear.swf`) and Level 3 (`lamp.swf`, `phone.swf`). These were the bits I had to reconstruct
- **Reconstruction Efforts:** These missing parts have been reconstructed in HTML, guided by the archived guide website, the website reel, and discussions on Reddit about the site's content.

## Experience and Assistance

Now, given the missing parts I needed to basically reconstruct flash scenes in frigging HTML. I've been using GitHub CoPilot for about a year now, and honestly there were some part of this I could not have achieved without it. 

Utilising some [Windows 98](https://jdan.github.io/98.css/) style assets allowed for a more authentic feel along side the orignal imagery. Also some pretty interesting effects via [SVG noise filters](https://aaadaaam.com)

Additional weird things like recording audo from parts of the Flash files to reuse in the reconstrcution effort. Hand-copying text from screen-grabs into HTML. It was utternly mad, but enjoyable. 

---

## Missing parts and notes

#### Desktop Recommended for Optimal Experience
- **Keyboard Input:** This application is best experienced on a desktop due to its reliance on keyboard input.
- **Navigation Note:** Occasionally, new tabs may not function properly. If this occurs, it's recommended to return to the [main menu](menu.html) and restart the process. Or make sure only one tab is open. 

#### Content Reconstruction Updates:
- **Missing Sections:** Some sections have been reconstructed in HTML/CSS/JavaScript to replace missing SWF files. The application now redirects to alternative content when attempting to access these files.
  - For instance, when `/are/you/sleep/golfing/love.swf` is requested, it will now redirect to `/are/you/sleep/golfing/missing/intro.html`.

#### Specific Level Updates:
- **Level 2 - Second Part:**
  - *Status:* The original SWF files for this section were not retrievable.
  - *Solution:* A reconstructed version has been implemented.
  - *Navigation:* Upon completing this segment, the game should automatically progress to the new content. If it does not, please [click here](/are/you/sleep/golfing/missing/intro.html) to continue.

- **Level 3 - Second Part:**
  - *Status:* The original SWF files for this section were also unavailable.
  - *Solution:* This segment has been similarly rebuilt.
  - *Navigation:* After finishing this part of the game, [click here](/from/the/sky/transcript.html) to proceed.

---

## SWF embed

{% set swfFile = "/are/you/linker.swf" %}
<div id="swf"></div>

OR

<object>
    <embed src="/are/you/sleep/golfing/golf.swf" width="800" height="500">
</object>

---

## Missing

Level 2

```
/are/you/sleep/golfing/street.swf
/are/you/sleep/golfing/love.swf
/are/you/sleep/golfing/fear.swf
```

Level 3

```
/from/the/sky/lamp.swf
/from/the/sky/phone.swf
```

---

## To Do 
Improve
Lines - /are/you/sleep/golfing/missing/7.html
Responsive typography based on vw  - relative to container

---

---

## Flash

```
sudo apt-get update
sudo apt-get install mtasc
touch fear.as
rmate fear.as
mtasc -main -header 200:150:30 fear.as -swf fear.swf
```


```
// ActionScript 2.0
class OpenURL {
    static function main() {
        // Define the URL you want to open
        var url:String = "/are/you/sleep/golfing/missing/intro.html";

        // Use the getURL function to open the URL in the same window
        // "_self" specifies that the URL should be opened in the same window
        getURL(url, "_self");
    }
}
```