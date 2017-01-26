local getOut = {
    {
        pattern = "%f[%a][Dd][Oo][Nn][Aa][Ll][Dd]%s*[Tt][Rr][Uu][Mm][Pp]%f[%A]",
        replacements = {
            "Some Rich Asshole","The Weapons-Grade Plum","Some Witless Fucking Cocksplat","Some Weaselheaded Fucknugget","Mangled Apricot Hellbeast","Some Clueless Numpty","The Bloviating Fleshbag", "Some Tiny-Fingered, Cheeto-Faced Blowhard", "Ferret-Wearing Shitgibbon", "An Anthropomorphic Cockwomble", "Ludicrous Tangerine Ballbag", "Some Toupeed Fucktrumpet", "Weaselheaded Fucknugget", "Short-Fingered Vulgarian", "Some Free-Floating Misogynist", "The Thin-Skinned Tyrant", "Some Disgraced Racist", "Talking Combover", "Cheeto-Dusted Bloviator", "Bag of Toxic Sludge", "Man-Sized Sebaceous Cyst", "Hairpiece Come to Life", "Some Cartoon Plutocrat", "Cable News Fever Dream", "The Living Youtube Comment Thread", "The Monument to Hubris", "The Tantrum Pumpkin", "The Marmalade Manchild", "Some Incoherent Creamsicle", "Mendacious Mango", "Robert Mugabe of the Hudson", "Some Ape in a Suit", "The Stale Dorito", "Some Il Douche",
        }
    },
    {
        pattern = "%f[%a][Tt][Rr][Uu][Mm][Pp]%f[%A]",
        replacements = {
            "Rich Asshole", "weapons-Grade Plum", "Witless Fucking Cocksplat", "Weaselheaded Fucknugget", "Mangled Apricot Hellbeast", "Clueless Numpty", "Bloviating Fleshbag", "Tiny-Fingered, Cheeto-Faced Blowhard, Ferret-Wearing Shitgibbon", "An Anthropomorphic Cockwomble", "Ludicrous Tangerine Ballbag", "Toupeed Fucktrumpet", "Weaselheaded Fucknugget", "Short-Fingered Vulgarian", "Free-Floating Misogynist", "Thin-Skinned Tyrant", "A Disgraced Racist", "Talking Combover", "Cheeto-Dusted Bloviator", "Bag of Toxic Sludge", "Man-Sized Sebaceous Cyst", "Hairpiece Come to Life", "Cartoon Plutocrat", "Cable News Fever Dream", "Living Youtube Comment Thread", "Monument to Hubris", "Tantrum Pumpkin", "Marmalade Manchild", "Incoherent Creamsicle", "Mendacious Mango", "Robert Mugabe of the Hudson", "Ape in a Suit", "A Stale Dorito", "Il Douche"
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
