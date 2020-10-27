#!/bin/bash
pip install -U appdynamics
AGENT_CONFIG="/opt/appdynamics/agent.cfg"
if [ "x${APPDYNAMICS_AGENT_CONFIG}" != "x" ]; then
    AGENT_CONFIG=${APPDYNAMICS_AGENT_CONFIG}
fi
ENTRY_POINT=${APP_ENTRY_POINT}
pyagent run -c $AGENT_CONFIG  $ENTRY_POINT