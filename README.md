# Index of fonts
Ordinary Unicode fonts for use with [bob's game](https://github.com/bobsgame/bobsgame) and non-OpenType-savvy programs (e.g. Haansoft Hangul NEO or Microsoft Word 2007).
* My own version of **BobsGame** font with revised glyphs and support for more glyphs like vowels with umlauts.
* **BobsGame Big** – Based on the font used in Mario & Luigi RPG games for the Nintendo DS. This font was created in 2012-12-20. **P.S.** The font was hosted in a subfolder in the Bob Corporation website.
* **BobsGame Mono** – A modified version of the “System VIO” font from OS/2 with revised glyphs and support for more glyphs. **P.S.** The game author uploaded it to the Bob Corporation website in December 2015 and later removed it.
* **BobsGame nD** – A modified version of the font in third/fourth generation Pokémon games with revised glyphs and support for more glyphs. The number glyphs were taken from *Castlevania: Aria of Sorrow*. The font will be used for nDworld. Windows Vista and newer fakes the font preview as Japanese (21 Kanji letters are included in this font).
* **Pixel Sans** – Based on the font used in many Nintendo 3DS, Game Boy Advance and Nintendo DS games. This font was created in 2015 under the name of **DS Sans**. Windows Vista and newer fakes the font preview as Chinese (the ideographs are included in Pixel Sans Fallback).
* **Pixel Sans Fallback** – For use in Japanese and Korean versions when the [game author](https://github.com/robertpelloni) makes the game fully translatable. **P.S.** `fc-scan` does not show Japanese or Korean in the language fields despite these languages are supported.
* **Pixel Sans Terminal** – An alternate version with lowercase letters changed to match the font used in [UniPad](http://www.unipad.org/) (Sharmahd Computing, 1997-2006).
* **Pixel Sans Textbook** – A modified version of the font used in Western and Korean versions of Pokémon Black & White with revised glyphs and support for more glyphs. This font has the same character set as the non-Fallback version of Pixel Sans.

## Tools used
* **CrystalTile2** (AngelTeam) – GBA game charset finding
* **FontCreator 5.6** (High-Logic B.V.) – TrueType font editing
* **NFTREdit** (DarthNemesis) – NFTR font editing
* **Tinke** (Benito Palacios Sánchez) – NFTR font extraction

## Installation Instructions
See [the fonts category on the Bob's Game FANDOM portal](https://bobsgame.fandom.com/wiki/Category:Fonts) in the .md files for installation instructions.

## NFTR Installation Instructions
The NFTR based on Pixel Sans Textbook includes partial coverage of CP1252. The only characters missing in the NFTR is the non-breaking space, florin and small tilde. Use [Tinke](https://github.com/pleonex/tinke) to replace the font file.
1. Download the More English Training European ROM from ROM sites (e.g. ROM Hustler or Emuparadise) and open it. **P.S.** ROM sites are blocked across GBAtemp according to the rules.
2. You see a file called **European_LC12.NFTR** in `common/fonts/data`.
3. Press **Change file** to replace the file.
4. Press **Save ROM** to save the ROM in a new name.
5. Test the font using flash cards (e.g. TTDS) or in emulators (e.g. NO$GBA).

**Note:** Do not apply this NFTR to the Japanese or Korean vesrions!
