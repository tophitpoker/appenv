# Application Evironment Utils #

Little module that will help you to deal with application environment.

## Mission ##

I was tired of copying over projects some very simple but very handy functions to deal with application environment values. I packed them as a module. I thought if it helps me it may help to somebody else too.

I hope it will be useful for dear Erlanger.

## Usage ##

app.config:

```erlang
%% -*- mode: Erlang; -*-

[
    %% SASL config
    {sasl, [
        % ...
    ]},

    %% You app config
    {my_app, [

        % The value you want to extract
        {my_key, 43}
        % ...
    ]}
]
```

Your code:

```erlang
% Here you specify section of app.config you are interested in.
AppName = my_app,

% Call to get value of the key specifyer in app.config.
% If nothing is specifyed for `key` atom `undefined` will be returned.
> appenv:get(AppName, my_key),
43.


% Call to get value of the key specifyer in app.config.
% If nothing is specifyed for `key` DefaultValue will be returned.
DefaultValue = 42,
> appenv:get(AppName, my_key2, DefaultValue),
42.
```

## Licence ##

MIT - http://en.wikipedia.org/wiki/MIT_License