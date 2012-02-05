if exists("g:ruby_debugger_loaded")
  finish
endif

noremap <leader>rb  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.toggle_breakpoint()<CR>
noremap <leader>rv  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.open_variables()<CR>
noremap <leader>rm  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.open_breakpoints()<CR>
noremap <leader>rt  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.open_frames()<CR>
noremap <leader>rs  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.step()<CR>
noremap <leader>rf  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.finish()<CR>
noremap <leader>rn  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.next()<CR>
noremap <leader>rc  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.continue()<CR>
noremap <leader>re  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.exit()<CR>
noremap <leader>rd  :call ruby_debugger#load_debugger() <bar> call g:RubyDebugger.remove_breakpoints()<CR>

command! -nargs=* -complete=file Rdebugger call ruby_debugger#load_debugger() | call g:RubyDebugger.start(<q-args>) 
command! -nargs=0 RdbStop call g:RubyDebugger.stop() 
command! -nargs=1 RdbCommand call g:RubyDebugger.send_command_wrapper(<q-args>) 
command! -nargs=0 RdbTest call g:RubyDebugger.run_test() 
command! -nargs=1 RdbEval call g:RubyDebugger.eval(<q-args>)
command! -nargs=1 RdbCond call g:RubyDebugger.conditional_breakpoint(<q-args>)
command! -nargs=1 RdbCatch call g:RubyDebugger.catch_exception(<q-args>)
command! -nargs=0 RdbLog call ruby_debugger#load_debugger() | call g:RubyDebugger.show_log()

let g:ruby_debugger_loaded = 1


