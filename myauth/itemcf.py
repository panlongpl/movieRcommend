import math

class ItemBasedCF:
    def __init__(self,train_data):
        self.train = train_data

    def ItemSimilarity(self):
        C = dict()  #物品-物品的共现矩阵
        N = dict()  #物品被多少个不同用户购买
        for user,items in self.train.items():
            for i in items.keys():
                N.setdefault(i,0)
                N[i] += 1  #物品i出现一次就计数加一
                C.setdefault(i,{})
                for j in items.keys():
                    if i == j : continue
                    C[i].setdefault(j,0)
                    C[i][j] += 1  #物品i和j共现一次就计数加一


        #计算相似度矩阵
        self.W = dict()
        for i,related_items in C.items():
            self.W.setdefault(i,{})
            for j,cij in related_items.items():
                self.W[i][j] = cij / (math.sqrt(N[i] * N[j]))  #按上述物品相似度公式计算相似度

        return self.W

    #给用户user推荐前N个最感兴趣的物品
    def Recommend(self,user,K=3,N=12):
        rank = dict() #记录user的推荐物品（没有历史行为的物品）和兴趣程度
        action_item = self.train[user]     #用户user购买的物品和兴趣评分r_ui
        for item,score in action_item.items():
            for j,wj in sorted(self.W[item].items(),key=lambda x:x[1],reverse=True)[0:K]:  #使用与物品item最相似的K个物品进行计算
                if j in action_item.keys():  #如果物品j已经购买过，则不进行推荐
                    continue
                rank.setdefault(j,0)
                rank[j] += score * wj  #如果物品j没有购买过，则累计物品j与item的相似度*兴趣评分，作为user对物品j的兴趣程度
        return dict(sorted(rank.items(),key=lambda x:x[1],reverse=True)[0:N])
