  public int hashCode()
  {
    int i = this.hash;
    if ((i == 0) && (this.value.length > 0))
    {
      char[] arrayOfChar = this.value;
      for (int j = 0; j < this.value.length; ++j)
        i = 31 * i + arrayOfChar[j];
      this.hash = i;
    }
    return i;
  }

100784945431573920

---3124333308378791424

3124333308378791520
3124333308378791619

4611686018427387904 
1152921504606846976

3002484309352018608128