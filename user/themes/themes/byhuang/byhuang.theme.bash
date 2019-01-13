#!/usr/bin/env bash
SCM_THEME_PROMPT_DIRTY=" ${red}x"
SCM_THEME_PROMPT_CLEAN=" ${bold_green}o"
SCM_THEME_PROMPT_PREFIX=" ${green}|"
SCM_THEME_PROMPT_SUFFIX="${green}|"

GIT_THEME_PROMPT_DIRTY=" ${red}x"
GIT_THEME_PROMPT_CLEAN=" ${bold_green}o"
GIT_THEME_PROMPT_PREFIX=" ${green}|"
GIT_THEME_PROMPT_SUFFIX="${green}|"

RVM_THEME_PROMPT_PREFIX="|"
RVM_THEME_PROMPT_SUFFIX="|"

function prompt_command() {
    PS1="${bold_cyan}\u ${reset_color}${white}\w${reset_color}$(scm_prompt_info)${red} →${reset_color} ";
}

THEME_CLOCK_COLOR=${THEME_CLOCK_COLOR:-"$blue"}
THEME_CLOCK_FORMAT=${THEME_CLOCK_FORMAT:-"%I:%M:%S"}

safe_append_prompt_command prompt_command
