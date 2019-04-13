#!/bin/bash

# If you have vim in pane 0 and ghcid in pane 1, this will jump to the first error/warning

# v0.6.x message format
#OP=`tmux capture-pane -p -t 1 | vims -s 'v/:\<enter>nnyVGp:%s/\\\\n//g\<enter>0f:d$0Ps) \<esc>0s+call\\\\ cursor(\<esc>f:r,'`

# v0.7.x message format
OP=`tmux capture-pane -p -t 1 | vims -s 'v/:\<enter>n/:\\\\|-\<enter>yVGp:%s/\\\\n//g\<enter>0f:d$0Ps) \<esc>0s+call\\\\ cursor(\<esc>f:r,'`

tmux send-keys Escape
tmux send-keys ":e $OP"
tmux send-keys Enter
tmux send-keys 'zz'
