
;; Function bbgemm (bbgemm, funcdef_no=8, decl_uid=3037, cgraph_uid=9, symbol_order=8)

bbgemm (double * m1, double * m2, double * prod, struct hercules_checkdata * checkdata, int * hercules_buffer_size)
{
  double mul;
  double temp_x;
  int k_row;
  int i_row;
  int kk;
  int jj;
  int j;
  int k;
  int i;

  loopjj:
  jj = 0;
  goto <D.3078>;
  <D.3077>:
  loopkk:
  kk = 0;
  goto <D.3075>;
  <D.3074>:
  loopi:
  i = 0;
  goto <D.3072>;
  <D.3071>:
  loopk:
  k = 0;
  goto <D.3069>;
  <D.3068>:
  i_row = i * 64;
  _1 = k + kk;
  k_row = _1 * 64;
  _2 = i_row + k;
  _3 = kk + _2;
  _4 = (long unsigned int) _3;
  _5 = _4 * 8;
  _6 = m1 + _5;
  temp_x = *_6;
  loopj:
  j = 0;
  goto <D.3066>;
  <D.3065>:
  _7 = k_row + j;
  _8 = jj + _7;
  _9 = (long unsigned int) _8;
  _10 = _9 * 8;
  _11 = m2 + _10;
  _12 = *_11;
  mul = temp_x * _12;
  _13 = i_row + j;
  _14 = jj + _13;
  _15 = (long unsigned int) _14;
  _16 = _15 * 8;
  _17 = prod + _16;
  _18 = *_17;
  _19 = i_row + j;
  _20 = jj + _19;
  _21 = (long unsigned int) _20;
  _22 = _21 * 8;
  _23 = prod + _22;
  _24 = mul + _18;
  *_23 = _24;
  j = j + 1;
  <D.3066>:
  if (j <= 7) goto <D.3065>; else goto <D.3067>;
  <D.3067>:
  k = k + 1;
  <D.3069>:
  if (k <= 7) goto <D.3068>; else goto <D.3070>;
  <D.3070>:
  i = i + 1;
  <D.3072>:
  if (i <= 63) goto <D.3071>; else goto <D.3073>;
  <D.3073>:
  kk = kk + 8;
  <D.3075>:
  if (kk <= 63) goto <D.3074>; else goto <D.3076>;
  <D.3076>:
  jj = jj + 8;
  <D.3078>:
  if (jj <= 63) goto <D.3077>; else goto <D.3079>;
  <D.3079>:
  global_time.0_25 = global_time;
  *hercules_buffer_size = global_time.0_25;
  return;
}

