#!/bin/bash

hello()
{
    echo 'Hello, world!!'
}

hello=message

unset hello

echo "hello = $hello"
hello
