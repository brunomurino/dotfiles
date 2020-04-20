#!/bin/bash

function rscred() {
    echo -n Host: 
    read host
    export REDSHIFT_HOST=$host

    echo -n Port: 
    read port
    export REDSHIFT_PORT=$port

    echo -n User: 
    read user
    export REDSHIFT_USER=$user

    echo -n Password: 
    read -s password
    export REDSHIFT_PASSWORD=$password
}

