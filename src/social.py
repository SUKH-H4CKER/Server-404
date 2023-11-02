import webbrowser
import os
import time

while True:
 os.system('clear')
 os.system('python src/logo.py')
 os.system('python src/Starter.py')

 print('''
1. Telegram
2. Instagram
3. Main Tool
''')

 choice = int(input("Enter Number: "))

 if(choice==1):
  tg = 'https://t.me/SUKH_H4CKER_GROUP/'
  webbrowser.open(tg)
  print(f'Telegram-URL: {tg}')
  break
 elif(choice==2):
  ig = 'https://instagram.com/__king_of_hackers__?igshid=MzNlNGNkZWQ4Mg=='
  webbrowser.open(ig)
  print(f"Instagram-URL: {ig}")
  break
 elif(choice==3):
  os.system('python ~/Server-404-v2/main.py')
 else:
  print('Invaild Number, Please Enter Vaild Number')
  time.sleep(2)
