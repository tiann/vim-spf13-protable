REM    Copyright 2014 Steve Francia
REM 
REM    Licensed under the Apache License, Version 2.0 (the "License");
REM    you may not use this file except in compliance with the License.
REM    You may obtain a copy of the License at
REM 
REM        http://www.apache.org/licenses/LICENSE-2.0
REM 
REM    Unless required by applicable law or agreed to in writing, software
REM    distributed under the License is distributed on an "AS IS" BASIS,
REM    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
REM    See the License for the specific language governing permissions and
REM    limitations under the License.

@set APP_DIR=.\.spf13-vim-3
@set VIM=.

call mklink "%VIM%\.vimrc" "%APP_DIR%\.vimrc"
call mklink "%VIM%\_vimrc" "%APP_DIR%\.vimrc"
call mklink "%VIM%\.vimrc.fork" "%APP_DIR%\.vimrc.fork"
call mklink "%VIM%\.vimrc.bundles" "%APP_DIR%\.vimrc.bundles"
call mklink "%VIM%\.vimrc.bundles.fork" "%APP_DIR%\.vimrc.bundles.fork"
call mklink "%VIM%\.vimrc.before" "%APP_DIR%\.vimrc.before"
call mklink "%VIM%\.vimrc.before.fork" "%APP_DIR%\.vimrc.before.fork"
call mklink /J "%VIM%\.vim" "%APP_DIR%\.vim"

vim74\vim.exe -u "%APP_DIR%/.vimrc.bundles" +BundleInstall! +BundleClean +qall

pause