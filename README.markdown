# Application Evironment Utils #

Little module that will help you to deal with application environment.

## Mission ##

I was tired of copying over projects some very simple but very handy functions to deal with application environment values. I packed them as a module. I thought if it helps me it may help to somebody else too.

I hope it will be useful for dear Erlanger.

## Usage ##

```erlang
% Call to get value of the key specifyer in app.config.
% If nothing is specifyed for `key` atom `undefined` will be returned.
appenv:get(key),

% Call to get value of the key specifyer in app.config.
% If nothing is specifyed for `key` DefaultValue will be returned.
DefaultValue = 42,
appenv:get(key, DefaultValue),
```

## Licence ##

!(MIT)[http://en.wikipedia.org/wiki/MIT_License]