
export PS1="\u@xeon:\W$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias top='top -i'

export LD_LIBRARY_PATH=/usr/local/lib/:$LD_LIBRARY_PATH
export LIBRARY_PATH=/usr/local/lib/:$LIBRARY_PATH

# boost
boost_root=$HOME/workspace/packages/boost_1_60_0
boost_root=$HOME/workspace/packages/boost_1_61_0
#boost_root=/home/byhuang/workspace/packages/boost_1_63_0
export C_INCLUDE_PATH=$boost_root/:$C_INCLUDE_PATH
export CPLUS_INCLUDE_PATH=$boost_root/:$CPLUS_INCLUDE_PATH
#export LIBRARY_PATH=/home/byhuang/workspace/packages/boost_1_60_0/stage/lib:$LIBRARY_PATH
#export LD_LIBRARY_PATH=/home/byhuang/workspace/packages/boost_1_60_0/stage/lib:$LD_LIBRARY_PATH
alias bjam=$boost_root/bjam
alias b2=$boost_root/b2
#BOOST_BUILD_PATH=/home/byhuang/workspace/packages/boost_1_60_0
export BOOST_BUILD_PATH=$boost_root
export BOOST_ROOT=$boost_root

# z3
export C_INCLUDE_PATH=/usr/include/:$C_INCLUDE_PATH
export CPLUS_INCLUDE_PATH=/usr/include/:$CPLUS_INCLUDE_PATH

# ila
export PYTHONPATH=$HOME/workspace/ILA-Tools/py-tmpl-synth/build/:$PYTHONPATH

# seahorn
SeaHornBin=$HOME/workspace/packages/seahorn/build/run/bin
alias spacer=$SeaHornBin/spacer
alias sea=$SeaHornBin/sea
alias seahorn=$SeaHornBin/seahorn

# glucose
alias glucose=$HOME/workspace/SSFV17/glucose-syrup-4.1/parallel/glucose-syrup_static
alias glucose=$HOME/workspace/SSFV17/glucose-syrup-4.1/simp/glucose_static
alias glucose=$HOME/workspace/SSFV17/glucose-syrup-4.1/simp/glucose
alias drat-trim=$HOME/workspace/SSFV17/drat-trim/drat-trim

# infer
alias infer=$HOME/workspace/SSFV17/infer/infer/bin/infer

# llvm 3.8.1
export LLVM_ROOT=$HOME/workspace/packages/llvm-3.8.1.build/Release+Asserts
export BIN_LOCAL=$LLVM_ROOT/bin/:$BIN_LOCAL
export INC_LOCAL=$LLVM_ROOT/include/:$INC_LOCAL
export LIB_LOCAL=$LLVM_ROOT/lib/:$LIB_LOCAL

# SMACK
export SMACK_ROOT=$HOME/workspace/packages/smack/build/bin
export BIN_LOCAL=$SMACK_ROOT/:$BIN_LOCAL
export BOOGIE="mono $HOME/workspace/packages/corral/boogie/Binaries/Boogie.exe"
export CORRAL="mono $HOME/workspace/packages/corral/bin/Debug/corral.exe"
#alias BOOGIE="mono $HOME/workspace/packages/corral/boogie/Binaries/Boogie.exe"
#alias CORRAL="mono $HOME/workspace/packages/corral/bin/Debug/corral.exe"
alias smack="smack --clang-options=\"-std=c11\" "

# valgrind
export VALGRIND_ROOT=$HOME/workspace/packages/valgrind-3.13.0/build
export BIN_LOCAL=$VALGRIND_ROOT/bin/:$BIN_LOCAL

# coverity
export BIN_LOCAL=$HOME/workspace/packages/cov-analysis-linux64-2017.07/bin/:$BIN_LOCAL

export PATH=$BIN_LOCAL/:$PATH
export C_INCLUDE_PATH=$INC_LOCAL/:$C_INCLUDE_PATH
export CPLUS_INCLUDE_PATH=$INC_LOCAL/:$CPLUS_INCLUDE_PATH
export LIBRARY_PATH=$LIB_LOCAL/:$LIBRARY_PATH
export LD_LIBRARY_PATH=$LIB_LOCAL/:$LD_LIBRARY_PATH

cd ~/workspace
