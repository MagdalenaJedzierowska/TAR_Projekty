def partition (a, p, r)
  x=a[r]
  i=p-1
  for j in p..r
    if (a[j] <= x)
      i+=1
      a[i], a[j] = a[j], a[i]
    end
  end
  if (i<r)
    return i
  else
    return i-1
  end
end

def quicksort (a, p, r)
  if (p<r)
    q=partition(a, p, r)
    quicksort(a, p, q)
    quicksort(a, q+1, r)
  end
  return a
end
