#!/usr/bin/env python

import afinn

def score_many(it):
    model = afinn.Afinn()
    yield from ((elem, model.score(elem), ) for elem in it)

def main():
    sentences = [
        'This is utterly excellent!',
        'How dare you',
    ]
    for sentence, score in score_many(sentences):
        print(f'"{sentence}" -> {score}')

if __name__ == '__main__':
    main()

