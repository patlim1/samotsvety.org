<!DOCTYPE HTML>
<html>
<head>

    <title>%($pageTitle%)</title>

    <link rel="stylesheet" href="/pub/style/style.css" type="text/css" media="screen, handheld" title="default">
    <link rel="shortcut icon" href="/favicon.ico" type="image/vnd.microsoft.icon">
% if(test -f $sitedir/_werc/pub/style.css)
%    echo '    <link rel="stylesheet" href="/_werc/pub/style.css" type="text/css" media="screen" title="default">'

    <meta charset="UTF-8">
% # Legacy charset declaration for backards compatibility with non-html5 browsers.
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 

% if(! ~ $#meta_description 0)
%   echo '    <meta name="description" content="'$"meta_description'">'
% if(! ~ $#meta_keywords 0)
%   echo '    <meta name="keywords" content="'$"meta_keywords'">'

% h = `{get_lib_file headers.inc}
% if(! ~ $#h 0)
%   cat $h

    %($"extraHeaders%)
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta property="og:image" content="https://cards.samotsvety.org/api/dynamic-image?endpoint=/">
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:title" content="Samotsvety Forecasting" />
    <meta name="twitter:description" content="Samotsvety Forecasting " />
    <meta name="twitter:url" content="https://samotsvety.org/" />
    <meta name="twitter:image" content="https://cards.samotsvety.org/api/dynamic-image?endpoint=/" />
    <meta name="twitter:site" content="@SamotsvetyF" />

</head>
<body>

