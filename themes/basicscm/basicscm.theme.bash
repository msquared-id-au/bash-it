#!/usr/bin/env bash

# prompt: [user@itmanager ⑆trunk✓ trunk]$
# if no SCM, SCM stuff disappears completely
# nice and clean!

SCM_NONE_CHAR=''

SCM_THEME_PROMPT_DIRTY="${red}✗${reset_color}"
SCM_THEME_PROMPT_CLEAN="✓"
SCM_THEME_PROMPT_PREFIX=""
SCM_THEME_PROMPT_SUFFIX=""

function scm_space_char() {
  scm_prompt_char
  if [ -n "$SCM_CHAR" ] ; then
    echo -e " $SCM_CHAR"
  fi
}

function prompt_command() {
    PS1="[\u@\h$(scm_space_char)$(scm_prompt_info) \W]\$ "
}

PROMPT_COMMAND=prompt_command;

