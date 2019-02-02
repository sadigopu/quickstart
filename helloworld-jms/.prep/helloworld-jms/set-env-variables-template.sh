#!/usr/bin/env bash

# Azure Environment

export RESOURCEGROUP_NAME=<my-resourcegroup>
export WEBAPP_NAME=<my-webapp-name>
export WEBAPP_PLAN_NAME=${WEBAPP_NAME}-appservice-plan
export REGION=westus

# Supply these secrets for Service Bus
export SERVICEBUS_QUEUENAME=<my servicebus queue name>
export DEFAULT_USERNAME=<my servicebus policy name>
export DEFAULT_PASSWORD=<my servicebus key value>

# Secrets composed from supplied secrets for Messaging
export PROVIDER_URL=amqp://${SERVICEBUS_QUEUENAME}.servicebus.windows.net?amqp.idleTimeout=120000

# Supply these values for InitialContextFactory
export DEFAULT_CONNECTION_FACTORY=<connection factory name - SBF as default>
export DEFAULT_DESTINATION=<key value for queue - QUEUE as default>
export INITIAL_CONTEXT_FACTORY=org.apache.qpid.jms.jndi.JmsInitialContextFactory
export MYSQL_DATABASE_NAME=<my pestore database name>
export DESTINATION_QUEUE=${SERVICEBUS_QUEUENAME}
