#as: -mtune=i386
#source: nops-2.s
#objdump: -drw
#name: i386 nops -mtune=i386 2

.*: +file format .*

Disassembly of section .text:

0+ <nop>:
[	 ]*0:[	 ]+0f 44 c0[	 ]+cmove[ 	]+%eax,%eax
[	 ]*3:[	 ]+8d b6 00 00 00 00[	 ]+lea[ 	]+0x0\(%esi\),%esi
[	 ]*9:[	 ]+8d bc 27 00 00 00 00[	 ]+lea[ 	]+0x0\(%edi,%eiz,1\),%edi

0+10 <nop15>:
[	 ]*10:[	 ]+90[	 ]+nop[ 	]*
[	 ]*11:[	 ]+eb 0d[	 ]+jmp[ 	]+20[ 	]+<nop14>
[	 ]*13:[	 ]+90[	 ]+nop[ 	]*
[	 ]*14:[	 ]+90[	 ]+nop[ 	]*
[	 ]*15:[	 ]+90[	 ]+nop[ 	]*
[	 ]*16:[	 ]+90[	 ]+nop[ 	]*
[	 ]*17:[	 ]+90[	 ]+nop[ 	]*
[	 ]*18:[	 ]+90[	 ]+nop[ 	]*
[	 ]*19:[	 ]+90[	 ]+nop[ 	]*
[	 ]*1a:[	 ]+90[	 ]+nop[ 	]*
[	 ]*1b:[	 ]+90[	 ]+nop[ 	]*
[	 ]*1c:[	 ]+90[	 ]+nop[ 	]*
[	 ]*1d:[	 ]+90[	 ]+nop[ 	]*
[	 ]*1e:[	 ]+90[	 ]+nop[ 	]*
[	 ]*1f:[	 ]+90[	 ]+nop[ 	]*

0+20 <nop14>:
[	 ]*20:[	 ]+90[	 ]+nop[ 	]*
[	 ]*21:[	 ]+90[	 ]+nop[ 	]*
[	 ]*22:[	 ]+8d b4 26 00 00 00 00[	 ]+lea[ 	]+0x0\(%esi,%eiz,1\),%esi
[	 ]*29:[	 ]+8d bc 27 00 00 00 00[	 ]+lea[ 	]+0x0\(%edi,%eiz,1\),%edi

0+30 <nop13>:
[	 ]*30:[	 ]+90[	 ]+nop[ 	]*
[	 ]*31:[	 ]+90[	 ]+nop[ 	]*
[	 ]*32:[	 ]+90[	 ]+nop[ 	]*
[	 ]*33:[	 ]+8d b6 00 00 00 00[	 ]+lea[ 	]+0x0\(%esi\),%esi
[	 ]*39:[	 ]+8d bc 27 00 00 00 00[	 ]+lea[ 	]+0x0\(%edi,%eiz,1\),%edi

0+40 <nop12>:
[	 ]*40:[	 ]+90[	 ]+nop[ 	]*
[	 ]*41:[	 ]+90[	 ]+nop[ 	]*
[	 ]*42:[	 ]+90[	 ]+nop[ 	]*
[	 ]*43:[	 ]+90[	 ]+nop[ 	]*
[	 ]*44:[	 ]+8d b6 00 00 00 00[	 ]+lea[ 	]+0x0\(%esi\),%esi
[	 ]*4a:[	 ]+8d bf 00 00 00 00[	 ]+lea[ 	]+0x0\(%edi\),%edi

0+50 <nop11>:
[	 ]*50:[	 ]+90[	 ]+nop[ 	]*
[	 ]*51:[	 ]+90[	 ]+nop[ 	]*
[	 ]*52:[	 ]+90[	 ]+nop[ 	]*
[	 ]*53:[	 ]+90[	 ]+nop[ 	]*
[	 ]*54:[	 ]+90[	 ]+nop[ 	]*
[	 ]*55:[	 ]+8d 74 26 00[	 ]+lea[ 	]+0x0\(%esi,%eiz,1\),%esi
[	 ]*59:[	 ]+8d bc 27 00 00 00 00[	 ]+lea[ 	]+0x0\(%edi,%eiz,1\),%edi

0+60 <nop10>:
[	 ]*60:[	 ]+90[	 ]+nop[ 	]*
[	 ]*61:[	 ]+90[	 ]+nop[ 	]*
[	 ]*62:[	 ]+90[	 ]+nop[ 	]*
[	 ]*63:[	 ]+90[	 ]+nop[ 	]*
[	 ]*64:[	 ]+90[	 ]+nop[ 	]*
[	 ]*65:[	 ]+90[	 ]+nop[ 	]*
[	 ]*66:[	 ]+8d 76 00[	 ]+lea[ 	]+0x0\(%esi\),%esi
[	 ]*69:[	 ]+8d bc 27 00 00 00 00[	 ]+lea[ 	]+0x0\(%edi,%eiz,1\),%edi

0+70 <nop9>:
[	 ]*70:[	 ]+90[	 ]+nop[ 	]*
[	 ]*71:[	 ]+90[	 ]+nop[ 	]*
[	 ]*72:[	 ]+90[	 ]+nop[ 	]*
[	 ]*73:[	 ]+90[	 ]+nop[ 	]*
[	 ]*74:[	 ]+90[	 ]+nop[ 	]*
[	 ]*75:[	 ]+90[	 ]+nop[ 	]*
[	 ]*76:[	 ]+90[	 ]+nop[ 	]*
[	 ]*77:[	 ]+89 f6[	 ]+mov[ 	]+%esi,%esi
[	 ]*79:[	 ]+8d bc 27 00 00 00 00[	 ]+lea[ 	]+0x0\(%edi,%eiz,1\),%edi

0+80 <nop8>:
[	 ]*80:[	 ]+90[	 ]+nop[ 	]*
[	 ]*81:[	 ]+90[	 ]+nop[ 	]*
[	 ]*82:[	 ]+90[	 ]+nop[ 	]*
[	 ]*83:[	 ]+90[	 ]+nop[ 	]*
[	 ]*84:[	 ]+90[	 ]+nop[ 	]*
[	 ]*85:[	 ]+90[	 ]+nop[ 	]*
[	 ]*86:[	 ]+90[	 ]+nop[ 	]*
[	 ]*87:[	 ]+90[	 ]+nop[ 	]*
[	 ]*88:[	 ]+90[	 ]+nop[ 	]*
[	 ]*89:[	 ]+8d b4 26 00 00 00 00[	 ]+lea[ 	]+0x0\(%esi,%eiz,1\),%esi

0+90 <nop7>:
[	 ]*90:[	 ]+90[	 ]+nop[ 	]*
[	 ]*91:[	 ]+90[	 ]+nop[ 	]*
[	 ]*92:[	 ]+90[	 ]+nop[ 	]*
[	 ]*93:[	 ]+90[	 ]+nop[ 	]*
[	 ]*94:[	 ]+90[	 ]+nop[ 	]*
[	 ]*95:[	 ]+90[	 ]+nop[ 	]*
[	 ]*96:[	 ]+90[	 ]+nop[ 	]*
[	 ]*97:[	 ]+90[	 ]+nop[ 	]*
[	 ]*98:[	 ]+90[	 ]+nop[ 	]*
[	 ]*99:[	 ]+8d b4 26 00 00 00 00[	 ]+lea[ 	]+0x0\(%esi,%eiz,1\),%esi

0+a0 <nop6>:
[	 ]*a0:[	 ]+90[	 ]+nop[ 	]*
[	 ]*a1:[	 ]+90[	 ]+nop[ 	]*
[	 ]*a2:[	 ]+90[	 ]+nop[ 	]*
[	 ]*a3:[	 ]+90[	 ]+nop[ 	]*
[	 ]*a4:[	 ]+90[	 ]+nop[ 	]*
[	 ]*a5:[	 ]+90[	 ]+nop[ 	]*
[	 ]*a6:[	 ]+90[	 ]+nop[ 	]*
[	 ]*a7:[	 ]+90[	 ]+nop[ 	]*
[	 ]*a8:[	 ]+90[	 ]+nop[ 	]*
[	 ]*a9:[	 ]+90[	 ]+nop[ 	]*
[	 ]*aa:[	 ]+8d b6 00 00 00 00[	 ]+lea[ 	]+0x0\(%esi\),%esi

0+b0 <nop5>:
[	 ]*b0:[	 ]+90[	 ]+nop[ 	]*
[	 ]*b1:[	 ]+90[	 ]+nop[ 	]*
[	 ]*b2:[	 ]+90[	 ]+nop[ 	]*
[	 ]*b3:[	 ]+90[	 ]+nop[ 	]*
[	 ]*b4:[	 ]+90[	 ]+nop[ 	]*
[	 ]*b5:[	 ]+90[	 ]+nop[ 	]*
[	 ]*b6:[	 ]+90[	 ]+nop[ 	]*
[	 ]*b7:[	 ]+90[	 ]+nop[ 	]*
[	 ]*b8:[	 ]+90[	 ]+nop[ 	]*
[	 ]*b9:[	 ]+90[	 ]+nop[ 	]*
[	 ]*ba:[	 ]+90[	 ]+nop[ 	]*
[	 ]*bb:[	 ]+90[	 ]+nop[ 	]*
[	 ]*bc:[	 ]+8d 74 26 00[	 ]+lea[ 	]+0x0\(%esi,%eiz,1\),%esi

0+c0 <nop4>:
[	 ]*c0:[	 ]+90[	 ]+nop[ 	]*
[	 ]*c1:[	 ]+90[	 ]+nop[ 	]*
[	 ]*c2:[	 ]+90[	 ]+nop[ 	]*
[	 ]*c3:[	 ]+90[	 ]+nop[ 	]*
[	 ]*c4:[	 ]+90[	 ]+nop[ 	]*
[	 ]*c5:[	 ]+90[	 ]+nop[ 	]*
[	 ]*c6:[	 ]+90[	 ]+nop[ 	]*
[	 ]*c7:[	 ]+90[	 ]+nop[ 	]*
[	 ]*c8:[	 ]+90[	 ]+nop[ 	]*
[	 ]*c9:[	 ]+90[	 ]+nop[ 	]*
[	 ]*ca:[	 ]+90[	 ]+nop[ 	]*
[	 ]*cb:[	 ]+90[	 ]+nop[ 	]*
[	 ]*cc:[	 ]+8d 74 26 00[	 ]+lea[ 	]+0x0\(%esi,%eiz,1\),%esi

0+d0 <nop3>:
[	 ]*d0:[	 ]+90[	 ]+nop[ 	]*
[	 ]*d1:[	 ]+90[	 ]+nop[ 	]*
[	 ]*d2:[	 ]+90[	 ]+nop[ 	]*
[	 ]*d3:[	 ]+90[	 ]+nop[ 	]*
[	 ]*d4:[	 ]+90[	 ]+nop[ 	]*
[	 ]*d5:[	 ]+90[	 ]+nop[ 	]*
[	 ]*d6:[	 ]+90[	 ]+nop[ 	]*
[	 ]*d7:[	 ]+90[	 ]+nop[ 	]*
[	 ]*d8:[	 ]+90[	 ]+nop[ 	]*
[	 ]*d9:[	 ]+90[	 ]+nop[ 	]*
[	 ]*da:[	 ]+90[	 ]+nop[ 	]*
[	 ]*db:[	 ]+90[	 ]+nop[ 	]*
[	 ]*dc:[	 ]+90[	 ]+nop[ 	]*
[	 ]*dd:[	 ]+8d 76 00[	 ]+lea[ 	]+0x0\(%esi\),%esi

0+e0 <nop2>:
[	 ]*e0:[	 ]+90[	 ]+nop[ 	]*
[	 ]*e1:[	 ]+90[	 ]+nop[ 	]*
[	 ]*e2:[	 ]+90[	 ]+nop[ 	]*
[	 ]*e3:[	 ]+90[	 ]+nop[ 	]*
[	 ]*e4:[	 ]+90[	 ]+nop[ 	]*
[	 ]*e5:[	 ]+90[	 ]+nop[ 	]*
[	 ]*e6:[	 ]+90[	 ]+nop[ 	]*
[	 ]*e7:[	 ]+90[	 ]+nop[ 	]*
[	 ]*e8:[	 ]+90[	 ]+nop[ 	]*
[	 ]*e9:[	 ]+90[	 ]+nop[ 	]*
[	 ]*ea:[	 ]+90[	 ]+nop[ 	]*
[	 ]*eb:[	 ]+90[	 ]+nop[ 	]*
[	 ]*ec:[	 ]+90[	 ]+nop[ 	]*
[	 ]*ed:[	 ]+90[	 ]+nop[ 	]*
[	 ]*ee:[	 ]+66 90[ 	]+xchg[ 	]+%ax,%ax
#pass
