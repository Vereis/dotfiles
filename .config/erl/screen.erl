-module(screen).
-compile(export_all).

clear() ->
    io:format("~s", [os:cmd("clear")]),
    {ok, cleared_screen}.
