import re,sys
p=r"smali\com\corrodinggames\rts\game\i345.smali"
lines=open(p,encoding="utf-8",errors="replace").read().split("\n")
cur=None; meths=[]
for i,l in enumerate(lines):
    if l.startswith(".method"): cur=(i+1,l)
    elif l.startswith(".end method"):
        if cur: meths.append((cur[0],i+1,cur[1])); cur=None
for t in meths:
    if t[0]<11100 and t[1]>5900: print(t[0],t[1],t[2])
print("---- Exception catch line 6305 enclosing:")
for t in meths:
    if t[0]<=6305<=t[1]: print(t)
print("---- enclosing 10680 (Loading custom unit data):")
for t in meths:
    if t[0]<=10680<=t[1]: print(t)
