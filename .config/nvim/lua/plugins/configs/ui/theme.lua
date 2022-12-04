local present, nord = pcall(require, 'nord')
if not present then
  return
end

vim.g.nord_bold = false
vim.g.nord_italic = false

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

  hi MasonHeader guibg=#88C0D0 guifg=#2E3440
  hi MasonHighlight guifg=#7797B7
  hi MasonHighlightBlock guifg=#2E3440 guibg=#81A1C1
  hi MasonHighlightBlockBold guifg=#2E3440 guibg=#81A1C1
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


-- Misc
vim.cmd [[
  
  hi NvimTreeCursorLine guibg=#343A46
  hi DiagnosticSignWarn guifg=#EBCB8B

]]
