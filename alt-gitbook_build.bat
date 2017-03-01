@echo off
cd /d %~dp0

if exist "./_book" (
	if exist "./_book/.git" (
		rem .gitフォルダを退避
		move ./_book/.git ./_book/.git.tmp
		move ./_book/.git.tmp ./
		@echo on
		gitbook build
		@echo off
		rem build時に生成される余分なフォルダを削除
		rd /s /q ./_book/.git.tmp
		rd ./_book/alt-gitbook_build.bat
		rem 退避した.gitフォルダを戻す
		move ./.git.tmp ./_book/
		move ./_book/.git.tmp ./_book/.git
	) else (
		@echo on
		gitbook build
		@echo off
	)
) else (
	@echo on
	gitbook build
	@echo off
) 