"""
    基于svd梯度下降算法的协同过滤
"""
import numpy as np
import pandas as pd


class SVDrecommend:
    # 电影id的列表
    movie_list = []
    # 用户id的列表
    id_list = []
    # 建模数据
    values = []

    # 构造函数
    def __init__(self, userMovieScore, userMovieScoreDict):
        self.userMovieScore = userMovieScore
        self.userMovieScoreDict = userMovieScoreDict

    # 读取数据及处理数据
    def read_data(self):
        for i in self.userMovieScore:
            self.movie_list.append(i.movie_id)
            self.id_list.append(i.id)
        # 对电影id与用户id进行去重
        self.id_list = list(set(self.id_list))
        self.movie_list = list(set(self.movie_list))
        # 电影的个数与用户的个数
        movienum = len(self.movie_list)
        idnum = len(self.id_list)

        # 以每一个用户为一行，每一部电影为一列
        # 数据放的是该用户对电影的评分，若没有点评则置为0
        dataFrame = pd.DataFrame(np.zeros((idnum, movienum)), index=[str(i) for i in self.id_list],
                                 columns=[str(j) for j in self.movie_list])

        # 将数据存入
        for userId, data_list in self.userMovieScoreDict.items():
            for movieid, data in data_list.items():
                dataFrame[str(movieid)][str(userId)] = data

        self.values = np.array(dataFrame.values)
        print(self.values)

    # 推荐算法
    def recommend(self, userID, lr=1e-4, alpha=0.999, d=20, n_iter=5):
        """
        userID(int)：推荐用户ID
        lr(float)：学习率
        alpha(float)：权重衰减系数
        d(int)：矩阵分解因子(即元素个数)
        n_iter(int)：训练轮数
        data(ndarray)：用户-电影评分矩阵
        """
        # 获取用户数与电影数
        m, n = self.values.shape

        # 初始化参数
        x = np.random.uniform(0, 1, (m, d))
        w = np.random.uniform(0, 1, (d, n))

        # 创建评分记录表，无评分记为0，有评分记为1
        record = np.array(self.values > 0, dtype=int)

        # 梯度下降，更新参数
        for i in range(n_iter):
            x_grads = np.dot(np.multiply(record, np.dot(x, w) - self.values), w.T)
            w_grads = np.dot(x.T, np.multiply(record, np.dot(x, w) - self.values))
            x = alpha * x - lr * x_grads
            w = alpha * w - lr * w_grads

        # 预测
        predict = np.dot(x, w)

        # 将用户未看过的电影分值从低到高进行排列
        for i in range(n):
            if record[userID - 1][i] == 1:
                predict[userID - 1][i] = 0

        # 推荐结果
        recommend = np.argsort(predict[userID - 1])[::-1]

        # 返回用户可能最喜欢的10部电影
        return [self.movie_list[i] for i in recommend[:12]]

