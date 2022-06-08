{ -*- compile-command: "castle-engine simple-compile post_process_html.lpr" -*-
  Simple utility in Pascal to post-process HTML output. }

uses CastleFilesUtils, CastleFindFiles, CastleStringUtils, CastleUtils;

var
  ReplaceHead, ReplaceBodyBegin, ReplaceBodyEnd: String;

procedure ProcessFile(const FileInfo: TFileInfo; Data: Pointer; var StopSearch: boolean);
var
  S: String;
begin
  S := FileToString(FileInfo.Url);
  S := SReplacePatterns(S, [
    'CASTLE-HEAD',
    'CASTLE-BODY-BEGIN',
    'CASTLE-BODY-END'
  ], [
    ReplaceHead,
    ReplaceBodyBegin + NL + '<div class="content">',
    '</div>' + NL + ReplaceBodyEnd
  ], false);
  StringToFile(FileInfo.Url, S);
end;

var
  FilesCount: Integer;
begin
  ReplaceHead := FileToString('html-parts/head.html');
  ReplaceBodyBegin := FileToString('html-parts/body-begin.html');
  ReplaceBodyEnd := FileToString('html-parts/body-end.html');

  FilesCount := FindFiles('output/xsl/html/', '*.html', false, @ProcessFile, nil, []);
  Writeln('Processed ', FilesCount, ' HTML files.');
end.
