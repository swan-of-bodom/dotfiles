--- Startup times for process: Primary/TUI ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.001  000.001: --- NVIM STARTING ---
000.385  000.384: event init
000.554  000.169: early init
000.654  000.101: locale set
000.739  000.085: init first window
001.492  000.753: inits 1
001.513  000.021: window checked
001.518  000.005: parsing arguments
002.284  000.075  000.075: require('vim.shared')
002.414  000.062  000.062: require('vim.inspect')
002.491  000.056  000.056: require('vim._options')
002.498  000.206  000.088: require('vim._editor')
002.501  000.368  000.088: require('vim._init_packages')
002.504  000.619: init lua interpreter
003.849  001.344: --- NVIM STARTED ---

--- Startup times for process: Embedded ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.001  000.001: --- NVIM STARTING ---
000.493  000.492: event init
000.698  000.205: early init
000.823  000.125: locale set
000.912  000.089: init first window
001.475  000.563: inits 1
001.508  000.033: window checked
001.513  000.004: parsing arguments
002.554  000.082  000.082: require('vim.shared')
002.726  000.085  000.085: require('vim.inspect')
002.836  000.081  000.081: require('vim._options')
002.839  000.274  000.108: require('vim._editor')
002.841  000.428  000.072: require('vim._init_packages')
002.844  000.904: init lua interpreter
003.103  000.259: expanding arguments
003.135  000.032: inits 2
003.719  000.584: init highlight
003.722  000.003: waiting for UI
004.060  000.338: done waiting for UI
004.092  000.032: clear screen
004.266  000.019  000.019: require('vim.keymap')
005.755  001.657  001.638: require('vim._defaults')
005.764  000.015: init default mappings & autocommands
006.785  000.093  000.093: sourcing /usr/share/nvim/runtime/ftplugin.vim
006.920  000.057  000.057: sourcing /usr/share/nvim/runtime/indent.vim
007.068  000.062  000.062: sourcing $VIM/sysinit.vim
008.999  001.207  001.207: require('lazy')
009.124  000.071  000.071: require('ffi')
009.311  000.101  000.101: require('vim.fs')
009.578  000.255  000.255: require('vim.uri')
009.601  000.465  000.108: require('vim.loader')
010.036  000.405  000.405: require('lazy.stats')
010.171  000.106  000.106: require('lazy.core.util')
010.347  000.173  000.173: require('lazy.core.config')
010.567  000.078  000.078: require('lazy.core.handler')
011.088  000.241  000.241: require('lazy.pkg')
011.096  000.364  000.123: require('lazy.core.meta')
011.109  000.540  000.176: require('lazy.core.plugin')
011.122  000.772  000.155: require('lazy.core.loader')
011.703  000.102  000.102: require('lazy.core.fragments')
014.606  000.098  000.098: require('lazy.core.handler.keys')
014.688  000.069  000.069: require('lazy.core.handler.event')
014.735  000.044  000.044: require('lazy.core.handler.cmd')
014.832  000.094  000.094: require('lazy.core.handler.ft')
016.168  000.029  000.029: sourcing /home/sorrowlol/.config/nvim/ftdetect/cairo.vim
016.215  000.010  000.010: sourcing /home/sorrowlol/.config/nvim/ftdetect/rust.vim
016.244  000.009  000.009: sourcing /home/sorrowlol/.config/nvim/ftdetect/solidity.vim
016.318  000.631  000.583: sourcing /usr/share/nvim/runtime/filetype.lua
017.730  000.162  000.162: require('tokyonight.config')
017.737  000.830  000.668: require('tokyonight')
018.165  000.082  000.082: sourcing /home/sorrowlol/.local/share/nvim/lazy/onedarkpro.nvim/plugin/onedarkpro.vim
019.804  000.122  000.122: require('mason-core.path')
020.141  000.232  000.232: require('mason-core.functional')
020.312  000.077  000.077: require('mason-core.functional.data')
020.322  000.160  000.083: require('mason-core.functional.function')
020.417  000.074  000.074: require('mason-core.functional.relation')
020.604  000.176  000.176: require('mason-core.functional.logic')
020.654  000.844  000.203: require('mason-core.platform')
020.941  000.286  000.286: require('mason.settings')
020.944  001.711  000.458: require('mason')
021.718  000.073  000.073: require('mason-core.functional.list')
021.794  000.066  000.066: require('mason-core.functional.string')
021.829  000.393  000.254: require('mason.api.command')
021.902  000.056  000.056: require('mason-registry.sources')
023.183  000.127  000.127: require('vim.lsp.log')
023.668  000.478  000.478: require('vim.lsp.protocol')
024.191  000.188  000.188: require('vim.lsp._snippet_grammar')
024.260  000.065  000.065: require('vim.highlight')
024.275  000.010  000.010: require('vim.F')
024.302  000.631  000.368: require('vim.lsp.util')
024.508  000.098  000.098: require('vim.lsp.sync')
024.522  000.217  000.119: require('vim.lsp._changetracking')
024.740  000.216  000.216: require('vim.lsp.rpc')
024.834  002.697  001.028: require('vim.lsp')
024.891  002.812  000.114: sourcing /home/sorrowlol/.local/share/nvim/lazy/nvim-lspconfig/plugin/lspconfig.lua
025.520  000.043  000.043: sourcing /home/sorrowlol/.local/share/nvim/lazy/plenary.nvim/plugin/plenary.vim
025.607  000.021  000.021: sourcing /home/sorrowlol/.local/share/nvim/lazy/todo-comments.nvim/plugin/todo.vim
026.574  000.075  000.075: require('todo-comments.util')
026.594  000.186  000.111: require('todo-comments.config')
027.040  000.353  000.353: require('todo-comments.highlight')
027.058  000.462  000.110: require('todo-comments.jump')
027.062  001.156  000.507: require('todo-comments')
028.204  000.044  000.044: require('diffview.lazy')
028.463  000.077  000.077: require('diffview.ffi')
028.561  000.095  000.095: require('diffview.oop')
028.578  000.268  000.096: require('diffview.async')
028.712  000.117  000.117: require('diffview.utils')
028.759  000.035  000.035: require('diffview.mock')
028.772  000.520  000.101: require('diffview.logger')
028.839  000.053  000.053: require('diffview.control')
028.989  000.084  000.084: require('diffview.events')
028.996  001.384  000.682: require('diffview.bootstrap')
029.020  001.519  000.135: sourcing /home/sorrowlol/.local/share/nvim/lazy/diffview.nvim/plugin/diffview.lua
029.516  000.056  000.056: sourcing /home/sorrowlol/.local/share/nvim/lazy/nvim-web-devicons/plugin/nvim-web-devicons.vim
029.651  000.056  000.056: sourcing /home/sorrowlol/.local/share/nvim/lazy/fzf-lua/plugin/fzf-lua.lua
029.691  000.011  000.011: sourcing /home/sorrowlol/.local/share/nvim/lazy/fzf-lua/plugin/fzf-lua.vim
030.621  000.249  000.249: require('fzf-lua.utils')
030.864  000.136  000.136: require('fzf-lua.lib.base64')
031.035  000.169  000.169: require('fzf-lua.lib.serpent')
031.041  000.415  000.111: require('fzf-lua.libuv')
031.054  000.778  000.113: require('fzf-lua.path')
031.402  000.239  000.239: require('fzf-lua.actions')
031.620  000.098  000.098: require('fzf-lua.class')
033.623  001.775  001.775: require('nvim-web-devicons.icons-default')
034.131  002.485  000.710: require('nvim-web-devicons')
034.247  002.843  000.261: require('fzf-lua.devicons')
034.525  000.056  000.056: require('fzf-lua.previewer')
034.745  000.493  000.437: require('fzf-lua.defaults')
034.754  003.699  000.124: require('fzf-lua.config')
034.832  000.019  000.019: sourcing /home/sorrowlol/.local/share/nvim/lazy/fzf-lua/plugin/fzf-lua.vim
034.891  000.027  000.027: sourcing /home/sorrowlol/.local/share/nvim/lazy/fzf-lua/autoload/fzf_lua.vim
035.456  000.053  000.053: require('fzf-lua.fzf')
035.577  000.117  000.117: require('fzf-lua.win')
035.627  000.048  000.048: require('fzf-lua.shell')
035.683  000.054  000.054: require('fzf-lua.make_entry')
035.693  000.412  000.140: require('fzf-lua.core')
035.702  005.988  001.054: require('fzf-lua')
035.978  000.097  000.097: sourcing /home/sorrowlol/.local/share/nvim/lazy/neogit/plugin/neogit.lua
036.084  000.058  000.058: require('neogit')
036.326  000.086  000.086: require('neogit.lib.util')
036.374  000.283  000.197: require('neogit.config')
036.412  000.037  000.037: require('neogit.lib.signs')
036.639  000.034  000.034: require('plenary.tbl')
036.643  000.075  000.040: require('plenary.vararg.rotate')
036.644  000.111  000.036: require('plenary.vararg')
036.680  000.035  000.035: require('plenary.errors')
036.720  000.038  000.038: require('plenary.functional')
036.725  000.232  000.048: require('plenary.async.async')
036.884  000.042  000.042: require('plenary.async.structs')
036.891  000.092  000.050: require('plenary.async.control')
036.898  000.138  000.046: require('plenary.async.util')
036.900  000.173  000.035: require('plenary.async.tests')
036.902  000.452  000.046: require('plenary.async')
037.330  000.134  000.134: require('neogit.logger')
037.470  000.050  000.050: require('neogit.lib.ui.component')
037.531  000.059  000.059: require('neogit.lib.ui.renderer')
037.568  000.036  000.036: require('neogit.lib.collection')
037.579  000.246  000.102: require('neogit.lib.ui')
037.751  000.050  000.050: require('plenary.bit')
037.804  000.224  000.174: require('plenary.path')
037.816  000.789  000.185: require('neogit.lib.buffer')
038.100  000.034  000.034: require('neogit.lib.git')
038.114  000.119  000.085: require('neogit.buffers.common')
038.125  000.262  000.143: require('neogit.buffers.status.ui')
038.178  000.051  000.051: require('neogit.popups')
038.226  000.047  000.047: require('neogit.watcher')
038.232  001.329  000.180: require('neogit.buffers.status')
038.235  001.821  000.040: require('neogit.autocmds')
038.419  000.068  000.068: require('neogit.lib.color')
038.421  000.185  000.117: require('neogit.lib.hl')
038.465  000.043  000.043: require('neogit.lib.state')
038.716  000.086  000.086: require('neogit.lib.notification')
038.725  000.150  000.064: require('neogit.lib.popup.builder')
038.792  000.065  000.065: require('neogit.lib.input')
038.964  000.112  000.112: require('neogit.lib.finder')
038.971  000.178  000.066: require('neogit.buffers.fuzzy_finder')
039.073  000.100  000.100: require('neogit.lib.popup.ui')
039.083  000.579  000.085: require('neogit.lib.popup')
039.085  000.610  000.031: require('neogit.lib')
039.506  000.219  000.219: require('neogit.process')
039.693  000.606  000.387: require('neogit.lib.git.cli')
046.671  002.941  002.941: require('vim.filetype')
047.466  000.036  000.036: require('luasnip.util.types')
047.473  000.086  000.051: require('luasnip.util.ext_opts')
047.639  000.030  000.030: require('luasnip.util.lazy_table')
047.679  000.038  000.038: require('luasnip.extras.filetype_functions')
047.687  000.133  000.066: require('luasnip.default_config')
047.690  000.216  000.082: require('luasnip.session')
047.693  000.748  000.446: require('luasnip.config')
047.851  000.055  000.055: require('luasnip.util.util')
047.929  000.029  000.029: require('luasnip.nodes.key_indexer')
047.934  000.081  000.052: require('luasnip.nodes.util')
048.068  000.034  000.034: require('luasnip.session.snippet_collection.source')
048.099  000.029  000.029: require('luasnip.util.table')
048.130  000.030  000.030: require('luasnip.util.auto_table')
048.137  000.202  000.109: require('luasnip.session.snippet_collection')
048.252  000.036  000.036: require('luasnip.util.select')
048.282  000.029  000.029: require('luasnip.util.time')
048.707  000.535  000.470: require('luasnip.util._builtin_vars')
048.829  000.691  000.156: require('luasnip.util.environ')
048.880  000.049  000.049: require('luasnip.util.extend_decorator')
049.015  000.086  000.086: require('luasnip.util.path')
049.125  000.061  000.061: require('luasnip.util.log')
049.131  000.114  000.053: require('luasnip.loaders.util')
049.165  000.033  000.033: require('luasnip.loaders.data')
049.248  000.081  000.081: require('luasnip.loaders.fs_watchers')
049.262  000.381  000.066: require('luasnip.loaders')
049.280  001.578  000.120: require('luasnip')
049.309  005.661  000.393: sourcing /home/sorrowlol/.local/share/nvim/lazy/LuaSnip/plugin/luasnip.lua
049.404  000.041  000.041: sourcing /home/sorrowlol/.local/share/nvim/lazy/LuaSnip/plugin/luasnip.vim
050.425  000.090  000.090: require('cmp.utils.api')
050.502  000.034  000.034: require('cmp.types.cmp')
050.586  000.040  000.040: require('cmp.utils.misc')
050.652  000.148  000.108: require('cmp.types.lsp')
050.682  000.029  000.029: require('cmp.types.vim')
050.684  000.254  000.043: require('cmp.types')
050.718  000.032  000.032: require('cmp.utils.highlight')
050.818  000.029  000.029: require('cmp.utils.debug')
050.827  000.108  000.079: require('cmp.utils.autocmd')
051.153  000.879  000.395: sourcing /home/sorrowlol/.local/share/nvim/lazy/nvim-cmp/plugin/cmp.lua
051.573  000.062  000.062: sourcing /home/sorrowlol/.local/share/nvim/lazy/formatter.nvim/plugin/formatter.vim
052.177  000.043  000.043: require('formatter.config')
052.192  000.585  000.541: require('formatter.util')
052.301  000.075  000.075: require('formatter.log')
052.303  000.110  000.034: require('formatter')
052.749  000.032  000.032: require('formatter.defaults.alejandra')
052.782  000.029  000.029: require('formatter.defaults.astyle')
052.813  000.028  000.028: require('formatter.defaults.biome')
052.847  000.031  000.031: require('formatter.defaults.clangformat')
052.879  000.028  000.028: require('formatter.defaults.denofmt')
052.909  000.026  000.026: require('formatter.defaults.esformatter')
052.941  000.029  000.029: require('formatter.defaults.eslint_d')
052.983  000.039  000.039: require('formatter.defaults.fishindent')
053.016  000.029  000.029: require('formatter.defaults.htmlbeautifier')
053.059  000.037  000.037: require('formatter.defaults.jsbeautify')
053.090  000.028  000.028: require('formatter.defaults.ktlint')
053.121  000.028  000.028: require('formatter.defaults.latexindent')
053.154  000.029  000.029: require('formatter.defaults.mixformat')
053.184  000.026  000.026: require('formatter.defaults.nixfmt')
053.215  000.028  000.028: require('formatter.defaults.nixpkgs_fmt')
053.246  000.028  000.028: require('formatter.defaults.ocamlformat')
053.277  000.027  000.027: require('formatter.defaults.perltidy')
053.310  000.028  000.028: require('formatter.defaults.php_cs_fixer')
053.340  000.028  000.028: require('formatter.defaults.phpcbf')
053.371  000.028  000.028: require('formatter.defaults.pint')
053.404  000.029  000.029: require('formatter.defaults.prettier')
053.433  000.026  000.026: require('formatter.defaults.prettierd')
053.468  000.032  000.032: require('formatter.defaults.prettiereslint')
053.501  000.030  000.030: require('formatter.defaults.prettydiff')
053.533  000.029  000.029: require('formatter.defaults.sed')
053.564  000.027  000.027: require('formatter.defaults.semistandard')
053.594  000.027  000.027: require('formatter.defaults.standard')
053.624  000.027  000.027: require('formatter.defaults.tsfmt')
053.654  000.027  000.027: require('formatter.defaults.uncrustify')
053.685  000.028  000.028: require('formatter.defaults.xmlformat')
053.714  000.026  000.026: require('formatter.defaults.zigfmt')
053.716  001.378  000.485: require('formatter.defaults')
053.718  001.413  000.035: require('formatter.filetypes.any')
053.752  000.032  000.032: require('formatter.filetypes.lua')
054.691  000.038  000.038: require('nvim-tree.notify')
054.698  000.085  000.047: require('nvim-tree.events')
054.881  000.047  000.047: require('nvim-tree.log')
055.020  000.046  000.046: require('nvim-tree.iterators.node-iterator')
055.063  000.180  000.134: require('nvim-tree.utils')
055.144  000.079  000.079: require('nvim-tree.git.utils')
055.202  000.057  000.057: require('nvim-tree.git.runner')
055.261  000.058  000.058: require('nvim-tree.watcher')
055.307  000.044  000.044: require('nvim-tree.explorer.node')
055.312  000.574  000.109: require('nvim-tree.git')
055.362  000.048  000.048: require('nvim-tree.explorer.watch')
055.455  000.037  000.037: require('nvim-tree.enum')
055.458  000.094  000.057: require('nvim-tree.explorer.filters')
055.503  000.044  000.044: require('nvim-tree.marks')
055.671  000.111  000.111: require('nvim-tree.view')
055.676  000.173  000.062: require('nvim-tree.explorer.live-filter')
055.730  000.052  000.052: require('nvim-tree.explorer.sorters')
055.816  000.044  000.044: require('nvim-tree.explorer.node-builders')
055.819  000.088  000.043: require('nvim-tree.explorer.explore')
055.874  000.054  000.054: require('nvim-tree.explorer.reload')
055.877  001.177  000.051: require('nvim-tree.explorer')
055.883  001.301  000.038: require('nvim-tree.core')
055.932  000.047  000.047: require('nvim-tree.renderer.components.padding')
056.005  000.072  000.072: require('nvim-tree.renderer.components.icons')
056.088  000.081  000.081: require('nvim-tree.renderer.components.full-name')
056.269  000.050  000.050: require('nvim-tree.renderer.decorator')
056.272  000.095  000.045: require('nvim-tree.renderer.decorator.bookmarks')
056.313  000.040  000.040: require('nvim-tree.renderer.decorator.copied')
056.351  000.036  000.036: require('nvim-tree.renderer.decorator.cut')
056.487  000.092  000.092: require('nvim-tree.diagnostics')
057.470  000.979  000.979: require('vim.diagnostic')
057.479  001.127  000.056: require('nvim-tree.renderer.decorator.diagnostics')
057.571  000.090  000.090: require('nvim-tree.renderer.decorator.git')
057.703  000.037  000.037: require('nvim-tree.buffers')
057.708  000.085  000.049: require('nvim-tree.renderer.decorator.modified')
057.765  000.055  000.055: require('nvim-tree.renderer.decorator.hidden')
057.825  000.059  000.059: require('nvim-tree.renderer.decorator.opened')
057.840  001.750  000.162: require('nvim-tree.renderer.builder')
057.850  003.314  000.063: require('nvim-tree.renderer')
057.861  003.385  000.071: require('nvim-tree.lib')
058.062  000.199  000.199: require('nvim-tree.appearance')
058.530  000.081  000.081: require('nvim-tree.actions.finders.find-file')
058.606  000.073  000.073: require('nvim-tree.actions.finders.search-node')
058.609  000.264  000.111: require('nvim-tree.actions.finders')
058.855  000.102  000.102: require('nvim-tree.actions.reloaders')
058.866  000.202  000.099: require('nvim-tree.actions.fs.copy-paste')
058.940  000.072  000.072: require('nvim-tree.actions.fs.create-file')
059.050  000.108  000.108: require('nvim-tree.actions.fs.remove-file')
059.163  000.111  000.111: require('nvim-tree.actions.fs.rename-file')
059.248  000.084  000.084: require('nvim-tree.actions.fs.trash')
059.251  000.641  000.064: require('nvim-tree.actions.fs')
059.387  000.076  000.076: require('nvim-tree.actions.moves.item')
059.446  000.057  000.057: require('nvim-tree.actions.moves.parent')
059.504  000.057  000.057: require('nvim-tree.actions.moves.sibling')
059.506  000.253  000.063: require('nvim-tree.actions.moves')
059.654  000.083  000.083: require('nvim-tree.actions.node.file-popup')
059.791  000.135  000.135: require('nvim-tree.actions.node.open-file')
059.863  000.070  000.070: require('nvim-tree.actions.node.run-command')
059.930  000.066  000.066: require('nvim-tree.actions.node.system-open')
059.934  000.424  000.070: require('nvim-tree.actions.node')
060.101  000.089  000.089: require('nvim-tree.actions.root.change-dir')
060.160  000.056  000.056: require('nvim-tree.actions.root.dir-up')
060.162  000.226  000.081: require('nvim-tree.actions.root')
060.283  000.061  000.061: require('nvim-tree.actions.tree.find-file')
060.397  000.058  000.058: require('nvim-tree.actions.tree.modifiers.collapse-all')
060.464  000.065  000.065: require('nvim-tree.actions.tree.modifiers.expand-all')
060.539  000.074  000.074: require('nvim-tree.actions.tree.modifiers.toggles')
060.541  000.257  000.060: require('nvim-tree.actions.tree.modifiers')
060.602  000.059  000.059: require('nvim-tree.actions.tree.open')
060.658  000.054  000.054: require('nvim-tree.actions.tree.toggle')
060.710  000.051  000.051: require('nvim-tree.actions.tree.resize')
060.714  000.550  000.068: require('nvim-tree.actions.tree')
060.716  002.449  000.090: require('nvim-tree.actions')
060.799  000.081  000.081: require('nvim-tree.appearance.diagnostics')
061.022  000.136  000.136: require('nvim-tree.keymap')
061.044  000.243  000.107: require('nvim-tree.help')
061.121  000.075  000.075: require('nvim-tree.marks.navigation')
061.186  000.063  000.063: require('nvim-tree.marks.bulk-delete')
061.244  000.057  000.057: require('nvim-tree.marks.bulk-trash')
061.307  000.061  000.061: require('nvim-tree.marks.bulk-move')
061.392  003.247  000.218: require('nvim-tree.api')
061.406  003.341  000.094: require('nvim-tree.commands')
061.607  000.198  000.198: require('nvim-tree.legacy')
061.699  007.807  000.683: require('nvim-tree')
073.120  000.534  000.534: require('vim.treesitter.language')
073.178  000.046  000.046: require('vim.func')
073.223  000.039  000.039: require('vim.func._memoize')
073.245  001.542  000.922: require('vim.treesitter.query')
073.295  000.048  000.048: require('vim.treesitter._range')
073.314  002.187  000.598: require('vim.treesitter.languagetree')
073.323  002.624  000.437: require('vim.treesitter')
073.330  003.135  000.511: require('nvim-treesitter.compat')
074.547  001.031  001.031: require('nvim-treesitter.parsers')
074.651  000.100  000.100: require('nvim-treesitter.utils')
074.660  001.213  000.083: require('nvim-treesitter.ts_utils')
074.668  001.335  000.123: require('nvim-treesitter.tsrange')
074.718  000.048  000.048: require('nvim-treesitter.caching')
074.731  005.081  000.562: require('nvim-treesitter.query')
074.749  005.539  000.459: require('nvim-treesitter.configs')
074.752  006.473  000.934: require('nvim-treesitter-textobjects')
074.950  000.052  000.052: require('nvim-treesitter.info')
075.034  000.082  000.082: require('nvim-treesitter.shell_command_selectors')
075.062  000.262  000.128: require('nvim-treesitter.install')
075.105  000.041  000.041: require('nvim-treesitter.statusline')
075.161  000.054  000.054: require('nvim-treesitter.query_predicates')
075.164  000.410  000.053: require('nvim-treesitter')
075.264  000.050  000.050: require('nvim-treesitter.textobjects.shared')
075.269  000.100  000.050: require('nvim-treesitter.textobjects.select')
075.405  000.039  000.039: require('nvim-treesitter.textobjects.attach')
075.462  000.055  000.055: require('nvim-treesitter.textobjects.repeatable_move')
075.468  000.148  000.053: require('nvim-treesitter.textobjects.move')
075.847  000.089  000.089: require('nvim-treesitter.textobjects.swap')
076.065  000.059  000.059: require('nvim-treesitter.textobjects.lsp_interop')
076.097  007.844  000.565: sourcing /home/sorrowlol/.local/share/nvim/lazy/nvim-treesitter-textobjects/plugin/nvim-treesitter-textobjects.vim
076.813  000.590  000.590: sourcing /home/sorrowlol/.local/share/nvim/lazy/nvim-treesitter/plugin/nvim-treesitter.lua
077.447  000.502  000.502: require('hover')
077.491  000.040  000.040: require('hover.config')
078.245  000.100  000.100: require('lualine_require')
078.624  000.945  000.844: require('lualine')
079.390  000.085  000.085: require('lualine.highlight')
081.358  000.064  000.064: require('lualine.utils.mode')
083.921  000.072  000.072: require('ibl.utils')
083.934  000.142  000.070: require('ibl.config')
084.030  000.035  000.035: require('ibl.indent')
084.036  000.100  000.065: require('ibl.hooks')
084.039  000.293  000.051: require('ibl.highlights')
084.073  000.033  000.033: require('ibl.autocmds')
084.111  000.037  000.037: require('ibl.inlay_hints')
084.147  000.034  000.034: require('ibl.virt_text')
084.331  000.150  000.150: require('ibl.scope_languages')
084.333  000.185  000.035: require('ibl.scope')
084.341  001.147  000.565: require('ibl')
084.502  000.072  000.072: require('vim.iter')
084.638  000.114  000.114: require('vim.lsp.handlers')
084.986  000.056  000.056: sourcing /usr/share/nvim/runtime/plugin/editorconfig.lua
085.231  000.219  000.219: sourcing /usr/share/nvim/runtime/plugin/gzip.vim
085.317  000.061  000.061: sourcing /usr/share/nvim/runtime/plugin/man.lua
086.046  000.244  000.244: sourcing /usr/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim
086.066  000.724  000.481: sourcing /usr/share/nvim/runtime/plugin/matchit.vim
086.249  000.157  000.157: sourcing /usr/share/nvim/runtime/plugin/matchparen.vim
086.288  000.014  000.014: sourcing /usr/share/nvim/runtime/plugin/netrwPlugin.vim
086.368  000.057  000.057: sourcing /usr/share/nvim/runtime/plugin/osc52.lua
086.568  000.182  000.182: sourcing /usr/share/nvim/runtime/plugin/rplugin.vim
086.666  000.074  000.074: sourcing /usr/share/nvim/runtime/plugin/shada.vim
086.719  000.018  000.018: sourcing /usr/share/nvim/runtime/plugin/spellfile.vim
086.846  000.102  000.102: sourcing /usr/share/nvim/runtime/plugin/tarPlugin.vim
086.930  000.054  000.054: sourcing /usr/share/nvim/runtime/plugin/tohtml.lua
086.997  000.021  000.021: sourcing /usr/share/nvim/runtime/plugin/tutor.vim
087.204  000.182  000.182: sourcing /usr/share/nvim/runtime/plugin/zipPlugin.vim
087.582  000.078  000.078: sourcing /home/sorrowlol/.local/share/nvim/lazy/indent-blankline.nvim/after/plugin/commands.lua
087.794  000.049  000.049: require('cmp_nvim_lsp.source')
087.798  000.123  000.075: require('cmp_nvim_lsp')
087.819  000.175  000.052: sourcing /home/sorrowlol/.local/share/nvim/lazy/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua
088.210  000.071  000.071: require('cmp.utils.char')
088.218  000.116  000.045: require('cmp.utils.str')
088.361  000.035  000.035: require('cmp.utils.buffer')
088.417  000.160  000.125: require('cmp.utils.keymap')
088.423  000.203  000.043: require('cmp.utils.feedkeys')
088.622  000.059  000.059: require('cmp.config.mapping')
088.663  000.039  000.039: require('cmp.utils.cache')
088.787  000.064  000.064: require('cmp.config.compare')
088.789  000.124  000.060: require('cmp.config.default')
088.818  000.310  000.088: require('cmp.config')
088.831  000.406  000.096: require('cmp.utils.async')
088.917  000.037  000.037: require('cmp.utils.pattern')
088.920  000.087  000.049: require('cmp.context')
089.284  000.137  000.137: require('cmp.utils.snippet')
089.344  000.057  000.057: require('cmp.matcher')
089.352  000.311  000.117: require('cmp.entry')
089.362  000.441  000.130: require('cmp.source')
089.466  000.041  000.041: require('cmp.utils.event')
089.623  000.040  000.040: require('cmp.utils.options')
089.628  000.110  000.070: require('cmp.utils.window')
089.631  000.163  000.053: require('cmp.view.docs_view')
089.730  000.098  000.098: require('cmp.view.custom_entries_view')
089.805  000.074  000.074: require('cmp.view.wildmenu_entries_view')
089.866  000.060  000.060: require('cmp.view.native_entries_view')
089.943  000.075  000.075: require('cmp.view.ghost_text_view')
089.954  000.591  000.081: require('cmp.view')
090.658  002.632  000.789: require('cmp.core')
090.929  000.063  000.063: require('cmp.config.sources')
090.984  000.053  000.053: require('cmp.config.window')
091.048  003.107  000.359: require('cmp')
091.120  000.069  000.069: require('cmp_luasnip')
091.169  003.259  000.083: sourcing /home/sorrowlol/.local/share/nvim/lazy/cmp_luasnip/after/plugin/cmp_luasnip.lua
091.723  000.191  000.191: require('mason-core.log')
091.799  000.073  000.073: require('mason-lspconfig.settings')
091.805  000.406  000.142: require('mason-lspconfig')
091.987  000.090  000.090: require('mason-lspconfig.notify')
091.996  000.173  000.083: require('mason-lspconfig.lspconfig_hook')
092.290  000.292  000.292: require('lspconfig.util')
092.568  000.121  000.121: require('mason-core.functional.table')
092.627  000.334  000.213: require('mason-lspconfig.mappings.server')
092.853  000.125  000.125: require('mason-core.EventEmitter')
092.931  000.076  000.076: require('mason-core.optional')
093.204  000.154  000.154: require('mason-core.async')
093.286  000.076  000.076: require('mason-core.async.uv')
093.300  000.366  000.136: require('mason-core.fs')
093.347  000.717  000.149: require('mason-registry')
093.420  000.070  000.070: require('mason-lspconfig.server_config_extensions')
093.674  000.133  000.133: require('lspconfig.async')
093.678  000.256  000.123: require('lspconfig.configs')
093.821  000.142  000.142: require('lspconfig.server_configurations.omnisharp')
094.030  000.149  000.149: require('mason-lspconfig.ensure_installed')
094.361  000.184  000.184: require('mason-core.result')
094.860  000.303  000.303: require('mason-core.process')
095.105  000.242  000.242: require('mason-core.spawn')
095.112  000.648  000.104: require('mason-core.managers.powershell')
095.202  000.087  000.087: require('mason.version')
095.207  000.844  000.110: require('mason-core.fetch')
095.315  000.105  000.105: require('mason-core.providers')
095.931  000.362  000.362: require('mason-core.purl')
095.979  000.579  000.217: require('mason-core.package')
096.565  000.209  000.209: require('mason-core.installer.registry.expr')
096.589  000.440  000.231: require('mason-core.installer.registry.link')
097.581  000.306  000.306: require('mason-core.receipt')
097.628  000.570  000.265: require('mason-core.installer.context')
097.786  000.154  000.154: require('mason-core.async.control')
097.928  000.139  000.139: require('mason-core.installer.linker')
097.941  001.089  000.225: require('mason-core.installer')
098.008  001.309  000.221: require('mason-core.installer.managers.std')
098.012  001.421  000.112: require('mason-core.installer.registry.schemas')
098.144  000.130  000.130: require('mason-core.installer.registry.util')
098.173  002.191  000.200: require('mason-core.installer.registry')
098.179  002.863  000.093: require('mason-registry.sources.util')
098.208  004.161  000.166: require('mason-registry.sources.github')
105.389  000.119  000.119: require('mason-core.functional.number')
105.443  000.339  000.220: require('mason-lspconfig.api.command')
105.709  000.100  000.100: require('lspconfig')
105.805  000.091  000.091: require('lspconfig.server_configurations.yamlls')
107.561  000.179  000.179: require('lspconfig.manager')
107.703  000.117  000.117: require('lspconfig.server_configurations.solargraph')
108.685  000.117  000.117: require('lspconfig.server_configurations.ruby_lsp')
109.379  000.139  000.139: require('lspconfig.server_configurations.tsserver')
109.982  000.169  000.169: require('lspconfig.server_configurations.eslint')
110.661  000.100  000.100: require('lspconfig.server_configurations.cairo_ls')
111.270  000.083  000.083: require('lspconfig.server_configurations.pylsp')
111.537  000.091  000.091: require('mason-lspconfig.server_configurations.pylsp')
111.783  000.099  000.099: require('lspconfig.server_configurations.lua_ls')
112.890  000.328  000.328: require('lspconfig.server_configurations.rust_analyzer')
113.980  000.246  000.246: require('lspconfig.server_configurations.solidity_ls_nomicfoundation')
115.046  000.187  000.187: require('lspconfig.server_configurations.gleam')
117.816  000.295  000.295: require('nvim-treesitter.highlight')
123.355  000.169  000.169: require('catppuccin')
123.452  000.050  000.050: require('catppuccin.lib.hashing')
125.573  002.432  002.213: sourcing /home/sorrowlol/.local/share/nvim/lazy/catppuccin/colors/catppuccin-mocha.vim
128.716  000.098  000.098: require('catppuccin.utils.lualine')
128.770  000.047  000.047: require('catppuccin.palettes')
128.814  000.041  000.041: require('catppuccin.palettes.mocha')
130.535  123.388  055.259: sourcing /home/sorrowlol/.config/nvim/init.lua
130.558  001.194: sourcing vimrc file(s)
130.840  000.058  000.058: sourcing /usr/share/nvim/runtime/filetype.lua
131.212  000.118  000.118: sourcing /usr/share/nvim/runtime/syntax/synload.vim
131.436  000.502  000.384: sourcing /usr/share/nvim/runtime/syntax/syntax.vim
131.448  000.330: inits 3
141.946  010.499: reading ShaDa
142.518  000.102  000.102: require('luasnip.util.directed_graph')
142.587  000.063  000.063: require('luasnip.session.enqueueable_operations')
142.597  000.405  000.240: require('luasnip.loaders.from_lua')
143.107  000.038  000.038: require('luasnip.util.events')
143.121  000.122  000.084: require('luasnip.nodes.node')
143.213  000.090  000.090: require('luasnip.nodes.insertNode')
143.298  000.084  000.084: require('luasnip.nodes.textNode')
143.353  000.052  000.052: require('luasnip.util.mark')
143.399  000.044  000.044: require('luasnip.util.pattern_tokenizer')
143.431  000.031  000.031: require('luasnip.util.dict')
143.930  000.461  000.461: require('luasnip.util.jsregexp')
143.934  000.500  000.040: require('luasnip.nodes.util.trig_engines')
144.011  001.187  000.262: require('luasnip.nodes.snippet')
144.015  001.247  000.060: require('luasnip.nodes.duplicate')
144.018  001.309  000.062: require('luasnip.loaders.snippet_cache')
144.031  001.427  000.119: require('luasnip.loaders.from_snipmate')
144.314  000.042  000.042: require('luasnip.util.parser.neovim_ast')
144.368  000.052  000.052: require('luasnip.util.str')
144.631  000.260  000.260: require('luasnip.util.jsregexp')
144.637  000.412  000.057: require('luasnip.util.parser.ast_utils')
144.702  000.063  000.063: require('luasnip.nodes.functionNode')
144.776  000.073  000.073: require('luasnip.nodes.choiceNode')
144.839  000.062  000.062: require('luasnip.nodes.dynamicNode')
144.876  000.035  000.035: require('luasnip.util.functions')
144.881  000.706  000.062: require('luasnip.util.parser.ast_parser')
145.014  000.131  000.131: require('luasnip.util.parser.neovim_parser')
145.020  000.893  000.056: require('luasnip.util.parser')
145.065  000.043  000.043: require('luasnip.nodes.snippetProxy')
145.151  000.082  000.082: require('luasnip.util.jsonc')
145.161  001.126  000.108: require('luasnip.loaders.from_vscode')
145.348  000.443: opening buffers
145.452  000.104: BufEnter autocommands
145.455  000.002: editing files in windows
145.854  000.077  000.077: sourcing /home/sorrowlol/.local/share/nvim/lazy/dashboard-nvim/plugin/dashboard.lua
146.445  000.068  000.068: require('dashboard.utils')
146.451  000.562  000.494: require('dashboard')
146.629  000.535: VimEnter autocommands
150.634  000.132  000.132: require('dashboard.theme.hyper')
150.749  003.988: UIEnter autocommands
150.751  000.003: before starting main loop
151.110  000.358: first screen update
151.112  000.002: --- NVIM STARTED ---
