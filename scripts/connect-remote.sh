#!/bin/env bash

remote=$1
mux=zellij

session=$(ssh remote $mux ls | dmenu)

ssh $remote -t $mux a $session || $mux -s $session

