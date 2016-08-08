This is swift project

-------------------------------------

Project setup, build, running

1. Please install your Xcode on your local computer
2. Go to Tabber project folder
3. Go to ~/Tabber/Tabber.xcodeproj and double click.
4. In project menu bar, you can choose Product/build
5. Please choose your any simulator
5. If success build, you can choose Product/Run.

Now you can see app up and running on simulator.


-------------------------------------

Tabber project usage

People enters any price using input box.

There are 3 options for 15%, 20%, 22% calculation.

Price is calculated by people.

Calculation formula is as follows.

When price is $100, 

Normal case : $15, $20, $22
1 people case : $115, $120, $122
2 people case : $57.5, $60, $61
3 people case : $38.33, $40, $40.67
4 people case : $28.75, $30, $30.50

After all when $x, 

Normal case : x*15/100, x*20/100, x*22/100
1 people case : x*115/100, x*120/100, x*122/100
2 people case : x*115/200, x*120/200, x*122/200
3 people case : x*115/300, x*120/300, x*122/300
4 people case : x*115/400, x*120/400, x*122/400
n people case : x*115/(100*n), x*120/(100*n), x*122/(100*n)
