--MIT License
--(included because the fellow who made Some Rich Asshole used the MIT License.)

--(c) 2017 Alex "Zandrae" Wright (Wyrmrest Accord-US) with a ton of help from
--Bor Blasthammer (Wyrmrest Accord-US) who did most of the actual work.
--Based on: Some Rich Asshole Firefox/Chrome Addon Copyright (c) 2015 Drew Wilson,
--Some Rich Asshole Enhanced for Firefox (c) 2016 by "Strange," and
--Some Rich Asshole Enhanced for Chrome (c) 2016 "williamdingiv."

--Permission is hereby granted, free of charge, to any person obtaining a copy
--of this software and associated documentation files (the "Software"), to deal
--in the Software without restriction, including without limitation the rights
--to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
--copies of the Software, and to permit persons to whom the Software is
--furnished to do so, subject to the following conditions:

--The above copyright notice and this permission notice shall be included in all
--copies or substantial portions of the Software.

--THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
--IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
--FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
--AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
--LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
--OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
--SOFTWARE.

local getOut = {
    {
        pattern = "%f[%a][Dd][Oo][Nn][Aa][Ll][Dd]%s*[Tt][Rr][Uu][Mm][Pp]%f[%A]",
        replacements = {
            "Some Rich Asshole","The Weapons-Grade Plum","Some Witless Fucking Cocksplat","Some Weaselheaded Fucknugget","Mangled Apricot Hellbeast","Some Clueless Numpty","The Bloviating Fleshbag", "Some Tiny-Fingered, Cheeto-Faced, Ferret-Wearing Shitgibbon", "The Living Cockwomble", "Ludicrous Tangerine Ballbag", "Some Toupeed Fucktrumpet", "Short-Fingered Vulgarian", "Some Free-Floating Misogynist", "The Thin-Skinned Tyrant", "Some Disgraced Racist", "Talking Combover", "Cheeto-Dusted Bloviator", "Bag of Toxic Sludge", "Man-Sized Sebaceous Cyst", "Hairpiece Come to Life", "Some Cartoon Plutocrat", "Cable News Fever Dream", "The Living Youtube Comment Thread", "The Monument to Hubris", "The Tantrum Pumpkin", "The Marmalade Manchild", "Some Incoherent Creamsicle", "Mendacious Mango", "Robert Mugabe of the Hudson", "Some Ape in a Suit", "The Stale Dorito", "Some Il Douche", "Tiny Hands, Tiny Crowds", "Rotten Orange Sandworm", "The Tangerine Hobgoblin", "Gallywix's Ugly Orange Cousin", "Some Stubby-Fingered Living Ponzi Scheme", "Some Cantaloupe-Hued Attention Whore", "Some Maniacal Orange Crayon", "Fuckface Von Clownstick", "The Raging Orange Manatee", "The Fascist Carnival Barker", "Some Sentient Caps-Lock Button", "The Sociopathic, 70-year-old Toddler",
        }
    },
    {
        pattern = "%f[%a][Tt][Rr][Uu][Mm][Pp]%f[%A]",
        replacements = {
            "Rich Asshole", "Weapons-Grade Plum", "Witless Fucking Cocksplat", "Weaselheaded Fucknugget", "Mangled Apricot Hellbeast", "Clueless Numpty", "Bloviating Fleshbag", "Tiny-Fingered, Cheeto-Faced, Ferret-Wearing Shitgibbon", "A Living Cockwomble", "Ludicrous Tangerine Ballbag", "Toupeed Fucktrumpet", "Short-Fingered Vulgarian", "Free-Floating Misogynist", "Thin-Skinned Tyrant", "A Disgraced Racist", "Talking Combover", "Cheeto-Dusted Bloviator", "Bag of Toxic Sludge", "Man-Sized Sebaceous Cyst", "Hairpiece Come to Life", "Cartoon Plutocrat", "Cable News Fever Dream", "Living Youtube Comment Thread", "Monument to Hubris", "Tantrum Pumpkin", "Marmalade Manchild", "Incoherent Creamsicle", "Mendacious Mango", "Robert Mugabe of the Hudson", "Ape in a Suit", "A Stale Dorito", "Il Douche", "Tiny Hands, Tiny Crowds", "Rotten Orange Sandworm", "Tangerine Hobgoblin", "Gallywix's Ugly Orange Cousin", "Stubby-Fingered Living Ponzi Scheme","Cantaloupe-Hued Attention Whore", "Maniacal Orange Crayon", "Fuckface Von Clownstick", "Raging Orange Manatee", "Fascist Carnival Barker", "Sentient Caps-Lock Button", "Sociopathic, 70-year-old Toddler",
        }
    },
    {
        pattern = "%f[%a][Gg][Oo][Dd]%s*[Ee][Mm][Pp][Ee][Rr][Oo][Rr]%f[%A]",
        replacements = {
            "Pathetic Bitchbaby","National Embarrassment",
        }
    },
}


local function AssholeFilter(self, event, msg, ...)
    for i, asshole in ipairs(getOut) do
        msg = msg:gsub(asshole.pattern, asshole.replacements[fastrandom(1, #asshole.replacements)])
    end
  return false, msg, ...
end

ChatFrame_AddMessageEventFilter("CHAT_MSG_SAY", AssholeFilter)
ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER", AssholeFilter)
ChatFrame_AddMessageEventFilter("CHAT_MSG_GUILD", AssholeFilter)
ChatFrame_AddMessageEventFilter("CHAT_MSG_YELL", AssholeFilter)
ChatFrame_AddMessageEventFilter("CHAT_MSG_CHANNEL", AssholeFilter)
ChatFrame_AddMessageEventFilter("CHAT_MSG_BATTLEGROUND", AssholeFilter)
