
## 概要
Slackの `JohoKaigi` チームのRuboty `@sharetaro_bot` から、  
Githubの `johokaigi/johokaigi` または `johokaigi/johokaigi_staff` にIssueを登録（open）する方法を解説します。

## 方法

`@sharetaro_bot: issue ほげほげ` で `johokaigi/johokaigi` に、
`@sharetaro_bot: staff ほげほげ` で `johokaigi/johokaigi_staff` に Issueを登録できます。

![image](https://cloud.githubusercontent.com/assets/732828/11450001/dabe12b8-95ce-11e5-81bf-9fbce33bd5f6.png)

## Github `Personal Access Token` を取得する

GithubのメニューからSettingsを選択  

![image](https://cloud.githubusercontent.com/assets/732828/11449878/0bc38004-95cb-11e5-9c10-45e916415b3a.png)

`Personal Access Tokens`を選択し、`Generate new token` を押す  

![image](https://cloud.githubusercontent.com/assets/732828/11449884/40a1790c-95cb-11e5-8f0c-b1bdac19caba.png)

`repo/public_repo` がチェックされていることを確認し（デフォルトでチェックがあるはず）、  
`Generate token` を押す

![image](https://cloud.githubusercontent.com/assets/732828/11449911/720feeaa-95cc-11e5-99a1-4ae29be8edec.png)

緑色の背景の箇所が今Generateされたtokenなので、アイコンをクリックしてコピーする。  

![image](https://cloud.githubusercontent.com/assets/732828/11449917/9fa0772c-95cc-11e5-872b-5f975003821c.png)

## シェア太郎にGithub `Personal Access Token`を伝える

コピーした token を、シェア太郎とのDMチャンネルで伝える。
`@sharetaro_bot remember my github token コピーしたトークンをここへ` と話しかければOK 

![image](https://cloud.githubusercontent.com/assets/732828/11449934/045d0360-95cd-11e5-8d30-deb08804233e.png)
