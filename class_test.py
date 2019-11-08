class Beibei:
    def __init__(self, money):
        self.money = money


class Beibei2:
    def __init__(self, age):
        self.age = age


class LittleBeibei(Beibei, Beibei2):
    def __init__(self, age, money):
        self.age = age
        self.money = money

    def __str__(self):
        return "beibei 今年 {}岁，他有{}钱".format(self.age,self.money)


beibei = LittleBeibei(12, 100)
print(beibei)
