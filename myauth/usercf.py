from math import *

"""
    基于用户的协同过滤算法
"""
class UserCF:
    # 构造函数，初始化用户电影评分数据
    def __init__(self, data):
        self.data = data

    # 计算两个用户之间的相似度
    def Euclidean(self, user1, user2):
        # 取出两位用户评论过的电影和评分
        user1_data = self.data[user1]
        user2_data = self.data[user2]
        distance = 0
        # 找到两位用户都评论过的电影，并计算欧式距离
        for key in user1_data.keys():
            if key in user2_data.keys():
                # 注意，distance越大表示两者越相似
                distance += pow(float(user1_data[key]) - float(user2_data[key]), 2)
        return 1 / (1 + sqrt(distance))  # 这里的返回值越小，相似度越大

    # 计算某个用户与其他用户的相似度
    def top10_simliar(self, userID):
        res = []
        for userid in self.data.keys():
            # 排除与自己计算相似度
            if not userid == userID:
                simliar = self.Euclidean(userID, userid)
                res.append((userid, simliar))
        res.sort(key=lambda val: val[1])
        return res[:4]

    # 根据用户推荐电影给其他人
    def recommend(self, user):
        # 相似度最高的用户
        top_sim_user = self.top10_simliar(user)[0][0]
        # 相似度最高的用户的观影记录
        items = self.data[top_sim_user]
        recommendations = []
        # 筛选出该用户未观看的电影并添加到列表中
        for item in items.keys():
            if item not in self.data[user].keys():
                recommendations.append((item, items[item]))
        recommendations.sort(key=lambda val: val[1], reverse=True)
        # 返回评分最高的10部电影
        return recommendations[:12]