#!/usr/bin/env python3
import argparse
import re


NUM = 0

def replacer(usless):
         global NUM
         NUM += 1
         return f'{{{{c{NUM}::'

def get_args():
    parser = argparse.ArgumentParser()
    parser.add_argument('-f', '--file-name', type=str, help='cloze text to correct', required=True)
    return parser.parse_args()


def main(): 
    args = get_args()
    patr= '{{c[0-9]*::'
    fname = args.file_name
    with open(fname, 'r') as f:
        data = f.read()

    print(re.sub(patr, replacer, data))

if __name__ == "__main__":
    main()
