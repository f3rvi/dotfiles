vim.g.nord_bold = false
vim.g.nord_italic = false

local present, nord = pcall(require, 'nord')
if not present then
  return
end

nord.set()

local signs = {
  { name = "DiagnosticSignError", text = "" },
  { name = "DiagnosticSignWarn", text = "" },
  { name = "DiagnosticSignHint", text = "" },
  { name = "DiagnosticSignInfo", text = "" },
}
for _, sign in ipairs(signs) do
  if not sign.texthl then sign.texthl = sign.name end
  vim.fn.sign_define(sign.name, sign)
end


-- CMP
vim.cmd [[

  hi CmpPmenuSel guibg=#343A46 guifg=NONE
  hi CmpPmenu guibg=#2A303C
  hi CmpDocBorder guifg=#4B515D
  hi CmpItemAbbrDeprecated guifg=#646A76 guibg=NONE gui=strikethrough
  hi CmpItemAbbr guifg=#ABB2BF guibg=NONE
  hi CmpItemAbbrMatch guifg=#7797B7 guibg=NONE gui=bold
  hi CmpItemAbbrMatchFuzzy guifg=#7797B7 guibg=NONE gui=bold
  hi CmpItemMenu guibg=NONE gui=italic guifg=#606672
  hi CmpItemKindField guifg=#88C0D0 guibg=NONE
  hi CmpItemKindProperty guifg=#88C0D0 guibg=NONE
  hi CmpItemKindEvent guifg=#88C0D0 guibg=NONE
  hi CmpItemKindText guifg=#A3BE8C guibg=NONE
  hi CmpItemKindKeyword guifg=#8FBCBB guibg=NONE
  hi CmpItemKindConstant guifg=#81A1C1 guibg=NONE
  hi CmpItemKindConstructor guifg=#7797B7
  hi CmpItemKindReference guifg=#E5E9F0 guibg=NONE
  hi CmpItemKindFunction guifg=#81A1C1 guibg=NONE
  hi CmpItemKindStruct guifg=#81A1C1 guibg=NONE
  hi CmpItemKindModule guifg=#88C0D0 guibg=NONE
  hi CmpItemKindOperator guifg=#E5E9F0 guibg=NONE
  hi CmpItemKindVariable guifg=#81A1C1 guibg=NONE
  hi CmpItemKindFile guifg=#8FBCBB guibg=NONE
  hi CmpItemKindUnit guifg=#81A1C1 guibg=NONE
  hi CmpItemKindSnippet guifg=#BF616A guibg=NONE
  hi CmpItemKindFolder guifg=#8FBCBB guibg=NONE
  hi CmpItemKindMethod guifg=#81A1C1 guibg=NONE
  hi CmpItemKindColor guifg=#BF616A guibg=NONE
  hi CmpItemKindTypeParameter guifg=#A3BE8C guibg=NONE

]]


-- Mason
vim.cmd [[

  hi MasonHeader guibg=#A3BE8C guifg=#343A46
  hi MasonNormal guibg=#2A303C
  hi MasonHighlight guifg=#7797B7
  hi MasonHighlightBlock guifg=#343A46 guibg=#D08770
  hi MasonHighlightBlockBold guifg=#343A46 guibg=#D08770
  hi MasonHeaderSecondary guifg=#2E3440 guibg=#81A1C1
  hi MasonMuted guifg=#646A76
  hi MasonMutedBlock guifg=#646A76 guibg=#373D49

]]


-- Devicons
vim.cmd [[

  hi DevIconDefault guifg=#BF616A
  hi DevIconc guifg=#7797B7
  hi DevIconcss guifg=#7797B7
  hi DevIcondeb guifg=#9AAFE6
  hi DevIconDockerfile guifg=#9AAFE6
  hi DevIconhtml guifg=#DE878F
  hi DevIconjpeg guifg=#A983A2
  hi DevIconjpg guifg=#A983A2
  hi DevIconjs guifg=#E1C181
  hi DevIconkt guifg=#E93A83
  hi DevIconlock guifg=#BF616A
  hi DevIconlua guifg=#7797B7
  hi DevIconmp3 guifg=#ABB2BF
  hi DevIconmp4 guifg=#ABB2BF
  hi DevIconout guifg=#ABB2BF
  hi DevIconpng guifg=#A983A2
  hi DevIconpy guifg=#9AAFE6
  hi DevIcontoml guifg=#7797B7
  hi DevIconts guifg=#6484A4
  hi DevIconttf guifg=#ABB2BF
  hi DevIconrb guifg=#D57780
  hi DevIconrpm guifg=#E93A83
  hi DevIconvue guifg=#AFCA98
  hi DevIconwoff guifg=#ABB2BF
  hi DevIconwoff2 guifg=#ABB2BF
  hi DevIconxz guifg=#E1C181
  hi DevIconzip guifg=#E1C181
  hi DevIconZig guifg=#E93A83

]]

-- Telescope
vim.cmd [[

  hi TelescopeResultsBorder guibg=#2A303C
  hi TelescopePromptNormal guifg=#ABB2BF guibg=#343A46
  hi TelescopePromptBorder guibg=#343A46
  hi TelescopePromptPrefix guifg=#BF616A
  hi TelescopeResultsNormal guibg=#2A303C
  hi TelescopeSelectionCaret guibg=#343A46 guifg=#BF616A
  hi TelescopeSelection guibg=#343A46
  hi TelescopeMatching guifg=#88C0D0
  hi TelescopeResultsTitle guibg=#A3BE8C guifg=#343A46
  hi TelescopePromptTitle guibg=#D08770 guifg=#343A46

]]

-- Nvim Tree
vim.cmd [[
   
  hi NvimTreeCursorLine guibg=#343A46
  hi NvimTreeIndentMarker guifg=#565C68
  hi NvimTreeRootFolder guifg=#D8DEE9 gui=underline
  hi NvimTreeFolderName guifg=#7797B7
  hi NvimTreeOpenedFolderName guifg=#7797B7

]]

-- Misc
vim.cmd [[

  hi AlphaHeader guifg=#565C68
  hi AlphaButtons guifg=#646A76
  hi DiagnosticSignWarn guifg=#EBCB8B

]]
