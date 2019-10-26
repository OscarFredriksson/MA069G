from statsmodels.tsa.holtwinters import SimpleExpSmoothing

def ETS_fit(data):
    return (SimpleExpSmoothing(data).fit())

G = [600, 400, 500, 550, 700] 
H = [200, 300, 250, 300, 250]
I = [400, 450, 350, 450, 400]

G_predict = ETS_predict(G)
H_predict = ETS_predict(H)
I_predict = ETS_predict(I)

print("G: " + str(G_predict))
print("H: " + str(H_predict))
print("I: " + str(I_predict))
