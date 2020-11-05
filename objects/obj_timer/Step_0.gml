if(madnessOn = 0)
{
    if(madness < 100)
    {
        timer += 1;
        if(timer = count)
        {
            timer = 0;
            madness += 1;
        }
    }
    if(madness >= 90)
    {
        madnessControl = 1;
    }   
}
if(madness = 100)
{
    madnessOn = 1;
}
if(madnessOn = 1)
{
    timer += 1;
    if(timer = count)
    {
        timer = 0;
        madness -= 1;
    }
}
if(madness <= 75)
{
    madnessControl = 0;
}
if(madness = 0)
{
    madnessOn = 0;
}

