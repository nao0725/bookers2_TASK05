class SearchesController < ApplicationController
    def serch
        @model = params["model"] #選択したモデル
        @method = params["method"] #検索方法
        @content = params["content"] #検索ワード
        @records = search_for(@model,@content,@method) #上記③つを代入
    end
    
    private
    def search_for(model, content, method)
        if model == "user" #選択したモデルがUserだった場合
        　if method == "perfect" #完全一致なら
        　  User.where(name: content)
        　elsif #前方一致なら
        　  User.where("name LIKE ?", "%"+content+"%")
        　elsif #広報一致なら
        　
        　else #部分一致なら
        　 
        　end
    end
end
