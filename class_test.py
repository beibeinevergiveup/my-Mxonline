class Beibei:
    name = ''
    age = 0
    message = ''
    __sex = ''

    def eat(self):
        self.message = '我' + self.name + '要吃饭啦'

    def add(self, name, age):
        self.name = name
        self.age = age

    def study(self):
        self.message = '我' + self.name + '要学习啦'

    def Myinfo(self):
        self.message = '我叫{}'.format(self.name)

    def set(self, sex):
        self.sex = sex

    def get(self):
        return self.sex


if __name__ == '__main__':
    
    beibei = Beibei()
    beibei.add('贝贝', 20)
    beibei.Myinfo()
    print(beibei.message)
    beibei.eat()
    print(beibei.message)
    beibei.set('男')
    print(beibei.get())


