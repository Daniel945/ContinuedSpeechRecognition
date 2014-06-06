function dbn = mk_orig_water_dbn
% Converted by Frank Hutter:
%   Provided in Phrog format by Xavier Boyen.
%   Manually converted into BIF.
%   Converted to BNT from BIF by Web-based bif2bnt (2004-01-30T05:28:10)
%   Manually converted into function creating DBN.
%   Manually changed the node numbering s.t. A-B-C-D-E-F-G-H from the BK paper correspond to 1-2-3-4-5-6-7-8

node = struct('C_NI_12_ANT', 1, ...
              'CKNI_12_ANT', 2, ...
              'CBODD_12_ANT', 3, ...
              'CNOD_12_ANT', 4, ...
              'CBODN_12_ANT', 5, ...
              'CNON_12_ANT', 6, ...
              'CKND_12_ANT', 7, ...
              'CKNN_12_ANT', 8, ...
              'C_NI_12_OBS', 9, ...
              'CKNI_12_OBS', 10, ...
              'CBODD_12_OBS', 11, ...
              'CNOD_12_OBS', 12, ...
              'CBODN_12_OBS', 13, ...
              'CNON_12_OBS', 14, ...
              'CKND_12_OBS', 15, ...
              'CKNN_12_OBS', 16, ...
              'C_NI_12_ULT', 17, ...
              'CKNI_12_ULT', 18, ...
              'CBODD_12_ULT', 19, ...
              'CNOD_12_ULT', 20, ...
              'CBODN_12_ULT', 21, ...
              'CNON_12_ULT', 22, ...
              'CKND_12_ULT', 23, ...
              'CKNN_12_ULT', 24);

adjacency = zeros(24);
adjacency([node.C_NI_12_ANT], node.C_NI_12_OBS) = 1;
adjacency([node.CKNI_12_ANT], node.CKNI_12_OBS) = 1;
adjacency([node.CBODD_12_ANT], node.CBODD_12_OBS) = 1;
adjacency([node.CKND_12_ANT], node.CKND_12_OBS) = 1;
adjacency([node.CNOD_12_ANT], node.CNOD_12_OBS) = 1;
adjacency([node.CBODN_12_ANT], node.CBODN_12_OBS) = 1;
adjacency([node.CKNN_12_ANT], node.CKNN_12_OBS) = 1;
adjacency([node.CNON_12_ANT], node.CNON_12_OBS) = 1;
adjacency([node.C_NI_12_ANT], node.C_NI_12_ULT) = 1;
adjacency([node.CKNI_12_ANT], node.CKNI_12_ULT) = 1;
adjacency([node.CBODN_12_ANT node.CNOD_12_ANT node.CBODD_12_ANT node.CKNI_12_ANT node.C_NI_12_ANT], node.CBODD_12_ULT) = 1;
adjacency([node.CKNN_12_ANT node.CKND_12_ANT node.CKNI_12_ANT], node.CKND_12_ULT) = 1;
adjacency([node.CNON_12_ANT node.CNOD_12_ANT node.CBODD_12_ANT], node.CNOD_12_ULT) = 1;
adjacency([node.CNON_12_ANT node.CBODN_12_ANT node.CBODD_12_ANT], node.CBODN_12_ULT) = 1;
adjacency([node.CKNN_12_ANT node.CKND_12_ANT], node.CKNN_12_ULT) = 1;
adjacency([node.CNON_12_ANT node.CKNN_12_ANT node.CBODN_12_ANT node.CNOD_12_ANT], node.CNON_12_ULT) = 1;

ss = 16;
dnodes = 1:ss;
ant = 1:8;
onodes = 9:16;
ult = 17:24;
intra = adjacency(1:ss, 1:ss);
inter_real = adjacency(ant, ult);
inter = zeros(ss);
inter(ant,1:length(ult)) = inter_real;

eclass1 = 1:16;
eclass2 = [17:24 9:16];

value = {{'zz3num'; 'zz4num'; 'zz5num'; 'zz6num'}, ...
         {'zz20mgl'; 'zz30mgl'; 'zz40mgl'}, ...
         {'zz15mgl'; 'zz20mgl'; 'zz25mgl'; 'zz30mgl'}, ...
         {'zz05mgl'; 'zz1mgl'; 'zz2mgl'; 'zz4mgl'}, ...
         {'zz5mgl'; 'zz10mgl'; 'zz15mgl'; 'zz20mgl'}, ...
         {'zz2mgl'; 'zz4mgl'; 'zz6mgl'; 'zz10mgl'}, ...
         {'zz2mgl'; 'zz4mgl'; 'zz6mgl'}, ...
         {'zz05mgl'; 'zz1mgl'; 'zz2mgl'}, ...
         {'zz3num'; 'zz4num'; 'zz5num'; 'zz6num'}, ...
         {'zz20mgl'; 'zz30mgl'; 'zz40mgl'}, ...
         {'zz15mgl'; 'zz20mgl'; 'zz25mgl'; 'zz30mgl'}, ...
         {'zz05mgl'; 'zz1mgl'; 'zz2mgl'; 'zz4mgl'}, ...
         {'zz5mgl'; 'zz10mgl'; 'zz15mgl'; 'zz20mgl'}, ...
         {'zz2mgl'; 'zz4mgl'; 'zz6mgl'; 'zz10mgl'}, ...
         {'zz2mgl'; 'zz4mgl'; 'zz6mgl'}, ...
         {'zz05mgl'; 'zz1mgl'; 'zz2mgl'}, ...
         {'zz3num'; 'zz4num'; 'zz5num'; 'zz6num'}, ...
         {'zz20mgl'; 'zz30mgl'; 'zz40mgl'}, ...
         {'zz15mgl'; 'zz20mgl'; 'zz25mgl'; 'zz30mgl'}, ...
         {'zz05mgl'; 'zz1mgl'; 'zz2mgl'; 'zz4mgl'}, ...
         {'zz5mgl'; 'zz10mgl'; 'zz15mgl'; 'zz20mgl'}, ...
         {'zz2mgl'; 'zz4mgl'; 'zz6mgl'; 'zz10mgl'}, ...
         {'zz2mgl'; 'zz4mgl'; 'zz6mgl'}, ...
         {'zz05mgl'; 'zz1mgl'; 'zz2mgl'}};
          
ns = zeros(1,24);
for i=1:24
    ns(i) = length(value{i});
end

dbn = mk_dbn(intra, inter, ns, 'discrete', dnodes, 'eclass1', eclass1, 'eclass2', eclass2, ...
	      'observed', onodes);

dbn.CPD{node.C_NI_12_ANT} = tabular_CPD(dbn, node.C_NI_12_ANT, 1/ns(1) * ones(1,ns(1)));
dbn.CPD{node.CKNI_12_ANT} = tabular_CPD(dbn, node.CKNI_12_ANT, 1/ns(2) * ones(1,ns(2)));
dbn.CPD{node.CBODD_12_ANT} = tabular_CPD(dbn, node.CBODD_12_ANT, 1/ns(3) * ones(1,ns(3)));
dbn.CPD{node.CNOD_12_ANT} = tabular_CPD(dbn, node.CNOD_12_ANT, 1/ns(4) * ones(1,ns(4)));
dbn.CPD{node.CBODN_12_ANT} = tabular_CPD(dbn, node.CBODN_12_ANT, 1/ns(5) * ones(1,ns(5)));
dbn.CPD{node.CNON_12_ANT} = tabular_CPD(dbn, node.CNON_12_ANT, 1/ns(6) * ones(1,ns(6)));
dbn.CPD{node.CKND_12_ANT} = tabular_CPD(dbn, node.CKND_12_ANT, 1/ns(7) * ones(1,ns(7)));
dbn.CPD{node.CKNN_12_ANT} = tabular_CPD(dbn, node.CKNN_12_ANT, 1/ns(8) * ones(1,ns(8)));
dbn.CPD{node.C_NI_12_OBS} = tabular_CPD(dbn, node.C_NI_12_OBS, [0.7 0.1 0.1 0.1 0.1 0.7 0.1 0.1 0.1 0.1 0.7 0.1 0.1 0.1 0.1 0.7]);
dbn.CPD{node.CKNI_12_OBS} = tabular_CPD(dbn, node.CKNI_12_OBS, [0.8 0.1 0.1 0.1 0.8 0.1 0.1 0.1 0.8]);
dbn.CPD{node.CBODD_12_OBS} = tabular_CPD(dbn, node.CBODD_12_OBS, [0.7 0.1 0.1 0.1 0.1 0.7 0.1 0.1 0.1 0.1 0.7 0.1 0.1 0.1 0.1 0.7]);
dbn.CPD{node.CKND_12_OBS} = tabular_CPD(dbn, node.CKND_12_OBS, [0.8 0.1 0.1 0.1 0.8 0.1 0.1 0.1 0.8]);
dbn.CPD{node.CNOD_12_OBS} = tabular_CPD(dbn, node.CNOD_12_OBS, [0.7 0.1 0.1 0.1 0.1 0.7 0.1 0.1 0.1 0.1 0.7 0.1 0.1 0.1 0.1 0.7]);
dbn.CPD{node.CBODN_12_OBS} = tabular_CPD(dbn, node.CBODN_12_OBS, [0.7 0.1 0.1 0.1 0.1 0.7 0.1 0.1 0.1 0.1 0.7 0.1 0.1 0.1 0.1 0.7]);
dbn.CPD{node.CKNN_12_OBS} = tabular_CPD(dbn, node.CKNN_12_OBS, [0.8 0.1 0.1 0.1 0.8 0.1 0.1 0.1 0.8]);
dbn.CPD{node.CNON_12_OBS} = tabular_CPD(dbn, node.CNON_12_OBS, [0.7 0.1 0.1 0.1 0.1 0.7 0.1 0.1 0.1 0.1 0.7 0.1 0.1 0.1 0.1 0.7]);
dbn.CPD{node.C_NI_12_ULT} = tabular_CPD(dbn, node.C_NI_12_ULT, [0.5 0.2 0.1 0 0.4 0.55 0.3 0.15 0.1 0.2 0.5 0.25 0 0.05 0.1 0.6]);
dbn.CPD{node.CKNI_12_ULT} = tabular_CPD(dbn, node.CKNI_12_ULT, [0.48 0.2 0.04 0.48 0.6 0.48 0.04 0.2 0.48]);
dbn.CPD{node.CBODD_12_ULT} = tabular_CPD(dbn, node.CBODD_12_ULT, [1 1 0.9791 0.9473 0.9949 0.9473 0.8997 0.8521 0.9473 0.8838 0.8203 0.7568 0.0903 0.0585 0.0268 0 0.0426 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0.9951 0.9634 1 0.9634 0.9158 0.8681 0.9634 0.8999 0.8364 0.7729 0.109 0.0773 0.0455 0.0138 0.0614 0.0138 0 0 0.0138 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0.9762 1 0.9762 0.9286 0.881 0.9762 0.9127 0.8493 0.7858 0.124 0.0923 0.0605 0.0288 0.0764 0.0288 0 0 0.0288 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0.9848 1 0.9848 0.9372 0.8896 0.9848 0.9213 0.8578 0.7943 0.134 0.1023 0.0705 0.0388 0.0864 0.0388 0 0 0.0388 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.9791 0.9473 0.9156 0.9632 0.9156 0.8679 0.8203 0.9156 0.8521 0.7886 0.7251 0.0585 0.0268 0 0 0.0109 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.9951 0.9634 0.9316 0.9793 0.9316 0.884 0.8364 0.9316 0.8681 0.8046 0.7412 0.0773 0.0455 0.0138 0 0.0296 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0.9762 0.9445 0.9921 0.9445 0.8969 0.8493 0.9445 0.881 0.8175 0.754 0.0923 0.0605 0.0288 0 0.0446 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0.9848 0.9531 1 0.9531 0.9054 0.8578 0.9531 0.8896 0.8261 0.7626 0.1023 0.0705 0.0388 0.007 0.0546 0.007 0 0 0.007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.9791 0.9473 0.9156 0.8838 0.9314 0.8838 0.8362 0.7886 0.8838 0.8203 0.7568 0.6933 0.0268 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.9951 0.9634 0.9316 0.8999 0.9475 0.8999 0.8523 0.8046 0.8999 0.8364 0.7729 0.7094 0.0455 0.0138 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.9762 0.9445 0.9127 0.9604 0.9127 0.8651 0.8175 0.9127 0.8493 0.7858 0.7223 0.0605 0.0288 0 0 0.0129 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.9848 0.9531 0.9213 0.9689 0.9213 0.8737 0.8261 0.9213 0.8578 0.7943 0.7308 0.0705 0.0388 0.007 0 0.0229 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.9473 0.9156 0.8838 0.8521 0.8997 0.8521 0.8045 0.7568 0.8521 0.7886 0.7251 0.6616 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.9634 0.9316 0.8999 0.8681 0.9158 0.8681 0.8205 0.7729 0.8681 0.8046 0.7412 0.6777 0.0138 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.9762 0.9445 0.9127 0.881 0.9286 0.881 0.8334 0.7858 0.881 0.8175 0.754 0.6905 0.0288 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.9848 0.9531 0.9213 0.8896 0.9372 0.8896 0.842 0.7943 0.8896 0.8261 0.7626 0.6991 0.0388 0.007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0209 0.0527 0.0051 0.0527 0.1003 0.1479 0.0527 0.1162 0.1797 0.2432 0.9097 0.9415 0.9732 0.995 0.9574 0.995 0.9474 0.8998 0.995 0.9315 0.868 0.8045 0.1362 0.1045 0.0727 0.041 0.0886 0.041 0 0 0.041 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0049 0.0366 0 0.0366 0.0842 0.1319 0.0366 0.1001 0.1636 0.2271 0.891 0.9227 0.9545 0.9862 0.9386 0.9862 0.9662 0.9185 0.9862 0.9503 0.8868 0.8233 0.157 0.1253 0.0935 0.0618 0.1094 0.0618 0.0142 0 0.0618 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0238 0 0.0238 0.0714 0.119 0.0238 0.0873 0.1507 0.2142 0.876 0.9077 0.9395 0.9712 0.9236 0.9712 0.9812 0.9335 0.9712 0.9653 0.9018 0.8383 0.1737 0.142 0.1102 0.0785 0.1261 0.0785 0.0308 0 0.0785 0.015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0152 0 0.0152 0.0628 0.1104 0.0152 0.0787 0.1422 0.2057 0.866 0.8977 0.9295 0.9612 0.9136 0.9612 0.9912 0.9435 0.9612 0.9753 0.9118 0.8483 0.1848 0.1531 0.1213 0.0896 0.1372 0.0896 0.042 0 0.0896 0.0261 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0209 0.0527 0.0844 0.0368 0.0844 0.1321 0.1797 0.0844 0.1479 0.2114 0.2749 0.9415 0.9732 0.995 0.9633 0.9891 0.9633 0.9157 0.868 0.9633 0.8998 0.8363 0.7728 0.1045 0.0727 0.041 0.0092 0.0568 0.0092 0 0 0.0092 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0049 0.0366 0.0684 0.0207 0.0684 0.116 0.1636 0.0684 0.1319 0.1954 0.2588 0.9227 0.9545 0.9862 0.982 0.9704 0.982 0.9344 0.8868 0.982 0.9185 0.855 0.7916 0.1253 0.0935 0.0618 0.03 0.0777 0.03 0 0 0.03 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0238 0.0555 0.0079 0.0555 0.1031 0.1507 0.0555 0.119 0.1825 0.246 0.9077 0.9395 0.9712 0.997 0.9554 0.997 0.9494 0.9018 0.997 0.9335 0.87 0.8066 0.142 0.1102 0.0785 0.0467 0.0943 0.0467 0 0 0.0467 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0152 0.0469 0 0.0469 0.0946 0.1422 0.0469 0.1104 0.1739 0.2374 0.8977 0.9295 0.9612 0.993 0.9454 0.993 0.9594 0.9118 0.993 0.9435 0.88 0.8166 0.1531 0.1213 0.0896 0.0578 0.1054 0.0578 0.0102 0 0.0578 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0209 0.0527 0.0844 0.1162 0.0686 0.1162 0.1638 0.2114 0.1162 0.1797 0.2432 0.3067 0.9732 0.995 0.9633 0.9315 0.9792 0.9315 0.8839 0.8363 0.9315 0.868 0.8045 0.7411 0.0727 0.041 0.0092 0 0.0251 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0049 0.0366 0.0684 0.1001 0.0525 0.1001 0.1477 0.1954 0.1001 0.1636 0.2271 0.2906 0.9545 0.9862 0.982 0.9503 0.9979 0.9503 0.9027 0.855 0.9503 0.8868 0.8233 0.7598 0.0935 0.0618 0.03 0 0.0459 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0238 0.0555 0.0873 0.0396 0.0873 0.1349 0.1825 0.0873 0.1507 0.2142 0.2777 0.9395 0.9712 0.997 0.9653 0.9871 0.9653 0.9177 0.87 0.9653 0.9018 0.8383 0.7748 0.1102 0.0785 0.0467 0.015 0.0626 0.015 0 0 0.015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0152 0.0469 0.0787 0.0311 0.0787 0.1263 0.1739 0.0787 0.1422 0.2057 0.2692 0.9295 0.9612 0.993 0.9753 0.9771 0.9753 0.9277 0.88 0.9753 0.9118 0.8483 0.7848 0.1213 0.0896 0.0578 0.0261 0.0737 0.0261 0 0 0.0261 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0527 0.0844 0.1162 0.1479 0.1003 0.1479 0.1955 0.2432 0.1479 0.2114 0.2749 0.3384 0.995 0.9633 0.9315 0.8998 0.9474 0.8998 0.8522 0.8045 0.8998 0.8363 0.7728 0.7093 0.041 0.0092 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0366 0.0684 0.1001 0.1319 0.0842 0.1319 0.1795 0.2271 0.1319 0.1954 0.2588 0.3223 0.9862 0.982 0.9503 0.9185 0.9662 0.9185 0.8709 0.8233 0.9185 0.855 0.7916 0.7281 0.0618 0.03 0 0 0.0142 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0238 0.0555 0.0873 0.119 0.0714 0.119 0.1666 0.2142 0.119 0.1825 0.246 0.3095 0.9712 0.997 0.9653 0.9335 0.9812 0.9335 0.8859 0.8383 0.9335 0.87 0.8066 0.7431 0.0785 0.0467 0.015 0 0.0308 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0152 0.0469 0.0787 0.1104 0.0628 0.1104 0.158 0.2057 0.1104 0.1739 0.2374 0.3009 0.9612 0.993 0.9753 0.9435 0.9912 0.9435 0.8959 0.8483 0.9435 0.88 0.8166 0.7531 0.0896 0.0578 0.0261 0 0.042 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.005 0 0.005 0.0526 0.1002 0.005 0.0685 0.132 0.1955 0.8638 0.8955 0.9273 0.959 0.9114 0.959 0.9933 0.9457 0.959 0.9775 0.914 0.8505 0.1809 0.1491 0.1174 0.0856 0.1333 0.0856 0.038 0 0.0856 0.0221 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0338 0.0815 0 0.0497 0.1132 0.1767 0.843 0.8747 0.9065 0.9382 0.8906 0.9382 0.9858 0.9666 0.9382 0.9983 0.9348 0.8713 0.2034 0.1716 0.1399 0.1081 0.1558 0.1081 0.0605 0.0129 0.1081 0.0446 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0188 0.0665 0 0.0347 0.0982 0.1617 0.8263 0.858 0.8898 0.9215 0.8739 0.9215 0.9692 0.9832 0.9215 0.985 0.9515 0.888 0.2214 0.1896 0.1579 0.1261 0.1738 0.1261 0.0785 0.0309 0.1261 0.0626 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0088 0.0565 0 0.0247 0.0882 0.1517 0.8152 0.8469 0.8787 0.9104 0.8628 0.9104 0.958 0.9943 0.9104 0.9739 0.9626 0.8991 0.2334 0.2016 0.1699 0.1381 0.1858 0.1381 0.0905 0.0429 0.1381 0.0746 0.0112 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.005 0.0367 0 0.0367 0.0843 0.132 0.0367 0.1002 0.1637 0.2272 0.8955 0.9273 0.959 0.9908 0.9432 0.9908 0.9616 0.914 0.9908 0.9457 0.8822 0.8187 0.1491 0.1174 0.0856 0.0539 0.1015 0.0539 0.0063 0 0.0539 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.018 0 0.018 0.0656 0.1132 0.018 0.0815 0.145 0.2084 0.8747 0.9065 0.9382 0.97 0.9223 0.97 0.9824 0.9348 0.97 0.9666 0.9031 0.8396 0.1716 0.1399 0.1081 0.0764 0.124 0.0764 0.0288 0 0.0764 0.0129 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.003 0 0.003 0.0506 0.0982 0.003 0.0665 0.13 0.1934 0.858 0.8898 0.9215 0.9533 0.9057 0.9533 0.9991 0.9515 0.9533 0.9832 0.9197 0.8562 0.1896 0.1579 0.1261 0.0944 0.142 0.0944 0.0468 0 0.0944 0.0309 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0406 0.0882 0 0.0565 0.12 0.1834 0.8469 0.8787 0.9104 0.9422 0.8946 0.9422 0.9898 0.9626 0.9422 0.9943 0.9308 0.8673 0.2016 0.1699 0.1381 0.1064 0.154 0.1064 0.0588 0.0112 0.1064 0.0429 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.005 0.0367 0.0685 0.0208 0.0685 0.1161 0.1637 0.0685 0.132 0.1955 0.2589 0.9273 0.959 0.9908 0.9775 0.9749 0.9775 0.9298 0.8822 0.9775 0.914 0.8505 0.787 0.1174 0.0856 0.0539 0.0221 0.0698 0.0221 0 0 0.0221 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.018 0.0497 0.0021 0.0497 0.0973 0.145 0.0497 0.1132 0.1767 0.2402 0.9065 0.9382 0.97 0.9983 0.9541 0.9983 0.9507 0.9031 0.9983 0.9348 0.8713 0.8078 0.1399 0.1081 0.0764 0.0446 0.0923 0.0446 0 0 0.0446 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.003 0.0347 0 0.0347 0.0823 0.13 0.0347 0.0982 0.1617 0.2252 0.8898 0.9215 0.9533 0.985 0.9374 0.985 0.9673 0.9197 0.985 0.9515 0.888 0.8245 0.1579 0.1261 0.0944 0.0626 0.1103 0.0626 0.015 0 0.0626 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0247 0 0.0247 0.0723 0.12 0.0247 0.0882 0.1517 0.2152 0.8787 0.9104 0.9422 0.9739 0.9263 0.9739 0.9785 0.9308 0.9739 0.9626 0.8991 0.8356 0.1699 0.1381 0.1064 0.0746 0.1223 0.0746 0.027 0 0.0746 0.0112 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.005 0.0367 0.0685 0.1002 0.0526 0.1002 0.1478 0.1955 0.1002 0.1637 0.2272 0.2907 0.959 0.9908 0.9775 0.9457 0.9933 0.9457 0.8981 0.8505 0.9457 0.8822 0.8187 0.7552 0.0856 0.0539 0.0221 0 0.038 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.018 0.0497 0.0815 0.0338 0.0815 0.1291 0.1767 0.0815 0.145 0.2084 0.2719 0.9382 0.97 0.9983 0.9666 0.9858 0.9666 0.9189 0.8713 0.9666 0.9031 0.8396 0.7761 0.1081 0.0764 0.0446 0.0129 0.0605 0.0129 0 0 0.0129 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.003 0.0347 0.0665 0.0188 0.0665 0.1141 0.1617 0.0665 0.13 0.1934 0.2569 0.9215 0.9533 0.985 0.9832 0.9692 0.9832 0.9356 0.888 0.9832 0.9197 0.8562 0.7927 0.1261 0.0944 0.0626 0.0309 0.0785 0.0309 0 0 0.0309 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0247 0.0565 0.0088 0.0565 0.1041 0.1517 0.0565 0.12 0.1834 0.2469 0.9104 0.9422 0.9739 0.9943 0.958 0.9943 0.9467 0.8991 0.9943 0.9308 0.8673 0.8039 0.1381 0.1064 0.0746 0.0429 0.0905 0.0429 0 0 0.0429 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0067 0.0543 0 0.0225 0.086 0.1495 0.8191 0.8509 0.8826 0.9144 0.8667 0.9144 0.962 1 0.9144 0.9779 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0334 0 0.0017 0.0652 0.1287 0.7966 0.8284 0.8601 0.8919 0.8442 0.8919 0.9395 0.9871 0.8919 0.9554 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0168 0 0 0.0485 0.112 0.7786 0.8104 0.8421 0.8739 0.8262 0.8739 0.9215 0.9691 0.8739 0.9374 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0057 0 0 0.0374 0.1009 0.7666 0.7984 0.8301 0.8619 0.8142 0.8619 0.9095 0.9571 0.8619 0.9254 0.9888 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0384 0.086 0 0.0543 0.1178 0.1813 0.8509 0.8826 0.9144 0.9461 0.8985 0.9461 0.9937 1 0.9461 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0176 0.0652 0 0.0334 0.0969 0.1604 0.8284 0.8601 0.8919 0.9236 0.876 0.9236 0.9712 1 0.9236 0.9871 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0009 0.0485 0 0.0168 0.0803 0.1438 0.8104 0.8421 0.8739 0.9056 0.858 0.9056 0.9532 1 0.9056 0.9691 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0374 0 0.0057 0.0692 0.1327 0.7984 0.8301 0.8619 0.8936 0.846 0.8936 0.9412 0.9888 0.8936 0.9571 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0225 0 0.0225 0.0702 0.1178 0.0225 0.086 0.1495 0.213 0.8826 0.9144 0.9461 0.9779 0.9302 0.9779 1 1 0.9779 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0017 0 0.0017 0.0493 0.0969 0.0017 0.0652 0.1287 0.1922 0.8601 0.8919 0.9236 0.9554 0.9077 0.9554 1 1 0.9554 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0327 0.0803 0 0.0485 0.112 0.1755 0.8421 0.8739 0.9056 0.9374 0.8897 0.9374 0.985 1 0.9374 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0215 0.0692 0 0.0374 0.1009 0.1644 0.8301 0.8619 0.8936 0.9254 0.8777 0.9254 0.973 1 0.9254 0.9888 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0225 0.0543 0.0067 0.0543 0.1019 0.1495 0.0543 0.1178 0.1813 0.2448 0.9144 0.9461 0.9779 1 0.962 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0017 0.0334 0 0.0334 0.0811 0.1287 0.0334 0.0969 0.1604 0.2239 0.8919 0.9236 0.9554 0.9871 0.9395 0.9871 1 1 0.9871 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0168 0 0.0168 0.0644 0.112 0.0168 0.0803 0.1438 0.2073 0.8739 0.9056 0.9374 0.9691 0.9215 0.9691 1 1 0.9691 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0057 0 0.0057 0.0533 0.1009 0.0057 0.0692 0.1327 0.1961 0.8619 0.8936 0.9254 0.9571 0.9095 0.9571 1 1 0.9571 1 1 1]);
dbn.CPD{node.CKND_12_ULT} = tabular_CPD(dbn, node.CKND_12_ULT, [0.9524 0.9127 0.873 0 0 0 0 0 0 0.9444 0.9048 0.8651 0 0 0 0 0 0 0.9286 0.8889 0.8492 0 0 0 0 0 0 0.0476 0.0873 0.127 0.9921 0.9524 0.9127 0.0317 0 0 0.0556 0.0952 0.1349 0.9841 0.9444 0.9048 0.0238 0 0 0.0714 0.1111 0.1508 0.9683 0.9286 0.8889 0.0079 0 0 0 0 0 0.0079 0.0476 0.0873 0.9683 1 1 0 0 0 0.0159 0.0556 0.0952 0.9762 1 1 0 0 0 0.0317 0.0714 0.1111 0.9921 1 1]);
dbn.CPD{node.CNOD_12_ULT} = tabular_CPD(dbn, node.CNOD_12_ULT, [1 1 1 1 0.3675 0.4905 0.5862 0.6627 0 0 0 0 0 0 0 0 1 1 1 1 0.2405 0.3635 0.4592 0.5358 0 0 0 0 0 0 0 0 0.8893 0.9816 1 1 0.1135 0.2366 0.3322 0.4088 0 0 0 0 0 0 0 0 0.6354 0.7276 0.7994 0.8568 0 0 0.0783 0.1548 0 0 0 0 0 0 0 0 0 0 0 0 0.6325 0.5095 0.4138 0.3373 0.2972 0.3711 0.4285 0.4744 0 0 0 0 0 0 0 0 0.7595 0.6365 0.5408 0.4642 0.2338 0.3076 0.365 0.4109 0 0 0 0 0.1107 0.0184 0 0 0.8865 0.7634 0.6678 0.5912 0.1703 0.2441 0.3015 0.3474 0 0 0 0 0.3646 0.2724 0.2006 0.1432 0.9298 0.9913 0.9217 0.8452 0.0433 0.1171 0.1745 0.2204 0 0 0 0 0 0 0 0 0 0 0 0 0.7028 0.6289 0.5715 0.5256 0.2129 0.2539 0.2858 0.3113 0 0 0 0 0 0 0 0 0.7662 0.6924 0.635 0.5891 0.1812 0.2222 0.2541 0.2796 0 0 0 0 0 0 0 0 0.8297 0.7559 0.6985 0.6526 0.1494 0.1904 0.2223 0.2478 0 0 0 0 0.0702 0.0087 0 0 0.9567 0.8829 0.8255 0.7796 0.0859 0.1269 0.1588 0.1843 0 0 0 0 0 0 0 0 0 0 0 0 0.7871 0.7461 0.7142 0.6887 0 0 0 0 0 0 0 0 0 0 0 0 0.8188 0.7778 0.7459 0.7204 0 0 0 0 0 0 0 0 0 0 0 0 0.8506 0.8096 0.7777 0.7522 0 0 0 0 0 0 0 0 0 0 0 0 0.9141 0.8731 0.8412 0.8157]);
dbn.CPD{node.CBODN_12_ULT} = tabular_CPD(dbn, node.CBODN_12_ULT, [0.9557 0.9067 0.8577 0.8087 0.0406 0 0 0 0 0 0 0 0 0 0 0 0.9561 0.9071 0.8581 0.809 0.0412 0 0 0 0 0 0 0 0 0 0 0 0.9562 0.9072 0.8582 0.8092 0.0414 0 0 0 0 0 0 0 0 0 0 0 0.9564 0.9073 0.8583 0.8093 0.0416 0 0 0 0 0 0 0 0 0 0 0 0.0443 0.0933 0.1423 0.1913 0.9594 0.9916 0.9426 0.8936 0.1152 0.0662 0.0172 0 0 0 0 0 0.0439 0.0929 0.1419 0.191 0.9588 0.9922 0.9432 0.8942 0.116 0.067 0.018 0 0 0 0 0 0.0438 0.0928 0.1418 0.1908 0.9586 0.9924 0.9434 0.8944 0.1163 0.0673 0.0183 0 0 0 0 0 0.0436 0.0927 0.1417 0.1907 0.9584 0.9926 0.9436 0.8946 0.1166 0.0676 0.0185 0 0 0 0 0 0 0 0 0 0 0.0084 0.0574 0.1064 0.8848 0.9338 0.9828 0.9682 0.1835 0.1344 0.0854 0.0364 0 0 0 0 0 0.0078 0.0568 0.1058 0.884 0.933 0.982 0.969 0.1844 0.1354 0.0863 0.0373 0 0 0 0 0 0.0076 0.0566 0.1056 0.8837 0.9327 0.9817 0.9693 0.1847 0.1357 0.0867 0.0377 0 0 0 0 0 0.0074 0.0564 0.1054 0.8834 0.9324 0.9815 0.9695 0.185 0.136 0.087 0.038 0 0 0 0 0 0 0 0 0 0 0 0.0318 0.8165 0.8656 0.9146 0.9636 0 0 0 0 0 0 0 0 0 0 0 0.031 0.8156 0.8646 0.9137 0.9627 0 0 0 0 0 0 0 0 0 0 0 0.0307 0.8153 0.8643 0.9133 0.9623 0 0 0 0 0 0 0 0 0 0 0 0.0305 0.815 0.864 0.913 0.962]);
dbn.CPD{node.CKNN_12_ULT} = tabular_CPD(dbn, node.CKNN_12_ULT, [1 1 0.8234 0.4459 0.2499 0.0538 0 0 0 0 0 0.1766 0.5541 0.7501 0.9462 0.3627 0.2646 0.1666 0 0 0 0 0 0 0.6373 0.7354 0.8334]);
dbn.CPD{node.CNON_12_ULT} = tabular_CPD(dbn, node.CNON_12_ULT, [0.9555 0.9432 0.9187 0.8697 0.9618 0.9495 0.925 0.876 0.9662 0.954 0.9295 0.8804 0.9696 0.9573 0.9328 0.8838 0.9102 0.8979 0.8734 0.8244 0.9164 0.9042 0.8797 0.8306 0.9209 0.9086 0.8841 0.8351 0.9243 0.912 0.8875 0.8385 0.8648 0.8526 0.8281 0.779 0.8711 0.8588 0.8343 0.7853 0.8756 0.8633 0.8388 0.7898 0.8789 0.8667 0.8422 0.7931 0.0056 0 0 0 0.0125 0.0003 0 0 0.0175 0.0052 0 0 0.0212 0.009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0445 0.0568 0.0813 0.1303 0.0382 0.0505 0.075 0.124 0.0338 0.046 0.0705 0.1196 0.0304 0.0427 0.0672 0.1162 0.0898 0.1021 0.1266 0.1756 0.0836 0.0958 0.1203 0.1694 0.0791 0.0914 0.1159 0.1649 0.0757 0.088 0.1125 0.1615 0.1352 0.1474 0.1719 0.221 0.1289 0.1412 0.1657 0.2147 0.1244 0.1367 0.1612 0.2102 0.1211 0.1333 0.1578 0.2069 0.9944 0.9933 0.9688 0.9198 0.9875 0.9997 0.9758 0.9267 0.9825 0.9948 0.9807 0.9317 0.9788 0.991 0.9845 0.9354 0.9602 0.948 0.9235 0.8744 0.9672 0.9549 0.9304 0.8814 0.9722 0.9599 0.9354 0.8864 0.9759 0.9636 0.9391 0.8901 0.9149 0.9026 0.8781 0.8291 0.9219 0.9096 0.8851 0.8361 0.9268 0.9146 0.8901 0.841 0.9306 0.9183 0.8938 0.8448 0.055 0.0427 0.0182 0 0.0622 0.05 0.0254 0 0.0674 0.0551 0.0306 0 0.0712 0.059 0.0345 0 0.0096 0 0 0 0.0169 0.0046 0 0 0.022 0.0098 0 0 0.0259 0.0137 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0067 0.0312 0.0802 0 0 0.0242 0.0733 0 0 0.0193 0.0683 0 0 0.0155 0.0646 0.0398 0.052 0.0765 0.1256 0.0328 0.0451 0.0696 0.1186 0.0278 0.0401 0.0646 0.1136 0.0241 0.0364 0.0609 0.1099 0.0851 0.0974 0.1219 0.1709 0.0781 0.0904 0.1149 0.1639 0.0732 0.0854 0.1099 0.159 0.0694 0.0817 0.1062 0.1552 0.945 0.9573 0.9818 0.9846 0.9378 0.95 0.9746 0.9882 0.9326 0.9449 0.9694 0.9908 0.9288 0.941 0.9655 0.9927 0.9904 0.9987 0.9864 0.9619 0.9831 0.9954 0.9901 0.9655 0.978 0.9902 0.9926 0.9681 0.9741 0.9863 0.9946 0.9701 0.9822 0.976 0.9638 0.9393 0.9858 0.9796 0.9674 0.9429 0.9884 0.9822 0.97 0.9455 0.9903 0.9842 0.9719 0.9474 0.0767 0.0706 0.0583 0.0338 0.0804 0.0743 0.062 0.0375 0.0831 0.0769 0.0647 0.0402 0.0851 0.0789 0.0667 0.0422 0.054 0.0479 0.0356 0.0111 0.0577 0.0516 0.0394 0.0149 0.0604 0.0543 0.042 0.0175 0.0624 0.0563 0.044 0.0195 0.0313 0.0252 0.013 0 0.0351 0.0289 0.0167 0 0.0377 0.0316 0.0194 0 0.0397 0.0336 0.0214 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0154 0 0 0 0.0118 0 0 0 0.0092 0 0 0 0.0073 0 0.0013 0.0136 0.0381 0 0 0.0099 0.0345 0 0 0.0074 0.0319 0 0 0.0054 0.0299 0.0178 0.024 0.0362 0.0607 0.0142 0.0204 0.0326 0.0571 0.0116 0.0178 0.03 0.0545 0.0097 0.0158 0.0281 0.0526 0.9233 0.9294 0.9417 0.9662 0.9196 0.9257 0.938 0.9625 0.9169 0.9231 0.9353 0.9598 0.9149 0.9211 0.9333 0.9578 0.946 0.9521 0.9644 0.9889 0.9423 0.9484 0.9606 0.9851 0.9396 0.9457 0.958 0.9825 0.9376 0.9437 0.956 0.9805 0.9687 0.9748 0.987 1 0.9649 0.9711 0.9833 1 0.9623 0.9684 0.9806 1 0.9603 0.9664 0.9786 1]);