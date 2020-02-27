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
<#include "../macro-head.ftl">
<!DOCTYPE html>
<html>
    <head>
        <@head title="${loginLabel} - ${symphonyLabel}">
        <meta name="description" content="${registerLabel} ${symphonyLabel}"/>
        </@head>
        <link rel="stylesheet" href="${staticServePath}/css/index.css?${staticResourceVersion}" />
        <link rel="canonical" href="${servePath}/register">
    </head>
    <body>
        <#include "../header.ftl">
        <div class="main">
            <div class="wrapper verify">
                <div class="verify-wrap">
                    <div class="form">
<#--                        <svg><use xlink:href="#logo"></use></svg>-->
                        <img src="images/log2.svg" />
                        <div id="githubLogin" style="display: block">
                            <div onclick="window.location='https://github.com/login/oauth/authorize?client_id=603d830f3705501acc91&redirect_uri=${servePath}/githubLoginCallback&scope=user:email&goto=${goto}'">
                                <#--<img class="fn__none" src="https://static.hacpai.com/images/github.gif">-->
                                <div class="verify__github"></div>
                            </div>
                            <div>
                                <#--<b class="ft__black">使用 GitHub 进行登录</b>-->
                            </div>
                            <button class="green" onclick="window.location='https://github.com/login/oauth/authorize?client_id=603d830f3705501acc91&redirect_uri=${servePath}/githubLoginCallback&scope=user:email&goto=${goto}'">推荐使用 GitHub 进行登录</button>
                            <button class="green" onclick="Verify.changeLoginType('!github')">账号密码登录</button>
                        </div>
                        <div id="commonLogin" style="display: none">

                            <div class="input-wrap">
                                <svg><use xlink:href="#userrole"></use></svg>
                                <input id="nameOrEmail" type="text" autofocus="autofocus" placeholder="${nameOrEmailLabel}" autocomplete="off" />
                            </div>
                            <div class="input-wrap">
                                <svg><use xlink:href="#locked"></use></svg>
                                <input type="password" id="loginPassword" placeholder="${passwordLabel}" />
                            </div>
                            <div class="fn-none input-wrap">
                                <img id="captchaImg" class="captcha-img fn-pointer" />
                                <input type="text" id="captchaLogin" class="captcha-input" placeholder="${captchaLabel}" />
                            </div>

                            <div class="fn-clear">
                                <div class="fn-hr5"></div>
                                <input type="checkbox" id="rememberLogin" checked /> ${rememberLoginStatusLabel}
                                <a href="${servePath}/forget-pwd" class="fn-right">${forgetPwdLabel}</a>
                                <div class="fn-hr5"></div>
                            </div>

                            <div id="loginTip" class="tip"></div>
                            <button class="green" onclick="Verify.login('${goto}')">${loginLabel}</button>
                            <button class="green" onclick="Verify.changeLoginType('github')">改用github登录</button>
                        </div>
                        <button onclick="Util.goRegister()">${registerLabel}</button>
                    </div>
                </div>
                <div class="intro vditor-reset">
                    ${introLabel}
                </div>
            </div>
        </div>
        <#include "../footer.ftl">
        <script src="${staticServePath}/js/verify${miniPostfix}.js?${staticResourceVersion}"></script>
        <script>
            Verify.init();
            Label.invalidUserNameLabel = "${invalidUserNameLabel}";
            Label.invalidEmailLabel = "${invalidEmailLabel}";
            Label.confirmPwdErrorLabel = "${confirmPwdErrorLabel}";
            Label.captchaErrorLabel = "${captchaErrorLabel}";
        </script>
    </body>
</html>
