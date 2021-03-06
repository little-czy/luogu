#include <iostream>
#include <string>
#include <algorithm>
using namespace std;
#define n 10
const int maxn = 200;

struct bign
{
    int d[maxn << 1], len; //空间应大一倍，因为乘之后的结果位数会增加
    bign() : len(0) { memset(d, 0, sizeof(d)); }
};

//高精度除法，其中一个为int
bign div(bign a, int b, int &r)
{
    bign c;
    c.len = a.len;
    for (int i = a.len - 1; i >= 0; i--)
    {
        r = r * 10 + a.d[i];
        if (r < b)
            c.d[i] = 0;
        else
        {
            c.d[i] = r / b;
            r %= b;
        }
    }
    while (c.len >= 2 && c.d[c.len - 1] == 0)
        c.len--;
    return c;
}

string dezero(string a) //用来去掉正数前面的0，也就是说可以输入000001类似这样的数字
{
    long int i;
    for (i = 0; i < a.length(); i++)
    {
        if (a.at(i) > 48)
            break;
    }
    if (i == a.length())
        return "0";
    a.erase(0, i);
    return a;
}
int judge(string a, string b) //判断两个正数的大小
{
    if (a.length() > b.length())
        return 1;
    if (a.length() < b.length())
        return -1;
    long int i;
    for (i = 0; i < a.length(); i++)
    {
        if (a.at(i) > b.at(i))
            return 1;
        if (a.at(i) < b.at(i))
            return -1;
    }
    return 0;
}
string sub(string a, string b) //自然数减法（在之前博客中写到过，这里直接挪过来调用了）
{
    a = dezero(a);
    b = dezero(b);
    long int i, j = 0;
    string c = "0";
    string c1, c2;
    string d = "-";
    if (judge(a, b) == 0)
        return c;
    if (judge(a, b) == 1)
    {
        c1 = a;
        c2 = b;
    }
    if (judge(a, b) == -1)
    {
        c1 = b;
        c2 = a;
        j = -1;
    }
    reverse(c1.begin(), c1.end());
    reverse(c2.begin(), c2.end());
    for (i = 0; i < c2.length(); i++)
    {
        if (c2.at(i) >= 48 && c2.at(i) <= 57)
            c2.at(i) -= 48;
        if (c2.at(i) >= 97 && c2.at(i) <= 122)
            c2.at(i) -= 87;
    }
    for (i = 0; i < c1.length(); i++)
    {
        if (c1.at(i) >= 48 && c1.at(i) <= 57)
            c1.at(i) -= 48;
        if (c1.at(i) >= 97 && c1.at(i) <= 122)
            c1.at(i) -= 87;
    }
    for (i = 0; i < c2.length(); i++)
    {
        c1.at(i) = c1.at(i) - c2.at(i);
    }
    for (i = 0; i < c1.length() - 1; i++)
    {
        if (c1.at(i) < 0)
        {
            c1.at(i) += n;
            c1.at(i + 1)--;
        }
    }
    for (i = c1.length() - 1; i >= 0; i--)
    {
        if (c1.at(i) > 0)
            break;
    }
    c1.erase(i + 1, c1.length());
    for (i = 0; i < c1.length(); i++)
    {
        if (c1.at(i) >= 10)
            c1.at(i) += 87;
        if (c1.at(i) < 10)
            c1.at(i) += 48;
    }
    reverse(c1.begin(), c1.end());
    if (j == -1)
        c1.insert(0, d);
    return c1;
}
string divide(string a, string b) //自然数除法
{
    if (b.length() == 1 && b.at(0) == 48)
        return "error";
    long int i, j;
    string c1, c2, d, e;
    if (judge(a, b) == 0)
        return "1";
    if (judge(a, b) == -1)
    {
        return "0";
    }
    c1 = dezero(a);
    c2 = dezero(b);
    d = "";
    e = "";
    for (i = 0; i < c1.length(); i++)
    {
        j = 0;
        d = d + c1.at(i);
        d = dezero(d);
        while (judge(d, b) >= 0)
        {
            d = sub(d, b); //调用之前的减法函数minus，在本文中也加了进来
            d = dezero(d);
            j++;
        }
        e = e + "0";
        e.at(i) = j;
    }
    for (i = 0; i < e.length(); i++)
    {
        if (e.at(i) >= 10)
            e.at(i) += 87;
        if (e.at(i) < 10)
            e.at(i) += 48;
    }
    e = dezero(e);
    return e;
}
int main()
{
    string a, b;
    while (cout << "input:" && cin >> a >> b)
    {
        cout << "output:" << divide(a, b) << endl;
        cout << "output:" << sub(a, b) << endl;
    }
    return 0;
}