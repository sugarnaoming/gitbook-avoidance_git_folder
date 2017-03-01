#!/bin/sh
# 直下に_bookフォルダがあるかどうかの確認
if [ ! -d ./_book ]
then
	# _bookが無い
	gitbook build
else
	# _bookが有る
	if [ -d ./_book/.git ]
	then
		# .gitフォルダも有る
		# .gitフォルダを退避
		mv ./_book/.git ./.git.tmp
		gitbook build
		# 退避したフォルダをもどす
		mv ./.git.tmp ./_book/.git
		# _bookに生成された自身を削除
		rm ./_book/alt-gitbook_build.sh
		# build時に生成された.git.tmpフォルダも削除
		rm -r ./_book/.git.tmp
	else
		gitbook build
	fi
fi