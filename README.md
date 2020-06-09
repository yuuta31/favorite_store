# Favorite store

<p align="center">
<img width="483" src="https://user-images.githubusercontent.com/54881132/83920731-ca1d6800-a7b7-11ea-8aa0-99ae9f265adc.gif">
</p>

## :memo: アプリ紹介
Favorite store は、おすすめのお店を探すことができます！
- ユーザーは、次に予約するお店が見つかります
- ユーザーは、お店のブックマークリストを作ることができます
- もし行ったことがあるお店があるならば、ぜひコメントしてみてください。
</br>

## :star: 使用技術

<p align="center">
<a href="https://guides.rubyonrails.org/"><img src="https://user-images.githubusercontent.com/54881132/84109149-f86fa180-aa5c-11ea-9206-d4c03427d59c.png" height="60px;" /></a>
<a href="https://jp.vuejs.org/index.html"><img src="https://user-images.githubusercontent.com/54881132/84109500-c448b080-aa5d-11ea-9186-bfb2e849ed89.png" height="60px;" /></a>
</p>
<p align="center">
<a href="http://haml.info/"><img src="https://user-images.githubusercontent.com/54881132/84109525-d7f41700-aa5d-11ea-83ad-031ee798475f.png" height="60px;" /></a>
<a href="https://sass-lang.com/styleguide/brand"><img src="https://user-images.githubusercontent.com/54881132/84109557-e5110600-aa5d-11ea-80a6-29ba67139073.png" height="60px;" /></a>
<a href="https://jquery.com/"><img src="https://user-images.githubusercontent.com/54881132/84109575-f35f2200-aa5d-11ea-894a-f6a982746b72.png" height="50px;" /></a>
<a href="https://docs.docker.com/"><img src="https://user-images.githubusercontent.com/54881132/84109594-ff4ae400-aa5d-11ea-8533-aca6f59abb9c.png" height="60px;" /></a>
<a href="https://aws.amazon.com/jp/aws-jp-introduction/aws-jp-webinar-service-cut/"><img src="https://user-images.githubusercontent.com/54881132/84109625-0eca2d00-aa5e-11ea-8b0e-29fbc248c94a.png" height="60px;" /></a>
</p>

</br>

## :globe_with_meridians: App URL

### **https://www.favoritestoreblog.com/**  

</br>

## :book: アプリ画面紹介

<h3 align="center">:smiley: ユーザー画面</h3>

</br></br></br>
***

<h3 align="center">タグ検索機能</h3>

<img align="center" width="1009" alt="tag-search" src="https://user-images.githubusercontent.com/54881132/84110729-5fdb2080-aa60-11ea-9f3c-ceb9a650530d.png">

</br></br></br>
***

<h3 align="center">非同期 詳細情報の取得</h3>

<img align="center" width="1016" alt="スクリーンショット 2020-06-09 15 04 50" src="https://user-images.githubusercontent.com/54881132/84111862-b21d4100-aa62-11ea-9a37-b7b14106b9ab.png">

</br></br></br>
***

<h3 align="center">コメント、いいね、ブックマーク機能</h3>

<img align="center" width="703" alt="スクリーンショット 2020-06-09 15 07 45" src="https://user-images.githubusercontent.com/54881132/84112042-ff99ae00-aa62-11ea-8242-8260adc08c7a.png">

## :cloud: インフラストラクチャ構成
<p align="center">
<img width="884" src="https://user-images.githubusercontent.com/54881132/84020638-16d29000-a9be-11ea-9155-6a271d0ce0a8.png">
</p>

</br>

## :eyes: ER図

<img width="884" src="https://user-images.githubusercontent.com/54881132/84110050-08888080-aa5f-11ea-97b0-c7dacb27a79b.png">

</br>

## :speech_balloon: git clone

```
$ git clone https://github.com/yuuta31/favorite_store.git
$ cd favorite_store
$ docker-compose build --no-cache
$ docker-compose run --rm app rails db:create
$ docker-compose run --rm app rails db:migrate
$ docker-compose up -d
👉http://localhost/
```

## :smile: 作成者
- <a href="https://twitter.com/onoblog">Twitter</a>
- <a href="https://qiita.com/onoblog">Qiita</a>