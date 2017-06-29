#!/bin/bash -e

export NODE_VERSION=$SHIPPABLE_NODE_VERSION

if [[ "$NODE_VERSION" == "0.10" ]]; then
  echo "TEST env matched value"
else
  echo "ERROR: Failed, wrong value for the NODE_JS version variable. Please check the environment variable value in the yml"
  exit 1
fi;

if [[ "$TEST" == "FOO" ]]; then
  echo "TEST env matched value"
else
  echo "ERROR: Failed, wrong value for the TEST variable. Please check the environment variable value in the yml"
  exit 1
fi;

if [[ "$CUSTOM" == "ymlenv" ]]; then
  echo "CUSTOM env matched value"
else
  echo "ERROR: Failed, wrong value forthe CUSTOM variable. Please check the environment variable value inthe yml"
  exit 1
fi;

echo 'EOF'
