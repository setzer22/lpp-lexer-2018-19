#!/bin/bash

jflex-1.7.0/bin/jflex calc.flex 
javac EjemploDAOO.java 
java EjemploDAOO input.in
