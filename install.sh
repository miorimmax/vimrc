#!/bin/sh -e
#
# Copyright (c) 2014 Max Miorim
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
#

CWD="`cd "\`dirname "$0"\`"; pwd`"

# Clean up
if [ "$1" = "clean" ]; then
  git clean -f -d -x
  git submodule foreach --recursive 'git clean -f -d -x'
fi

# Initialize the submodules
git submodule update --init --recursive

# Build YouCompleteMe
case "`uname`" in
    Darwin) brew install cmake go ;;
    Linux) sudo apt-get install -y build-essential cmake python-dev ;;
esac

( cd "$CWD/bundle/YouCompleteMe"; ./install.py --clang-completer --go-completer )

if [ ! -r ~/.vimrc ]; then
    ln -s ~/.vim/vimrc ~/.vimrc
fi
