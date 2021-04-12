#!/usr/bin/env bash

if [[ -f "${RHASSPY_PROFILE}" ]]; then
    RHASSPY_ARGS=('--profile' "${RHASSPY_PROFILE}")
fi

if [[ -z "${RHASSPY_ARGS[*]}" ]]; then
    /usr/lib/rhasspy/bin/rhasspy-voltron "$@"
else
    /usr/lib/rhasspy/bin/rhasspy-voltron "${RHASSPY_ARGS[@]}" "$@"
fi
