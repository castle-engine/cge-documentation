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

  { Add <!DOCTYPE html>, following HTML standards,
    see https://developer.mozilla.org/en-US/docs/Web/HTML/Quirks_Mode_and_Standards_Mode .
    DocBook output doesn't contain it. }
  if IsPrefix('<html><head>', S, true) then
    S := '<!DOCTYPE html>' + NL + S;

  { Replace special patterns with pregenerated code from CGE website. }
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
  Writeln('Processed ', FilesCount, ' HTML files (chunks).');
  FilesCount := FindFiles('output/xsl/html-nochunks/', '*.html', false, @ProcessFile, nil, []);
  Writeln('Processed ', FilesCount, ' HTML files (nochunks).');
end.
