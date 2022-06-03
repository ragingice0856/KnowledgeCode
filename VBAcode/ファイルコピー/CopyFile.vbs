Option Explicit

Dim fileSysObj
'ファイルシステムオブジェクトの生成
Set fileSysObj = CreateObject("Scripting.FileSystemObject")

Dim textFileObj
'テキストファイルオブジェクトの生成
Set textFileObj = fileSysObj.CreateTextFile("test.txt", true)

'文字列書き込む
textFileObj.Write("Line1"+vbCrLf+"Line2")

'ファイル名を変更してコピー
Call fileSysObj.CopyFile("test.txt", "test_copy.txt")

'ファイルを閉じる
textFileObj.Close