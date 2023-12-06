int min(int a, int b)
{
  if (a < b)
    return a;
  return b;
}

int max(int a, int b)
{
  if (a < b)
    return b;
  return a;
}

void bounds()
{

  int seq[10];
  int pivot = read();
  int low = min(pivot, 100);
  int high = max(pivot, 0);
  for (int i = 0; i < low; i++)
    seq[i] = 0;
  for (int j = high; j < 100; j++)
    seq[j] = 1;
}
