-module(lesson3_task2).
-export([words/1]).
	
	words(Text) ->
		words(Text,<<>>,[]).
	words(<<" ",Rest/binary>>,Acc,Acc2)->
		words(Rest,<<>>,[Acc|Acc2]);
	words(<<H/utf8,Rest/binary>>,Acc,Acc2)->
		words(Rest,<<Acc/binary,H/utf8>>,Acc2);
	words(<<>>,Acc,Acc2)->
		lists:reverse([Acc|Acc2]).
