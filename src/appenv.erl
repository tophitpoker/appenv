%%% Copyright (C) 2012-Present. Max Bourinov (bourinov@gmail.com)
%%%
%%% Permission is hereby granted, free of charge, to any person obtaining
%%% a copy of this software and associated documentation files (the "Software"),
%%% to deal in the Software without restriction, including without limitation
%%% the rights to use, copy, modify, merge, publish, distribute, sublicense,
%%% and/or sell copies of the Software, and to permit persons to whom the
%%% Software is furnished to do so, subject to the following conditions:
%%%
%%% The above copyright notice and this permission notice shall be included
%%% in all copies or substantial portions of the Software.
%%%
%%% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
%%% OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
%%% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
%%% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
%%% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
%%% FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
%%% IN THE SOFTWARE.
%%%
%%% ---
%%%
%%% @doc Module that helps to work with app.config valiables
%%% @end
-module (appenv).
-author('bourinov@gmail.com').

-export([get/1, get/2]).

%% @doc Get application environment value of Param from config.
%%      Returns 'undefined' if Param not exists.
%% @end
-spec get(Param :: atom()) -> term() | undefined.
get(Param) ->
  get_env(Param, undefined).

%% @doc Get application environment value of Param from config.
%%      Returns Default value if Param not exists.
%% @end
-spec get(Param :: atom(), Default :: term()) -> term().
get(Param, Default) ->
  get_env(Param, Default).

%% @doc Get environment variable for arbitrary application specified
%%      by ModPid what is module or process identificator which belongs to
%%      desired application
%% @end
%% @private
-spec get_env(Param :: atom(), Default :: term()) -> term().
get_env(Param, Default) ->
    {ok, App} = application:get_application(?MODULE),
    case application:get_env(App, Param) of
        {ok, Value} ->
            Value;
        undefined ->
            Default
    end.