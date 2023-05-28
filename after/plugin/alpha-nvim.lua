local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
"                                      .:~!?JY55PPP55YJ7!^!~!.                                       ",
"                                  :!JG#&&&##BBGGGGBBBBB#Y~.^~:..                                    ",
"                  .^!~.        :?G&#G5?!~^^:::::^^!7?7!!^   :!7?J!:.                                ",
"                 ~BBPGG57^.  !P&BY!::...:::::::::::::::^~~.^?5YG##5~                                ",
"                 G@YJ??YPBGYG&5~:.::^~!77??JJ?J??77!~~^::!~!^755Y5B&G!.                             ",
"                 ^5#&BPYJ?JBY^.:^!?JJY?777!!!~!!?YY?JYYJ?7?~:.^?5PP5B@B!                            ",
"                    7P##BBP~.:!JYJ7?YJY~^^^^^^^J5~7P~^~!?JJJ7^:^~?GG55B@5:                          ",
"                      .P@5::?YJ!~^!B: !B~^^^^^!&:  5B^^^^^~7Y5?~~~!PBP5P&#!       ^?Y555Y?!.        ",
"                      ~@P:75J~^^^^P#  ~@J^^^^^?@Y:^B@!^^^^^^^~J5?~~~PBPP5#@?   .JBB5?7!7?YG#5^      ",
"                      ##^JY~^^^^^^G@B5&@5^^^^^?@@&@@@7^^^^^^^^^!55!~!GGPPYB@Y ^##7:::::::::~P@?     ",
"                     7@JYJ^^^^^^^^GBP@&&5^^^^^~&JP&B&!^^^~7??JJJYP#?~?#PPP5G@Y##:::::::::::^:5@!    ",
"                     G@PJ^^^^^^^^^JBYP5&7^^^^^^Y#5YBG^^7YY?!~~~!!75GJ!BPPPP5B@@P~!!!~::::^~~^~@5    ",
"                  !P#P#P^^^~!!!!~^^5G5GY^~JP5J~^?55Y~^7P!^^^^^^^^^~~?5#GPPPP5#&BP5555G!~~~!~:?@7    ",
"                ^G&Y~^P?^^!777777~^^!!~^~B@@#BG7^^^^^^P!^^^^^^^^^^!7!!GBPPPPPPGYJJYYYG!!!~~~J@5.    ",
"               !&G~^^^Y7^^~!!!!!~^^^^^^^7&57!!7Y7^^^^^G!~^^^^^^^~!77777#PPPPPPPP555Y&P!!7?5BB7      ",
"              :&B^^^^^JJ^^^^^^^^^^^^^^^^~57!!!~?J^^^^^?57!!!!!!7777777?#PPPPPPPPP55#&BGGP5J~.       ",
"              7@?^^^^~?G^~^^^^^^^^^^^^^^^!J??7^~J^^^^^^75J777777777777PBPPPPPPPP5P&B:               ",
"              !@5^~!!775J^!~^^^^^^^^^^^^^^^~~~?7!^^^^^^^^!7777777777?BBPPPPPPPPPP#@Y!^.             ",
"               Y@Y~!!!77P7~!~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^~777777777G&BPPPPPPPPY!~!J5GGP~           ",
"                7BB5?7775@?^!!!~^^^^^^^^^^^^^^^^^^^^^^~~!7777777777P#GGBGGGG5?~^^^~^:..Y@~          ",
"                  ~JPGGGBG@5~~!!!!!~~^^^^^^^^^^^^^^~!!77777777777JB#BBGGB#Y?7~~!!~:.    Y@~         ",
"                         Y@#GJ!~!!!!!!!!!!!~!!!!!77777777777777?P#BBBBBBGBG????7~.       Y&~        ",
"                       .P@BPPGGY7~!!!777777777777777777777777JPBBBBBBBBBBGBP???~~~~:.     Y&~       ",
"                      .P@GPPPPPGGPY7!!!!!7777777777777777?J5GBBGGGGGGBBBBBPBY7?~^^^~~^:.   5&^      ",
"                      ?@BPPPPPPPPPGBGPYJ?77!!7!7!777?JY5GGBBGPPPPPPPPPGGGGGGB7?^^^^^^^^^^.  5&^     ",
"                     .#&PPPPPPPPPPPPPGBBBBBGGGPG##GB@&BBBGGPPPPPPPPPPPPPGGGP#?7^^^^^^:::::.  5&^    ",
"                     ^@#PPPPPPPPPPPPPGBBBBBBBGG&&7  5@#GGGPPPPPPPPPPPPPPPGGP##PYYYYYYYYYYYY555&B    ",
"                     ^@#PPPPPPPPPPPPGBBBBBGGB#&5^    !B&BPPPPPPPPPPPPPPPPPGP&&7                     ",
"                      P@GPPPPPPPPPPGGGGGGB#&BJ^        ?B&#GPPPPPPPPPPPPPPPB@Y                      ",
"                      :G@BGPPPPPPGGGGB###GY~             ~5B&#BGPPPPPPPPPPB@5.                      ",
"                        !P##########BPY7^                   ~?PB####BBB##&G!                        ",
"                           ^!7777!~:                             ^!7?J??!^                          ",
"                                                                                                    ",
"                                                                                                    ",
}

-- Set menu
dashboard.section.buttons.val = {
    dashboard.button( "e", "  > New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "f", "  > Find file", ":Telescope find_files<CR>"),
    dashboard.button( "r", "󰈢  > Recent file"   , ":Telescope oldfiles<CR>"),
    dashboard.button( "q", "  > Quit neovim", ":qa<CR>"),
}

dashboard.section.header.opts.hl = "String"

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
