#Note#

##Step 1##

* Using rvm to install ruby 2.6.1. Using it to built donekiq.
* Using `gem install rails`, version Rails 5.2.2.
* Using homebrew to check postgreSQL version 11.1.

##Step 2##

* Using homebrew git, version 2.20.1.
* GCD <andy88566y@gmail.com>

##Step 3##

* done

##Step 4##

* 好奇像priority這種欄位，要設定成integer比較好還是string?

##Step 5##

* 原本照工作習慣做了branch develop, 改名成 topic.
* bundler already installed, version 1.17.2
* 用rails 官方介紹設定 database.yml (https://edgeguides.rubyonrails.org/configuring.html)

##Step 6##

* redo 是一個新的指令, 原來是 rollback + migrate, 以前沒有這個習慣, 知道後就會養成了.
* 在merge 的時候不曉得為什麼把graph搞亂了。原本我發了一個PR想把topic merge into master，有merge conflict，我在github上面resolve後，他好像就自己生了一個commit，但是是長在topic上面，然後再merge 回master。所以這是某種github solve merge conflict的紀錄方式？確保topic再開發下去也會是正確的？

過去我的做法都是用terminal checkout到develop，merge feature branch同時solve conflict，然後併在這個commit中。之後新的feature branch都從最新的develop branch開始，這樣開發新功能的時候可以保證是最新的一份code，而且develop可以隨時merge回master deploy。

感覺是哲學不同？或是可能我弄錯某個地方，希望有人可以討論。

##Step 7##

* 打到奇怪的問題，`rails generate` not working，`spring stop` `bin/spring`後恢復正常。(refer: https://github.com/rails/spring/issues/265) 可能是我中間切換過ruby version造成的？
* 安裝slim 作為template engine
* CRUD controller, view 的部分非常熟悉

##Step 8##

* 事先不懂`E2E 測試`這個詞，查了一下似乎算是integration test? 之前專案比較專注在寫Model的 Unit Test上，這種E2E test比較少去寫。
* 決定還是用熟悉的rspec來寫，先安裝。
* 
