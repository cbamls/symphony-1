<#--

    Symphony - A modern community (forum/BBS/SNS/blog) platform written in Java.
    Copyright (C) 2012-present, b3log.org

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

-->
<#macro head title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <title>${title}</title>
    <#nested>
    <link rel="preconnect" href="${staticServePath}">
    <meta name="copyright" content="AIQ" />
    <meta http-equiv="Window-target" content="_top" />
    <meta name="google-site-verification" content="TC3gczXoPaeBYFrVeN_rVV0TPVTiQkwrwxXi0YAGIPk" />
    <meta name="shenma-site-verification" content="3333fc66344df11cd9b0abdcf3562a6a_1586331317">
    <link rel="stylesheet" href="${staticServePath}/css/responsive.css?${staticResourceVersion}" />
    <link rel="stylesheet" href="${staticServePath}/css/base.css?${staticResourceVersion}" />
    <link rel="icon" type="image/png" href="${staticServePath}/images/favicon.png" />
    <link rel="apple-touch-icon" href="${staticServePath}/images/faviconH.png">
    <link rel="search" type="application/opensearchdescription+xml" title="AIQ" href="/opensearch.xml">
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-121987873-1"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', 'UA-121987873-1');
    </script>
    <script data-ad-client="ca-pub-1229303764778930" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
    ${siteVisitStatCode}
</#macro>
