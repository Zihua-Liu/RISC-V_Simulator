
dry2reg：     文件格式 elf64-littleriscv


Disassembly of section .text:

0000000000010000 <_ftext>:
   10000:	00015197          	auipc	gp,0x15
   10004:	c2018193          	addi	gp,gp,-992 # 24c20 <_gp>
   10008:	00014297          	auipc	t0,0x14
   1000c:	51828293          	addi	t0,t0,1304 # 24520 <__malloc_max_total_mem>
   10010:	00017317          	auipc	t1,0x17
   10014:	de830313          	addi	t1,t1,-536 # 26df8 <_end>
   10018:	0002b023          	sd	zero,0(t0)
   1001c:	00828293          	addi	t0,t0,8
   10020:	fe62ece3          	bltu	t0,t1,10018 <_ftext+0x18>
   10024:	00001517          	auipc	a0,0x1
   10028:	c2c50513          	addi	a0,a0,-980 # 10c50 <__libc_fini_array>
   1002c:	3e1000ef          	jal	10c0c <atexit>
   10030:	47d000ef          	jal	10cac <__libc_init_array>
   10034:	00012503          	lw	a0,0(sp)
   10038:	00810593          	addi	a1,sp,8
   1003c:	00000613          	li	a2,0
   10040:	2e0000ef          	jal	10320 <main>
   10044:	3dd0006f          	j	10c20 <exit>

0000000000010048 <_fini>:
   10048:	00008067          	ret

000000000001004c <deregister_tm_clones>:
   1004c:	00024537          	lui	a0,0x24
   10050:	000247b7          	lui	a5,0x24
   10054:	41850713          	addi	a4,a0,1048 # 24418 <__TMC_END__>
   10058:	41f78793          	addi	a5,a5,1055 # 2441f <__TMC_END__+0x7>
   1005c:	40e787b3          	sub	a5,a5,a4
   10060:	00e00713          	li	a4,14
   10064:	00f77c63          	bleu	a5,a4,1007c <deregister_tm_clones+0x30>
   10068:	00000337          	lui	t1,0x0
   1006c:	00030313          	mv	t1,t1
   10070:	00030663          	beqz	t1,1007c <deregister_tm_clones+0x30>
   10074:	41850513          	addi	a0,a0,1048
   10078:	00030067          	jr	t1
   1007c:	00008067          	ret

0000000000010080 <register_tm_clones>:
   10080:	00024537          	lui	a0,0x24
   10084:	000247b7          	lui	a5,0x24
   10088:	41850593          	addi	a1,a0,1048 # 24418 <__TMC_END__>
   1008c:	41878793          	addi	a5,a5,1048 # 24418 <__TMC_END__>
   10090:	40b787b3          	sub	a5,a5,a1
   10094:	4037d793          	srai	a5,a5,0x3
   10098:	03f7d593          	srli	a1,a5,0x3f
   1009c:	00f585b3          	add	a1,a1,a5
   100a0:	4015d593          	srai	a1,a1,0x1
   100a4:	00058c63          	beqz	a1,100bc <register_tm_clones+0x3c>
   100a8:	00000337          	lui	t1,0x0
   100ac:	00030313          	mv	t1,t1
   100b0:	00030663          	beqz	t1,100bc <register_tm_clones+0x3c>
   100b4:	41850513          	addi	a0,a0,1048
   100b8:	00030067          	jr	t1
   100bc:	00008067          	ret

00000000000100c0 <__do_global_dtors_aux>:
   100c0:	ff010113          	addi	sp,sp,-16
   100c4:	00813023          	sd	s0,0(sp)
   100c8:	9301c783          	lbu	a5,-1744(gp) # 24550 <_bss_start>
   100cc:	00113423          	sd	ra,8(sp)
   100d0:	02079663          	bnez	a5,100fc <__do_global_dtors_aux+0x3c>
   100d4:	f79ff0ef          	jal	1004c <deregister_tm_clones>
   100d8:	000007b7          	lui	a5,0x0
   100dc:	00078793          	mv	a5,a5
   100e0:	00078a63          	beqz	a5,100f4 <__do_global_dtors_aux+0x34>
   100e4:	00022537          	lui	a0,0x22
   100e8:	d9050513          	addi	a0,a0,-624 # 21d90 <__fini_array_end>
   100ec:	ffff0317          	auipc	t1,0xffff0
   100f0:	f14300e7          	jalr	t1,-236 # 0 <_ftext-0x10000>
   100f4:	00100793          	li	a5,1
   100f8:	92f18823          	sb	a5,-1744(gp) # 24550 <_bss_start>
   100fc:	00813083          	ld	ra,8(sp)
   10100:	00013403          	ld	s0,0(sp)
   10104:	01010113          	addi	sp,sp,16
   10108:	00008067          	ret

000000000001010c <frame_dummy>:
   1010c:	ff010113          	addi	sp,sp,-16
   10110:	000007b7          	lui	a5,0x0
   10114:	00113423          	sd	ra,8(sp)
   10118:	00078793          	mv	a5,a5
   1011c:	00078c63          	beqz	a5,10134 <frame_dummy+0x28>
   10120:	00022537          	lui	a0,0x22
   10124:	93818593          	addi	a1,gp,-1736 # 24558 <object.3092>
   10128:	d9050513          	addi	a0,a0,-624 # 21d90 <__fini_array_end>
   1012c:	ffff0317          	auipc	t1,0xffff0
   10130:	ed4300e7          	jalr	t1,-300 # 0 <_ftext-0x10000>
   10134:	000237b7          	lui	a5,0x23
   10138:	41878513          	addi	a0,a5,1048 # 23418 <__JCR_END__>
   1013c:	00053783          	ld	a5,0(a0)
   10140:	00079863          	bnez	a5,10150 <frame_dummy+0x44>
   10144:	00813083          	ld	ra,8(sp)
   10148:	01010113          	addi	sp,sp,16
   1014c:	f35ff06f          	j	10080 <register_tm_clones>
   10150:	000007b7          	lui	a5,0x0
   10154:	00078793          	mv	a5,a5
   10158:	fe0786e3          	beqz	a5,10144 <frame_dummy+0x38>
   1015c:	000780e7          	jalr	a5
   10160:	fe5ff06f          	j	10144 <frame_dummy+0x38>

0000000000010164 <Proc_2>:
   10164:	000277b7          	lui	a5,0x27
   10168:	cfc7c703          	lbu	a4,-772(a5) # 26cfc <Ch_1_Glob>
   1016c:	04100793          	li	a5,65
   10170:	00f71e63          	bne	a4,a5,1018c <Proc_2+0x28>
   10174:	00052783          	lw	a5,0(a0)
   10178:	0097879b          	addiw	a5,a5,9
   1017c:	00027737          	lui	a4,0x27
   10180:	cf872703          	lw	a4,-776(a4) # 26cf8 <Int_Glob>
   10184:	40e787bb          	subw	a5,a5,a4
   10188:	00f52023          	sw	a5,0(a0)
   1018c:	00008067          	ret

0000000000010190 <Proc_3>:
   10190:	ff010113          	addi	sp,sp,-16
   10194:	00113423          	sd	ra,8(sp)
   10198:	000277b7          	lui	a5,0x27
   1019c:	d007b783          	ld	a5,-768(a5) # 26d00 <Ptr_Glob>
   101a0:	00078663          	beqz	a5,101ac <Proc_3+0x1c>
   101a4:	0007b783          	ld	a5,0(a5)
   101a8:	00f53023          	sd	a5,0(a0)
   101ac:	000277b7          	lui	a5,0x27
   101b0:	d007b603          	ld	a2,-768(a5) # 26d00 <Ptr_Glob>
   101b4:	01060613          	addi	a2,a2,16
   101b8:	000277b7          	lui	a5,0x27
   101bc:	cf87a583          	lw	a1,-776(a5) # 26cf8 <Int_Glob>
   101c0:	00a00513          	li	a0,10
   101c4:	105000ef          	jal	10ac8 <Proc_7>
   101c8:	00813083          	ld	ra,8(sp)
   101cc:	01010113          	addi	sp,sp,16
   101d0:	00008067          	ret

00000000000101d4 <Proc_1>:
   101d4:	fe010113          	addi	sp,sp,-32
   101d8:	00113c23          	sd	ra,24(sp)
   101dc:	00813823          	sd	s0,16(sp)
   101e0:	00913423          	sd	s1,8(sp)
   101e4:	00050493          	mv	s1,a0
   101e8:	00053403          	ld	s0,0(a0)
   101ec:	000277b7          	lui	a5,0x27
   101f0:	d007b783          	ld	a5,-768(a5) # 26d00 <Ptr_Glob>
   101f4:	0007b703          	ld	a4,0(a5)
   101f8:	00e43023          	sd	a4,0(s0)
   101fc:	0087b703          	ld	a4,8(a5)
   10200:	00e43423          	sd	a4,8(s0)
   10204:	0107b703          	ld	a4,16(a5)
   10208:	00e43823          	sd	a4,16(s0)
   1020c:	0187b703          	ld	a4,24(a5)
   10210:	00e43c23          	sd	a4,24(s0)
   10214:	0207b703          	ld	a4,32(a5)
   10218:	02e43023          	sd	a4,32(s0)
   1021c:	0287b703          	ld	a4,40(a5)
   10220:	02e43423          	sd	a4,40(s0)
   10224:	0307b783          	ld	a5,48(a5)
   10228:	02f43823          	sd	a5,48(s0)
   1022c:	00500793          	li	a5,5
   10230:	00f52823          	sw	a5,16(a0)
   10234:	00f42823          	sw	a5,16(s0)
   10238:	00053783          	ld	a5,0(a0)
   1023c:	00f43023          	sd	a5,0(s0)
   10240:	00040513          	mv	a0,s0
   10244:	f4dff0ef          	jal	10190 <Proc_3>
   10248:	00842783          	lw	a5,8(s0)
   1024c:	02079e63          	bnez	a5,10288 <Proc_1+0xb4>
   10250:	00600793          	li	a5,6
   10254:	00f42823          	sw	a5,16(s0)
   10258:	00c40593          	addi	a1,s0,12
   1025c:	00c4a503          	lw	a0,12(s1)
   10260:	7f4000ef          	jal	10a54 <Proc_6>
   10264:	000277b7          	lui	a5,0x27
   10268:	d007b783          	ld	a5,-768(a5) # 26d00 <Ptr_Glob>
   1026c:	0007b783          	ld	a5,0(a5)
   10270:	00f43023          	sd	a5,0(s0)
   10274:	01040613          	addi	a2,s0,16
   10278:	00a00593          	li	a1,10
   1027c:	01042503          	lw	a0,16(s0)
   10280:	049000ef          	jal	10ac8 <Proc_7>
   10284:	0400006f          	j	102c4 <Proc_1+0xf0>
   10288:	0004b783          	ld	a5,0(s1)
   1028c:	0007b703          	ld	a4,0(a5)
   10290:	00e4b023          	sd	a4,0(s1)
   10294:	0087b703          	ld	a4,8(a5)
   10298:	00e4b423          	sd	a4,8(s1)
   1029c:	0107b703          	ld	a4,16(a5)
   102a0:	00e4b823          	sd	a4,16(s1)
   102a4:	0187b703          	ld	a4,24(a5)
   102a8:	00e4bc23          	sd	a4,24(s1)
   102ac:	0207b703          	ld	a4,32(a5)
   102b0:	02e4b023          	sd	a4,32(s1)
   102b4:	0287b703          	ld	a4,40(a5)
   102b8:	02e4b423          	sd	a4,40(s1)
   102bc:	0307b783          	ld	a5,48(a5)
   102c0:	02f4b823          	sd	a5,48(s1)
   102c4:	01813083          	ld	ra,24(sp)
   102c8:	01013403          	ld	s0,16(sp)
   102cc:	00813483          	ld	s1,8(sp)
   102d0:	02010113          	addi	sp,sp,32
   102d4:	00008067          	ret

00000000000102d8 <Proc_4>:
   102d8:	000276b7          	lui	a3,0x27
   102dc:	000277b7          	lui	a5,0x27
   102e0:	cfc7c783          	lbu	a5,-772(a5) # 26cfc <Ch_1_Glob>
   102e4:	fbf7879b          	addiw	a5,a5,-65
   102e8:	0017b793          	seqz	a5,a5
   102ec:	dd06a703          	lw	a4,-560(a3) # 26dd0 <Bool_Glob>
   102f0:	00e7e7b3          	or	a5,a5,a4
   102f4:	dcf6a823          	sw	a5,-560(a3)
   102f8:	04200713          	li	a4,66
   102fc:	000277b7          	lui	a5,0x27
   10300:	cee78ea3          	sb	a4,-771(a5) # 26cfd <Ch_2_Glob>
   10304:	00008067          	ret

0000000000010308 <Proc_5>:
   10308:	04100713          	li	a4,65
   1030c:	000277b7          	lui	a5,0x27
   10310:	cee78e23          	sb	a4,-772(a5) # 26cfc <Ch_1_Glob>
   10314:	000277b7          	lui	a5,0x27
   10318:	dc07a823          	sw	zero,-560(a5) # 26dd0 <Bool_Glob>
   1031c:	00008067          	ret

0000000000010320 <main>:
   10320:	f3010113          	addi	sp,sp,-208
   10324:	0c113423          	sd	ra,200(sp)
   10328:	0c813023          	sd	s0,192(sp)
   1032c:	0a913c23          	sd	s1,184(sp)
   10330:	0b213823          	sd	s2,176(sp)
   10334:	0b313423          	sd	s3,168(sp)
   10338:	0b413023          	sd	s4,160(sp)
   1033c:	09513c23          	sd	s5,152(sp)
   10340:	09613823          	sd	s6,144(sp)
   10344:	09713423          	sd	s7,136(sp)
   10348:	09813023          	sd	s8,128(sp)
   1034c:	07913c23          	sd	s9,120(sp)
   10350:	07a13823          	sd	s10,112(sp)
   10354:	07b13423          	sd	s11,104(sp)
   10358:	03800513          	li	a0,56
   1035c:	1f1000ef          	jal	10d4c <malloc>
   10360:	00050493          	mv	s1,a0
   10364:	000277b7          	lui	a5,0x27
   10368:	cea7b823          	sd	a0,-784(a5) # 26cf0 <Next_Ptr_Glob>
   1036c:	03800513          	li	a0,56
   10370:	1dd000ef          	jal	10d4c <malloc>
   10374:	000277b7          	lui	a5,0x27
   10378:	d0a7b023          	sd	a0,-768(a5) # 26d00 <Ptr_Glob>
   1037c:	00953023          	sd	s1,0(a0)
   10380:	00052423          	sw	zero,8(a0)
   10384:	00200793          	li	a5,2
   10388:	00f52623          	sw	a5,12(a0)
   1038c:	02800793          	li	a5,40
   10390:	00f52823          	sw	a5,16(a0)
   10394:	000217b7          	lui	a5,0x21
   10398:	6787ae03          	lw	t3,1656(a5) # 21678 <zeroes.4123+0x10>
   1039c:	67878793          	addi	a5,a5,1656
   103a0:	0047a303          	lw	t1,4(a5)
   103a4:	0087a883          	lw	a7,8(a5)
   103a8:	00c7a803          	lw	a6,12(a5)
   103ac:	0107a583          	lw	a1,16(a5)
   103b0:	0147a603          	lw	a2,20(a5)
   103b4:	0187a683          	lw	a3,24(a5)
   103b8:	01c52a23          	sw	t3,20(a0)
   103bc:	00652c23          	sw	t1,24(a0)
   103c0:	01152e23          	sw	a7,28(a0)
   103c4:	03052023          	sw	a6,32(a0)
   103c8:	02b52223          	sw	a1,36(a0)
   103cc:	02c52423          	sw	a2,40(a0)
   103d0:	02d52623          	sw	a3,44(a0)
   103d4:	01c7d683          	lhu	a3,28(a5)
   103d8:	02d51823          	sh	a3,48(a0)
   103dc:	01e7c783          	lbu	a5,30(a5)
   103e0:	02f50923          	sb	a5,50(a0)
   103e4:	000227b7          	lui	a5,0x22
   103e8:	c687b703          	ld	a4,-920(a5) # 21c68 <zeroes.4123+0x600>
   103ec:	02e13823          	sd	a4,48(sp)
   103f0:	c6878793          	addi	a5,a5,-920
   103f4:	0087b703          	ld	a4,8(a5)
   103f8:	02e13c23          	sd	a4,56(sp)
   103fc:	0107b703          	ld	a4,16(a5)
   10400:	04e13023          	sd	a4,64(sp)
   10404:	0187a703          	lw	a4,24(a5)
   10408:	04e12423          	sw	a4,72(sp)
   1040c:	01c7d703          	lhu	a4,28(a5)
   10410:	04e11623          	sh	a4,76(sp)
   10414:	01e7c783          	lbu	a5,30(a5)
   10418:	04f10723          	sb	a5,78(sp)
   1041c:	00a00493          	li	s1,10
   10420:	0091aa23          	sw	s1,20(gp) # 24c34 <_gp+0x14>
   10424:	00048513          	mv	a0,s1
   10428:	150010ef          	jal	11578 <putchar>
   1042c:	00021537          	lui	a0,0x21
   10430:	69850513          	addi	a0,a0,1688 # 21698 <zeroes.4123+0x30>
   10434:	368010ef          	jal	1179c <puts>
   10438:	00048513          	mv	a0,s1
   1043c:	13c010ef          	jal	11578 <putchar>
   10440:	8081a783          	lw	a5,-2040(gp) # 24428 <Reg>
   10444:	00078e63          	beqz	a5,10460 <main+0x140>
   10448:	00021537          	lui	a0,0x21
   1044c:	6c850513          	addi	a0,a0,1736 # 216c8 <zeroes.4123+0x60>
   10450:	34c010ef          	jal	1179c <puts>
   10454:	00048513          	mv	a0,s1
   10458:	120010ef          	jal	11578 <putchar>
   1045c:	0180006f          	j	10474 <main+0x154>
   10460:	00021537          	lui	a0,0x21
   10464:	6f850513          	addi	a0,a0,1784 # 216f8 <zeroes.4123+0x90>
   10468:	334010ef          	jal	1179c <puts>
   1046c:	00a00513          	li	a0,10
   10470:	108010ef          	jal	11578 <putchar>
   10474:	00021537          	lui	a0,0x21
   10478:	72850513          	addi	a0,a0,1832 # 21728 <zeroes.4123+0xc0>
   1047c:	0a4010ef          	jal	11520 <printf>
   10480:	00c10593          	addi	a1,sp,12
   10484:	00021537          	lui	a0,0x21
   10488:	76050513          	addi	a0,a0,1888 # 21760 <zeroes.4123+0xf8>
   1048c:	31c010ef          	jal	117a8 <scanf>
   10490:	00c12b83          	lw	s7,12(sp)
   10494:	00a00513          	li	a0,10
   10498:	0e0010ef          	jal	11578 <putchar>
   1049c:	000b8593          	mv	a1,s7
   104a0:	00021537          	lui	a0,0x21
   104a4:	76850513          	addi	a0,a0,1896 # 21768 <zeroes.4123+0x100>
   104a8:	078010ef          	jal	11520 <printf>
   104ac:	000274b7          	lui	s1,0x27
   104b0:	dd848513          	addi	a0,s1,-552 # 26dd8 <time_info>
   104b4:	0e0100ef          	jal	20594 <times>
   104b8:	dd84b703          	ld	a4,-552(s1)
   104bc:	9ae1b823          	sd	a4,-1616(gp) # 245d0 <Begin_Time>
   104c0:	19705a63          	blez	s7,10654 <main+0x334>
   104c4:	00100a13          	li	s4,1
   104c8:	00022d37          	lui	s10,0x22
   104cc:	c88d3d83          	ld	s11,-888(s10) # 21c88 <zeroes.4123+0x620>
   104d0:	00300493          	li	s1,3
   104d4:	00022c37          	lui	s8,0x22
   104d8:	ca8c3c83          	ld	s9,-856(s8) # 21ca8 <zeroes.4123+0x640>
   104dc:	e2dff0ef          	jal	10308 <Proc_5>
   104e0:	df9ff0ef          	jal	102d8 <Proc_4>
   104e4:	00200413          	li	s0,2
   104e8:	04812e23          	sw	s0,92(sp)
   104ec:	01b13823          	sd	s11,16(sp)
   104f0:	c88d0793          	addi	a5,s10,-888
   104f4:	0087b703          	ld	a4,8(a5)
   104f8:	00e13c23          	sd	a4,24(sp)
   104fc:	0107b703          	ld	a4,16(a5)
   10500:	02e13023          	sd	a4,32(sp)
   10504:	0187a703          	lw	a4,24(a5)
   10508:	02e12423          	sw	a4,40(sp)
   1050c:	01c7d703          	lhu	a4,28(a5)
   10510:	02e11623          	sh	a4,44(sp)
   10514:	01e7c783          	lbu	a5,30(a5)
   10518:	02f10723          	sb	a5,46(sp)
   1051c:	00100793          	li	a5,1
   10520:	04f12a23          	sw	a5,84(sp)
   10524:	01010593          	addi	a1,sp,16
   10528:	03010513          	addi	a0,sp,48
   1052c:	664000ef          	jal	10b90 <Func_2>
   10530:	00153513          	seqz	a0,a0
   10534:	000277b7          	lui	a5,0x27
   10538:	dca7a823          	sw	a0,-560(a5) # 26dd0 <Bool_Glob>
   1053c:	05c12503          	lw	a0,92(sp)
   10540:	02a44863          	blt	s0,a0,10570 <main+0x250>
   10544:	0025179b          	slliw	a5,a0,0x2
   10548:	00a787bb          	addw	a5,a5,a0
   1054c:	ffd7879b          	addiw	a5,a5,-3
   10550:	04f12c23          	sw	a5,88(sp)
   10554:	05810613          	addi	a2,sp,88
   10558:	00048593          	mv	a1,s1
   1055c:	56c000ef          	jal	10ac8 <Proc_7>
   10560:	05c12503          	lw	a0,92(sp)
   10564:	0015051b          	addiw	a0,a0,1
   10568:	04a12e23          	sw	a0,92(sp)
   1056c:	fca45ce3          	ble	a0,s0,10544 <main+0x224>
   10570:	05812683          	lw	a3,88(sp)
   10574:	00050613          	mv	a2,a0
   10578:	9b818593          	addi	a1,gp,-1608 # 245d8 <Arr_2_Glob>
   1057c:	000277b7          	lui	a5,0x27
   10580:	d0878513          	addi	a0,a5,-760 # 26d08 <Arr_1_Glob>
   10584:	554000ef          	jal	10ad8 <Proc_8>
   10588:	000277b7          	lui	a5,0x27
   1058c:	d007b503          	ld	a0,-768(a5) # 26d00 <Ptr_Glob>
   10590:	c45ff0ef          	jal	101d4 <Proc_1>
   10594:	000277b7          	lui	a5,0x27
   10598:	cfd7c703          	lbu	a4,-771(a5) # 26cfd <Ch_2_Glob>
   1059c:	00048a93          	mv	s5,s1
   105a0:	04000793          	li	a5,64
   105a4:	06e7fe63          	bleu	a4,a5,10620 <main+0x300>
   105a8:	04100413          	li	s0,65
   105ac:	04300993          	li	s3,67
   105b0:	00027b37          	lui	s6,0x27
   105b4:	00027937          	lui	s2,0x27
   105b8:	00098593          	mv	a1,s3
   105bc:	00040513          	mv	a0,s0
   105c0:	5ac000ef          	jal	10b6c <Func_1>
   105c4:	05412783          	lw	a5,84(sp)
   105c8:	04f51463          	bne	a0,a5,10610 <main+0x2f0>
   105cc:	05410593          	addi	a1,sp,84
   105d0:	00000513          	li	a0,0
   105d4:	480000ef          	jal	10a54 <Proc_6>
   105d8:	01913823          	sd	s9,16(sp)
   105dc:	ca8c0793          	addi	a5,s8,-856
   105e0:	0087b703          	ld	a4,8(a5)
   105e4:	00e13c23          	sd	a4,24(sp)
   105e8:	0107b703          	ld	a4,16(a5)
   105ec:	02e13023          	sd	a4,32(sp)
   105f0:	0187a703          	lw	a4,24(a5)
   105f4:	02e12423          	sw	a4,40(sp)
   105f8:	01c7d703          	lhu	a4,28(a5)
   105fc:	02e11623          	sh	a4,44(sp)
   10600:	01e7c783          	lbu	a5,30(a5)
   10604:	02f10723          	sb	a5,46(sp)
   10608:	cf4b2c23          	sw	s4,-776(s6) # 26cf8 <Int_Glob>
   1060c:	000a0a93          	mv	s5,s4
   10610:	0014041b          	addiw	s0,s0,1
   10614:	0ff47413          	andi	s0,s0,255
   10618:	cfd94783          	lbu	a5,-771(s2) # 26cfd <Ch_2_Glob>
   1061c:	f887fee3          	bleu	s0,a5,105b8 <main+0x298>
   10620:	05c12783          	lw	a5,92(sp)
   10624:	02fa8abb          	mulw	s5,s5,a5
   10628:	05812903          	lw	s2,88(sp)
   1062c:	032ac43b          	divw	s0,s5,s2
   10630:	04812e23          	sw	s0,92(sp)
   10634:	05c10513          	addi	a0,sp,92
   10638:	b2dff0ef          	jal	10164 <Proc_2>
   1063c:	001a0a1b          	addiw	s4,s4,1
   10640:	e94bdee3          	ble	s4,s7,104dc <main+0x1bc>
   10644:	412a8abb          	subw	s5,s5,s2
   10648:	003a979b          	slliw	a5,s5,0x3
   1064c:	41578abb          	subw	s5,a5,s5
   10650:	408a843b          	subw	s0,s5,s0
   10654:	000274b7          	lui	s1,0x27
   10658:	dd848513          	addi	a0,s1,-552 # 26dd8 <time_info>
   1065c:	7390f0ef          	jal	20594 <times>
   10660:	000279b7          	lui	s3,0x27
   10664:	dd84b783          	ld	a5,-552(s1)
   10668:	cef9b423          	sd	a5,-792(s3) # 26ce8 <End_Time>
   1066c:	00021537          	lui	a0,0x21
   10670:	79850513          	addi	a0,a0,1944 # 21798 <zeroes.4123+0x130>
   10674:	128010ef          	jal	1179c <puts>
   10678:	00a00513          	li	a0,10
   1067c:	6fd000ef          	jal	11578 <putchar>
   10680:	00021537          	lui	a0,0x21
   10684:	7a850513          	addi	a0,a0,1960 # 217a8 <zeroes.4123+0x140>
   10688:	114010ef          	jal	1179c <puts>
   1068c:	00a00513          	li	a0,10
   10690:	6e9000ef          	jal	11578 <putchar>
   10694:	000277b7          	lui	a5,0x27
   10698:	cf87a583          	lw	a1,-776(a5) # 26cf8 <Int_Glob>
   1069c:	00021537          	lui	a0,0x21
   106a0:	7e050513          	addi	a0,a0,2016 # 217e0 <zeroes.4123+0x178>
   106a4:	67d000ef          	jal	11520 <printf>
   106a8:	00500593          	li	a1,5
   106ac:	000224b7          	lui	s1,0x22
   106b0:	80048513          	addi	a0,s1,-2048 # 21800 <zeroes.4123+0x198>
   106b4:	66d000ef          	jal	11520 <printf>
   106b8:	000277b7          	lui	a5,0x27
   106bc:	dd07a583          	lw	a1,-560(a5) # 26dd0 <Bool_Glob>
   106c0:	00022537          	lui	a0,0x22
   106c4:	82050513          	addi	a0,a0,-2016 # 21820 <zeroes.4123+0x1b8>
   106c8:	659000ef          	jal	11520 <printf>
   106cc:	00100593          	li	a1,1
   106d0:	80048513          	addi	a0,s1,-2048
   106d4:	64d000ef          	jal	11520 <printf>
   106d8:	000277b7          	lui	a5,0x27
   106dc:	cfc7c583          	lbu	a1,-772(a5) # 26cfc <Ch_1_Glob>
   106e0:	00022537          	lui	a0,0x22
   106e4:	84050513          	addi	a0,a0,-1984 # 21840 <zeroes.4123+0x1d8>
   106e8:	639000ef          	jal	11520 <printf>
   106ec:	04100593          	li	a1,65
   106f0:	00022937          	lui	s2,0x22
   106f4:	86090513          	addi	a0,s2,-1952 # 21860 <zeroes.4123+0x1f8>
   106f8:	629000ef          	jal	11520 <printf>
   106fc:	000277b7          	lui	a5,0x27
   10700:	cfd7c583          	lbu	a1,-771(a5) # 26cfd <Ch_2_Glob>
   10704:	00022537          	lui	a0,0x22
   10708:	88050513          	addi	a0,a0,-1920 # 21880 <zeroes.4123+0x218>
   1070c:	615000ef          	jal	11520 <printf>
   10710:	04200593          	li	a1,66
   10714:	86090513          	addi	a0,s2,-1952
   10718:	609000ef          	jal	11520 <printf>
   1071c:	000277b7          	lui	a5,0x27
   10720:	d287a583          	lw	a1,-728(a5) # 26d28 <Arr_1_Glob+0x20>
   10724:	00022537          	lui	a0,0x22
   10728:	8a050513          	addi	a0,a0,-1888 # 218a0 <zeroes.4123+0x238>
   1072c:	5f5000ef          	jal	11520 <printf>
   10730:	00700593          	li	a1,7
   10734:	80048513          	addi	a0,s1,-2048
   10738:	5e9000ef          	jal	11520 <printf>
   1073c:	0141a583          	lw	a1,20(gp) # 24c34 <_gp+0x14>
   10740:	00022537          	lui	a0,0x22
   10744:	8c050513          	addi	a0,a0,-1856 # 218c0 <zeroes.4123+0x258>
   10748:	5d9000ef          	jal	11520 <printf>
   1074c:	00022537          	lui	a0,0x22
   10750:	8e050513          	addi	a0,a0,-1824 # 218e0 <zeroes.4123+0x278>
   10754:	048010ef          	jal	1179c <puts>
   10758:	00022537          	lui	a0,0x22
   1075c:	91050513          	addi	a0,a0,-1776 # 21910 <zeroes.4123+0x2a8>
   10760:	03c010ef          	jal	1179c <puts>
   10764:	00027937          	lui	s2,0x27
   10768:	d0093783          	ld	a5,-768(s2) # 26d00 <Ptr_Glob>
   1076c:	0007a583          	lw	a1,0(a5)
   10770:	00022d37          	lui	s10,0x22
   10774:	920d0513          	addi	a0,s10,-1760 # 21920 <zeroes.4123+0x2b8>
   10778:	5a9000ef          	jal	11520 <printf>
   1077c:	00022537          	lui	a0,0x22
   10780:	94050513          	addi	a0,a0,-1728 # 21940 <zeroes.4123+0x2d8>
   10784:	018010ef          	jal	1179c <puts>
   10788:	d0093783          	ld	a5,-768(s2)
   1078c:	0087a583          	lw	a1,8(a5)
   10790:	00022cb7          	lui	s9,0x22
   10794:	970c8513          	addi	a0,s9,-1680 # 21970 <zeroes.4123+0x308>
   10798:	589000ef          	jal	11520 <printf>
   1079c:	00000593          	li	a1,0
   107a0:	80048513          	addi	a0,s1,-2048
   107a4:	57d000ef          	jal	11520 <printf>
   107a8:	d0093783          	ld	a5,-768(s2)
   107ac:	00c7a583          	lw	a1,12(a5)
   107b0:	00022c37          	lui	s8,0x22
   107b4:	990c0513          	addi	a0,s8,-1648 # 21990 <zeroes.4123+0x328>
   107b8:	569000ef          	jal	11520 <printf>
   107bc:	00200593          	li	a1,2
   107c0:	80048513          	addi	a0,s1,-2048
   107c4:	55d000ef          	jal	11520 <printf>
   107c8:	d0093783          	ld	a5,-768(s2)
   107cc:	0107a583          	lw	a1,16(a5)
   107d0:	00022b37          	lui	s6,0x22
   107d4:	9b0b0513          	addi	a0,s6,-1616 # 219b0 <zeroes.4123+0x348>
   107d8:	549000ef          	jal	11520 <printf>
   107dc:	01100593          	li	a1,17
   107e0:	80048513          	addi	a0,s1,-2048
   107e4:	53d000ef          	jal	11520 <printf>
   107e8:	d0093583          	ld	a1,-768(s2)
   107ec:	01458593          	addi	a1,a1,20
   107f0:	00022ab7          	lui	s5,0x22
   107f4:	9d0a8513          	addi	a0,s5,-1584 # 219d0 <zeroes.4123+0x368>
   107f8:	529000ef          	jal	11520 <printf>
   107fc:	00022a37          	lui	s4,0x22
   10800:	9f0a0513          	addi	a0,s4,-1552 # 219f0 <zeroes.4123+0x388>
   10804:	799000ef          	jal	1179c <puts>
   10808:	00022537          	lui	a0,0x22
   1080c:	a2850513          	addi	a0,a0,-1496 # 21a28 <zeroes.4123+0x3c0>
   10810:	78d000ef          	jal	1179c <puts>
   10814:	00027937          	lui	s2,0x27
   10818:	cf093783          	ld	a5,-784(s2) # 26cf0 <Next_Ptr_Glob>
   1081c:	0007a583          	lw	a1,0(a5)
   10820:	920d0513          	addi	a0,s10,-1760
   10824:	4fd000ef          	jal	11520 <printf>
   10828:	00022537          	lui	a0,0x22
   1082c:	a3850513          	addi	a0,a0,-1480 # 21a38 <zeroes.4123+0x3d0>
   10830:	76d000ef          	jal	1179c <puts>
   10834:	cf093783          	ld	a5,-784(s2)
   10838:	0087a583          	lw	a1,8(a5)
   1083c:	970c8513          	addi	a0,s9,-1680
   10840:	4e1000ef          	jal	11520 <printf>
   10844:	00000593          	li	a1,0
   10848:	80048513          	addi	a0,s1,-2048
   1084c:	4d5000ef          	jal	11520 <printf>
   10850:	cf093783          	ld	a5,-784(s2)
   10854:	00c7a583          	lw	a1,12(a5)
   10858:	990c0513          	addi	a0,s8,-1648
   1085c:	4c5000ef          	jal	11520 <printf>
   10860:	00100593          	li	a1,1
   10864:	80048513          	addi	a0,s1,-2048
   10868:	4b9000ef          	jal	11520 <printf>
   1086c:	cf093783          	ld	a5,-784(s2)
   10870:	0107a583          	lw	a1,16(a5)
   10874:	9b0b0513          	addi	a0,s6,-1616
   10878:	4a9000ef          	jal	11520 <printf>
   1087c:	01200593          	li	a1,18
   10880:	80048513          	addi	a0,s1,-2048
   10884:	49d000ef          	jal	11520 <printf>
   10888:	cf093583          	ld	a1,-784(s2)
   1088c:	01458593          	addi	a1,a1,20
   10890:	9d0a8513          	addi	a0,s5,-1584
   10894:	48d000ef          	jal	11520 <printf>
   10898:	9f0a0513          	addi	a0,s4,-1552
   1089c:	701000ef          	jal	1179c <puts>
   108a0:	05c12583          	lw	a1,92(sp)
   108a4:	00022537          	lui	a0,0x22
   108a8:	a7850513          	addi	a0,a0,-1416 # 21a78 <zeroes.4123+0x410>
   108ac:	475000ef          	jal	11520 <printf>
   108b0:	00500593          	li	a1,5
   108b4:	80048513          	addi	a0,s1,-2048
   108b8:	469000ef          	jal	11520 <printf>
   108bc:	00040593          	mv	a1,s0
   108c0:	00022537          	lui	a0,0x22
   108c4:	a9850513          	addi	a0,a0,-1384 # 21a98 <zeroes.4123+0x430>
   108c8:	459000ef          	jal	11520 <printf>
   108cc:	00d00593          	li	a1,13
   108d0:	80048513          	addi	a0,s1,-2048
   108d4:	44d000ef          	jal	11520 <printf>
   108d8:	05812583          	lw	a1,88(sp)
   108dc:	00022537          	lui	a0,0x22
   108e0:	ab850513          	addi	a0,a0,-1352 # 21ab8 <zeroes.4123+0x450>
   108e4:	43d000ef          	jal	11520 <printf>
   108e8:	00700593          	li	a1,7
   108ec:	80048513          	addi	a0,s1,-2048
   108f0:	431000ef          	jal	11520 <printf>
   108f4:	05412583          	lw	a1,84(sp)
   108f8:	00022537          	lui	a0,0x22
   108fc:	ad850513          	addi	a0,a0,-1320 # 21ad8 <zeroes.4123+0x470>
   10900:	421000ef          	jal	11520 <printf>
   10904:	00100593          	li	a1,1
   10908:	80048513          	addi	a0,s1,-2048
   1090c:	415000ef          	jal	11520 <printf>
   10910:	03010593          	addi	a1,sp,48
   10914:	00022537          	lui	a0,0x22
   10918:	af850513          	addi	a0,a0,-1288 # 21af8 <zeroes.4123+0x490>
   1091c:	405000ef          	jal	11520 <printf>
   10920:	00022537          	lui	a0,0x22
   10924:	b1850513          	addi	a0,a0,-1256 # 21b18 <zeroes.4123+0x4b0>
   10928:	675000ef          	jal	1179c <puts>
   1092c:	01010593          	addi	a1,sp,16
   10930:	00022537          	lui	a0,0x22
   10934:	b5050513          	addi	a0,a0,-1200 # 21b50 <zeroes.4123+0x4e8>
   10938:	3e9000ef          	jal	11520 <printf>
   1093c:	00022537          	lui	a0,0x22
   10940:	b7050513          	addi	a0,a0,-1168 # 21b70 <zeroes.4123+0x508>
   10944:	659000ef          	jal	1179c <puts>
   10948:	00a00513          	li	a0,10
   1094c:	42d000ef          	jal	11578 <putchar>
   10950:	ce89b783          	ld	a5,-792(s3)
   10954:	9b01b703          	ld	a4,-1616(gp) # 245d0 <Begin_Time>
   10958:	40e787b3          	sub	a5,a5,a4
   1095c:	9af1b423          	sd	a5,-1624(gp) # 245c8 <User_Time>
   10960:	07700713          	li	a4,119
   10964:	02f74463          	blt	a4,a5,1098c <main+0x66c>
   10968:	00022537          	lui	a0,0x22
   1096c:	ba850513          	addi	a0,a0,-1112 # 21ba8 <zeroes.4123+0x540>
   10970:	62d000ef          	jal	1179c <puts>
   10974:	00022537          	lui	a0,0x22
   10978:	be050513          	addi	a0,a0,-1056 # 21be0 <zeroes.4123+0x578>
   1097c:	621000ef          	jal	1179c <puts>
   10980:	00a00513          	li	a0,10
   10984:	3f5000ef          	jal	11578 <putchar>
   10988:	08c0006f          	j	10a14 <main+0x6f4>
   1098c:	d027f753          	fcvt.s.l	fa4,a5
   10990:	d00bf6d3          	fcvt.s.w	fa3,s7
   10994:	000247b7          	lui	a5,0x24
   10998:	4787a787          	flw	fa5,1144(a5) # 24478 <__wctomb+0x10>
   1099c:	10f6f7d3          	fmul.s	fa5,fa3,fa5
   109a0:	420706d3          	fcvt.d.s	fa3,fa4
   109a4:	000247b7          	lui	a5,0x24
   109a8:	4707b607          	fld	fa2,1136(a5) # 24470 <__wctomb+0x8>
   109ac:	12c6f6d3          	fmul.d	fa3,fa3,fa2
   109b0:	42078653          	fcvt.d.s	fa2,fa5
   109b4:	1ac6f6d3          	fdiv.d	fa3,fa3,fa2
   109b8:	4016f6d3          	fcvt.s.d	fa3,fa3
   109bc:	9ad1a027          	fsw	fa3,-1632(gp) # 245c0 <Microseconds>
   109c0:	18e7f7d3          	fdiv.s	fa5,fa5,fa4
   109c4:	9af1a227          	fsw	fa5,-1628(gp) # 245c4 <Dhrystones_Per_Second>
   109c8:	00022537          	lui	a0,0x22
   109cc:	c0050513          	addi	a0,a0,-1024 # 21c00 <zeroes.4123+0x598>
   109d0:	351000ef          	jal	11520 <printf>
   109d4:	9a01a787          	flw	fa5,-1632(gp) # 245c0 <Microseconds>
   109d8:	00022437          	lui	s0,0x22
   109dc:	420787d3          	fcvt.d.s	fa5,fa5
   109e0:	e20785d3          	fmv.x.d	a1,fa5
   109e4:	c3040513          	addi	a0,s0,-976 # 21c30 <zeroes.4123+0x5c8>
   109e8:	339000ef          	jal	11520 <printf>
   109ec:	00022537          	lui	a0,0x22
   109f0:	c3850513          	addi	a0,a0,-968 # 21c38 <zeroes.4123+0x5d0>
   109f4:	32d000ef          	jal	11520 <printf>
   109f8:	9a41a787          	flw	fa5,-1628(gp) # 245c4 <Dhrystones_Per_Second>
   109fc:	420787d3          	fcvt.d.s	fa5,fa5
   10a00:	e20785d3          	fmv.x.d	a1,fa5
   10a04:	c3040513          	addi	a0,s0,-976
   10a08:	319000ef          	jal	11520 <printf>
   10a0c:	00a00513          	li	a0,10
   10a10:	369000ef          	jal	11578 <putchar>
   10a14:	00000513          	li	a0,0
   10a18:	0c813083          	ld	ra,200(sp)
   10a1c:	0c013403          	ld	s0,192(sp)
   10a20:	0b813483          	ld	s1,184(sp)
   10a24:	0b013903          	ld	s2,176(sp)
   10a28:	0a813983          	ld	s3,168(sp)
   10a2c:	0a013a03          	ld	s4,160(sp)
   10a30:	09813a83          	ld	s5,152(sp)
   10a34:	09013b03          	ld	s6,144(sp)
   10a38:	08813b83          	ld	s7,136(sp)
   10a3c:	08013c03          	ld	s8,128(sp)
   10a40:	07813c83          	ld	s9,120(sp)
   10a44:	07013d03          	ld	s10,112(sp)
   10a48:	06813d83          	ld	s11,104(sp)
   10a4c:	0d010113          	addi	sp,sp,208
   10a50:	00008067          	ret

0000000000010a54 <Proc_6>:
   10a54:	00200793          	li	a5,2
   10a58:	04f50c63          	beq	a0,a5,10ab0 <Proc_6+0x5c>
   10a5c:	00300793          	li	a5,3
   10a60:	00f5a023          	sw	a5,0(a1)
   10a64:	00100793          	li	a5,1
   10a68:	02f50263          	beq	a0,a5,10a8c <Proc_6+0x38>
   10a6c:	00050c63          	beqz	a0,10a84 <Proc_6+0x30>
   10a70:	00200793          	li	a5,2
   10a74:	02f50e63          	beq	a0,a5,10ab0 <Proc_6+0x5c>
   10a78:	00400793          	li	a5,4
   10a7c:	04f50063          	beq	a0,a5,10abc <Proc_6+0x68>
   10a80:	00008067          	ret
   10a84:	0005a023          	sw	zero,0(a1)
   10a88:	00008067          	ret
   10a8c:	000277b7          	lui	a5,0x27
   10a90:	cf87a703          	lw	a4,-776(a5) # 26cf8 <Int_Glob>
   10a94:	06400793          	li	a5,100
   10a98:	00e7d663          	ble	a4,a5,10aa4 <Proc_6+0x50>
   10a9c:	0005a023          	sw	zero,0(a1)
   10aa0:	00008067          	ret
   10aa4:	00300793          	li	a5,3
   10aa8:	00f5a023          	sw	a5,0(a1)
   10aac:	00008067          	ret
   10ab0:	00100793          	li	a5,1
   10ab4:	00f5a023          	sw	a5,0(a1)
   10ab8:	00008067          	ret
   10abc:	00200793          	li	a5,2
   10ac0:	00f5a023          	sw	a5,0(a1)
   10ac4:	00008067          	ret

0000000000010ac8 <Proc_7>:
   10ac8:	0025051b          	addiw	a0,a0,2
   10acc:	00b505bb          	addw	a1,a0,a1
   10ad0:	00b62023          	sw	a1,0(a2)
   10ad4:	00008067          	ret

0000000000010ad8 <Proc_8>:
   10ad8:	0056081b          	addiw	a6,a2,5
   10adc:	00080313          	mv	t1,a6
   10ae0:	00231793          	slli	a5,t1,0x2
   10ae4:	00f50533          	add	a0,a0,a5
   10ae8:	00d52023          	sw	a3,0(a0)
   10aec:	00d52223          	sw	a3,4(a0)
   10af0:	07052c23          	sw	a6,120(a0)
   10af4:	0066089b          	addiw	a7,a2,6
   10af8:	0308c463          	blt	a7,a6,10b20 <Proc_8+0x48>
   10afc:	0c800693          	li	a3,200
   10b00:	02d306b3          	mul	a3,t1,a3
   10b04:	00d586b3          	add	a3,a1,a3
   10b08:	00080713          	mv	a4,a6
   10b0c:	00271793          	slli	a5,a4,0x2
   10b10:	00f687b3          	add	a5,a3,a5
   10b14:	0107a023          	sw	a6,0(a5)
   10b18:	0017071b          	addiw	a4,a4,1
   10b1c:	fee8d8e3          	ble	a4,a7,10b0c <Proc_8+0x34>
   10b20:	0c800793          	li	a5,200
   10b24:	02f30333          	mul	t1,t1,a5
   10b28:	00261793          	slli	a5,a2,0x2
   10b2c:	006787b3          	add	a5,a5,t1
   10b30:	00f587b3          	add	a5,a1,a5
   10b34:	0107a703          	lw	a4,16(a5)
   10b38:	0017071b          	addiw	a4,a4,1
   10b3c:	00e7a823          	sw	a4,16(a5)
   10b40:	00052703          	lw	a4,0(a0)
   10b44:	00658333          	add	t1,a1,t1
   10b48:	000017b7          	lui	a5,0x1
   10b4c:	00678333          	add	t1,a5,t1
   10b50:	00281813          	slli	a6,a6,0x2
   10b54:	01030833          	add	a6,t1,a6
   10b58:	fae82023          	sw	a4,-96(a6)
   10b5c:	00500713          	li	a4,5
   10b60:	000277b7          	lui	a5,0x27
   10b64:	cee7ac23          	sw	a4,-776(a5) # 26cf8 <Int_Glob>
   10b68:	00008067          	ret

0000000000010b6c <Func_1>:
   10b6c:	0ff57513          	andi	a0,a0,255
   10b70:	0ff5f593          	andi	a1,a1,255
   10b74:	00b51a63          	bne	a0,a1,10b88 <Func_1+0x1c>
   10b78:	000277b7          	lui	a5,0x27
   10b7c:	cea78e23          	sb	a0,-772(a5) # 26cfc <Ch_1_Glob>
   10b80:	00100513          	li	a0,1
   10b84:	00008067          	ret
   10b88:	00000513          	li	a0,0
   10b8c:	00008067          	ret

0000000000010b90 <Func_2>:
   10b90:	ff010113          	addi	sp,sp,-16
   10b94:	00113423          	sd	ra,8(sp)
   10b98:	00813023          	sd	s0,0(sp)
   10b9c:	00200413          	li	s0,2
   10ba0:	00027637          	lui	a2,0x27
   10ba4:	00040693          	mv	a3,s0
   10ba8:	00850733          	add	a4,a0,s0
   10bac:	00074703          	lbu	a4,0(a4)
   10bb0:	008587b3          	add	a5,a1,s0
   10bb4:	0017c783          	lbu	a5,1(a5)
   10bb8:	02e79863          	bne	a5,a4,10be8 <Func_2+0x58>
   10bbc:	cee60e23          	sb	a4,-772(a2) # 26cfc <Ch_1_Glob>
   10bc0:	fe86d4e3          	ble	s0,a3,10ba8 <Func_2+0x18>
   10bc4:	479000ef          	jal	1183c <strcmp>
   10bc8:	00a05c63          	blez	a0,10be0 <Func_2+0x50>
   10bcc:	0074041b          	addiw	s0,s0,7
   10bd0:	000277b7          	lui	a5,0x27
   10bd4:	ce87ac23          	sw	s0,-776(a5) # 26cf8 <Int_Glob>
   10bd8:	00100513          	li	a0,1
   10bdc:	0140006f          	j	10bf0 <Func_2+0x60>
   10be0:	00000513          	li	a0,0
   10be4:	00c0006f          	j	10bf0 <Func_2+0x60>
   10be8:	0014041b          	addiw	s0,s0,1
   10bec:	fd5ff06f          	j	10bc0 <Func_2+0x30>
   10bf0:	00813083          	ld	ra,8(sp)
   10bf4:	00013403          	ld	s0,0(sp)
   10bf8:	01010113          	addi	sp,sp,16
   10bfc:	00008067          	ret

0000000000010c00 <Func_3>:
   10c00:	ffe5051b          	addiw	a0,a0,-2
   10c04:	00153513          	seqz	a0,a0
   10c08:	00008067          	ret

0000000000010c0c <atexit>:
   10c0c:	00050593          	mv	a1,a0
   10c10:	00000693          	li	a3,0
   10c14:	00000613          	li	a2,0
   10c18:	00000513          	li	a0,0
   10c1c:	00c0406f          	j	14c28 <__register_exitproc>

0000000000010c20 <exit>:
   10c20:	ff010113          	addi	sp,sp,-16
   10c24:	00000593          	li	a1,0
   10c28:	00813023          	sd	s0,0(sp)
   10c2c:	00113423          	sd	ra,8(sp)
   10c30:	00050413          	mv	s0,a0
   10c34:	104040ef          	jal	14d38 <__call_exitprocs>
   10c38:	8101b503          	ld	a0,-2032(gp) # 24430 <_global_impure_ptr>
   10c3c:	05853783          	ld	a5,88(a0)
   10c40:	00078463          	beqz	a5,10c48 <exit+0x28>
   10c44:	000780e7          	jalr	a5
   10c48:	00040513          	mv	a0,s0
   10c4c:	2a10f0ef          	jal	206ec <_exit>

0000000000010c50 <__libc_fini_array>:
   10c50:	fe010113          	addi	sp,sp,-32
   10c54:	00813823          	sd	s0,16(sp)
   10c58:	00913423          	sd	s1,8(sp)
   10c5c:	00022437          	lui	s0,0x22
   10c60:	000224b7          	lui	s1,0x22
   10c64:	d8848493          	addi	s1,s1,-632 # 21d88 <__init_array_end>
   10c68:	d9040413          	addi	s0,s0,-624 # 21d90 <__fini_array_end>
   10c6c:	40940433          	sub	s0,s0,s1
   10c70:	ff840793          	addi	a5,s0,-8
   10c74:	00113c23          	sd	ra,24(sp)
   10c78:	40345413          	srai	s0,s0,0x3
   10c7c:	009784b3          	add	s1,a5,s1
   10c80:	00040c63          	beqz	s0,10c98 <__libc_fini_array+0x48>
   10c84:	0004b783          	ld	a5,0(s1)
   10c88:	fff40413          	addi	s0,s0,-1
   10c8c:	ff848493          	addi	s1,s1,-8
   10c90:	000780e7          	jalr	a5
   10c94:	fe0418e3          	bnez	s0,10c84 <__libc_fini_array+0x34>
   10c98:	01813083          	ld	ra,24(sp)
   10c9c:	01013403          	ld	s0,16(sp)
   10ca0:	00813483          	ld	s1,8(sp)
   10ca4:	02010113          	addi	sp,sp,32
   10ca8:	ba0ff06f          	j	10048 <_fini>

0000000000010cac <__libc_init_array>:
   10cac:	fe010113          	addi	sp,sp,-32
   10cb0:	00813823          	sd	s0,16(sp)
   10cb4:	000227b7          	lui	a5,0x22
   10cb8:	00022437          	lui	s0,0x22
   10cbc:	01213023          	sd	s2,0(sp)
   10cc0:	d8078793          	addi	a5,a5,-640 # 21d80 <_etext>
   10cc4:	d8040913          	addi	s2,s0,-640 # 21d80 <_etext>
   10cc8:	41278933          	sub	s2,a5,s2
   10ccc:	00913423          	sd	s1,8(sp)
   10cd0:	00113c23          	sd	ra,24(sp)
   10cd4:	40395913          	srai	s2,s2,0x3
   10cd8:	d8040413          	addi	s0,s0,-640
   10cdc:	00000493          	li	s1,0
   10ce0:	00090c63          	beqz	s2,10cf8 <__libc_init_array+0x4c>
   10ce4:	00043783          	ld	a5,0(s0)
   10ce8:	00148493          	addi	s1,s1,1
   10cec:	00840413          	addi	s0,s0,8
   10cf0:	000780e7          	jalr	a5
   10cf4:	fe9918e3          	bne	s2,s1,10ce4 <__libc_init_array+0x38>
   10cf8:	b50ff0ef          	jal	10048 <_fini>
   10cfc:	00022437          	lui	s0,0x22
   10d00:	000227b7          	lui	a5,0x22
   10d04:	d8040913          	addi	s2,s0,-640 # 21d80 <_etext>
   10d08:	d8878793          	addi	a5,a5,-632 # 21d88 <__init_array_end>
   10d0c:	41278933          	sub	s2,a5,s2
   10d10:	40395913          	srai	s2,s2,0x3
   10d14:	d8040413          	addi	s0,s0,-640
   10d18:	00000493          	li	s1,0
   10d1c:	00090c63          	beqz	s2,10d34 <__libc_init_array+0x88>
   10d20:	00043783          	ld	a5,0(s0)
   10d24:	00148493          	addi	s1,s1,1
   10d28:	00840413          	addi	s0,s0,8
   10d2c:	000780e7          	jalr	a5
   10d30:	fe9918e3          	bne	s2,s1,10d20 <__libc_init_array+0x74>
   10d34:	01813083          	ld	ra,24(sp)
   10d38:	01013403          	ld	s0,16(sp)
   10d3c:	00813483          	ld	s1,8(sp)
   10d40:	00013903          	ld	s2,0(sp)
   10d44:	02010113          	addi	sp,sp,32
   10d48:	00008067          	ret

0000000000010d4c <malloc>:
   10d4c:	00050593          	mv	a1,a0
   10d50:	8181b503          	ld	a0,-2024(gp) # 24438 <_impure_ptr>
   10d54:	0100006f          	j	10d64 <_malloc_r>

0000000000010d58 <free>:
   10d58:	00050593          	mv	a1,a0
   10d5c:	8181b503          	ld	a0,-2024(gp) # 24438 <_impure_ptr>
   10d60:	62d0506f          	j	16b8c <_free_r>

0000000000010d64 <_malloc_r>:
   10d64:	fa010113          	addi	sp,sp,-96
   10d68:	04913423          	sd	s1,72(sp)
   10d6c:	03313c23          	sd	s3,56(sp)
   10d70:	04113c23          	sd	ra,88(sp)
   10d74:	04813823          	sd	s0,80(sp)
   10d78:	05213023          	sd	s2,64(sp)
   10d7c:	03413823          	sd	s4,48(sp)
   10d80:	03513423          	sd	s5,40(sp)
   10d84:	03613023          	sd	s6,32(sp)
   10d88:	01713c23          	sd	s7,24(sp)
   10d8c:	01813823          	sd	s8,16(sp)
   10d90:	01913423          	sd	s9,8(sp)
   10d94:	01758493          	addi	s1,a1,23
   10d98:	02e00793          	li	a5,46
   10d9c:	00050993          	mv	s3,a0
   10da0:	1c97fa63          	bleu	s1,a5,10f74 <_malloc_r+0x210>
   10da4:	800007b7          	lui	a5,0x80000
   10da8:	ff04f493          	andi	s1,s1,-16
   10dac:	fff7c793          	not	a5,a5
   10db0:	2497ee63          	bltu	a5,s1,1100c <_malloc_r+0x2a8>
   10db4:	24b4ec63          	bltu	s1,a1,1100c <_malloc_r+0x2a8>
   10db8:	71c000ef          	jal	114d4 <__malloc_lock>
   10dbc:	1f700793          	li	a5,503
   10dc0:	7097f063          	bleu	s1,a5,114c0 <_malloc_r+0x75c>
   10dc4:	0094d793          	srli	a5,s1,0x9
   10dc8:	08000693          	li	a3,128
   10dcc:	04000513          	li	a0,64
   10dd0:	03f00593          	li	a1,63
   10dd4:	24079463          	bnez	a5,1101c <_malloc_r+0x2b8>
   10dd8:	00024937          	lui	s2,0x24
   10ddc:	b6890913          	addi	s2,s2,-1176 # 23b68 <__malloc_av_>
   10de0:	00369693          	slli	a3,a3,0x3
   10de4:	00d906b3          	add	a3,s2,a3
   10de8:	0086b403          	ld	s0,8(a3)
   10dec:	ff068693          	addi	a3,a3,-16
   10df0:	24868663          	beq	a3,s0,1103c <_malloc_r+0x2d8>
   10df4:	00843783          	ld	a5,8(s0)
   10df8:	01f00613          	li	a2,31
   10dfc:	ffc7f793          	andi	a5,a5,-4
   10e00:	40978733          	sub	a4,a5,s1
   10e04:	02e64063          	blt	a2,a4,10e24 <_malloc_r+0xc0>
   10e08:	22075e63          	bgez	a4,11044 <_malloc_r+0x2e0>
   10e0c:	01843403          	ld	s0,24(s0)
   10e10:	22868663          	beq	a3,s0,1103c <_malloc_r+0x2d8>
   10e14:	00843783          	ld	a5,8(s0)
   10e18:	ffc7f793          	andi	a5,a5,-4
   10e1c:	40978733          	sub	a4,a5,s1
   10e20:	fee654e3          	ble	a4,a2,10e08 <_malloc_r+0xa4>
   10e24:	00058693          	mv	a3,a1
   10e28:	02093403          	ld	s0,32(s2)
   10e2c:	01090813          	addi	a6,s2,16
   10e30:	47040a63          	beq	s0,a6,112a4 <_malloc_r+0x540>
   10e34:	00843783          	ld	a5,8(s0)
   10e38:	01f00613          	li	a2,31
   10e3c:	ffc7f793          	andi	a5,a5,-4
   10e40:	40978733          	sub	a4,a5,s1
   10e44:	44e64a63          	blt	a2,a4,11298 <_malloc_r+0x534>
   10e48:	03093423          	sd	a6,40(s2)
   10e4c:	03093023          	sd	a6,32(s2)
   10e50:	20075063          	bgez	a4,11050 <_malloc_r+0x2ec>
   10e54:	1ff00713          	li	a4,511
   10e58:	3cf76c63          	bltu	a4,a5,11230 <_malloc_r+0x4cc>
   10e5c:	0037d793          	srli	a5,a5,0x3
   10e60:	0007879b          	sext.w	a5,a5
   10e64:	0017861b          	addiw	a2,a5,1
   10e68:	0016161b          	slliw	a2,a2,0x1
   10e6c:	00361613          	slli	a2,a2,0x3
   10e70:	00893703          	ld	a4,8(s2)
   10e74:	00c90633          	add	a2,s2,a2
   10e78:	00063503          	ld	a0,0(a2)
   10e7c:	4027d79b          	sraiw	a5,a5,0x2
   10e80:	00100593          	li	a1,1
   10e84:	00f597b3          	sll	a5,a1,a5
   10e88:	00e7e7b3          	or	a5,a5,a4
   10e8c:	ff060713          	addi	a4,a2,-16
   10e90:	00e43c23          	sd	a4,24(s0)
   10e94:	00a43823          	sd	a0,16(s0)
   10e98:	00f93423          	sd	a5,8(s2)
   10e9c:	00863023          	sd	s0,0(a2)
   10ea0:	00853c23          	sd	s0,24(a0)
   10ea4:	4026d61b          	sraiw	a2,a3,0x2
   10ea8:	00100713          	li	a4,1
   10eac:	00c71633          	sll	a2,a4,a2
   10eb0:	1cc7e063          	bltu	a5,a2,11070 <_malloc_r+0x30c>
   10eb4:	00f67733          	and	a4,a2,a5
   10eb8:	02071463          	bnez	a4,10ee0 <_malloc_r+0x17c>
   10ebc:	00161613          	slli	a2,a2,0x1
   10ec0:	ffc6f693          	andi	a3,a3,-4
   10ec4:	00f67733          	and	a4,a2,a5
   10ec8:	0046869b          	addiw	a3,a3,4
   10ecc:	00071a63          	bnez	a4,10ee0 <_malloc_r+0x17c>
   10ed0:	00161613          	slli	a2,a2,0x1
   10ed4:	00f67733          	and	a4,a2,a5
   10ed8:	0046869b          	addiw	a3,a3,4
   10edc:	fe070ae3          	beqz	a4,10ed0 <_malloc_r+0x16c>
   10ee0:	01f00513          	li	a0,31
   10ee4:	0016889b          	addiw	a7,a3,1
   10ee8:	0018989b          	slliw	a7,a7,0x1
   10eec:	00389893          	slli	a7,a7,0x3
   10ef0:	011908b3          	add	a7,s2,a7
   10ef4:	ff088893          	addi	a7,a7,-16
   10ef8:	00088593          	mv	a1,a7
   10efc:	00068313          	mv	t1,a3
   10f00:	0185b403          	ld	s0,24(a1)
   10f04:	00859a63          	bne	a1,s0,10f18 <_malloc_r+0x1b4>
   10f08:	3a40006f          	j	112ac <_malloc_r+0x548>
   10f0c:	3c075263          	bgez	a4,112d0 <_malloc_r+0x56c>
   10f10:	01843403          	ld	s0,24(s0)
   10f14:	38858c63          	beq	a1,s0,112ac <_malloc_r+0x548>
   10f18:	00843783          	ld	a5,8(s0)
   10f1c:	ffc7f793          	andi	a5,a5,-4
   10f20:	40978733          	sub	a4,a5,s1
   10f24:	fee554e3          	ble	a4,a0,10f0c <_malloc_r+0x1a8>
   10f28:	01843783          	ld	a5,24(s0)
   10f2c:	01043683          	ld	a3,16(s0)
   10f30:	0014e613          	ori	a2,s1,1
   10f34:	00c43423          	sd	a2,8(s0)
   10f38:	00f6bc23          	sd	a5,24(a3)
   10f3c:	00d7b823          	sd	a3,16(a5) # ffffffff80000010 <_end+0xffffffff7ffd9218>
   10f40:	009404b3          	add	s1,s0,s1
   10f44:	02993423          	sd	s1,40(s2)
   10f48:	02993023          	sd	s1,32(s2)
   10f4c:	00176793          	ori	a5,a4,1
   10f50:	0104bc23          	sd	a6,24(s1)
   10f54:	0104b823          	sd	a6,16(s1)
   10f58:	00f4b423          	sd	a5,8(s1)
   10f5c:	00e484b3          	add	s1,s1,a4
   10f60:	00098513          	mv	a0,s3
   10f64:	00e4b023          	sd	a4,0(s1)
   10f68:	570000ef          	jal	114d8 <__malloc_unlock>
   10f6c:	01040513          	addi	a0,s0,16
   10f70:	0680006f          	j	10fd8 <_malloc_r+0x274>
   10f74:	02000493          	li	s1,32
   10f78:	08b4ea63          	bltu	s1,a1,1100c <_malloc_r+0x2a8>
   10f7c:	558000ef          	jal	114d4 <__malloc_lock>
   10f80:	00a00793          	li	a5,10
   10f84:	00400693          	li	a3,4
   10f88:	00024937          	lui	s2,0x24
   10f8c:	b6890913          	addi	s2,s2,-1176 # 23b68 <__malloc_av_>
   10f90:	00379793          	slli	a5,a5,0x3
   10f94:	00f907b3          	add	a5,s2,a5
   10f98:	0087b403          	ld	s0,8(a5)
   10f9c:	ff078713          	addi	a4,a5,-16
   10fa0:	32e40063          	beq	s0,a4,112c0 <_malloc_r+0x55c>
   10fa4:	00843783          	ld	a5,8(s0)
   10fa8:	01843683          	ld	a3,24(s0)
   10fac:	01043603          	ld	a2,16(s0)
   10fb0:	ffc7f793          	andi	a5,a5,-4
   10fb4:	00f407b3          	add	a5,s0,a5
   10fb8:	0087b703          	ld	a4,8(a5)
   10fbc:	00d63c23          	sd	a3,24(a2)
   10fc0:	00c6b823          	sd	a2,16(a3)
   10fc4:	00176713          	ori	a4,a4,1
   10fc8:	00098513          	mv	a0,s3
   10fcc:	00e7b423          	sd	a4,8(a5)
   10fd0:	508000ef          	jal	114d8 <__malloc_unlock>
   10fd4:	01040513          	addi	a0,s0,16
   10fd8:	05813083          	ld	ra,88(sp)
   10fdc:	05013403          	ld	s0,80(sp)
   10fe0:	04813483          	ld	s1,72(sp)
   10fe4:	04013903          	ld	s2,64(sp)
   10fe8:	03813983          	ld	s3,56(sp)
   10fec:	03013a03          	ld	s4,48(sp)
   10ff0:	02813a83          	ld	s5,40(sp)
   10ff4:	02013b03          	ld	s6,32(sp)
   10ff8:	01813b83          	ld	s7,24(sp)
   10ffc:	01013c03          	ld	s8,16(sp)
   11000:	00813c83          	ld	s9,8(sp)
   11004:	06010113          	addi	sp,sp,96
   11008:	00008067          	ret
   1100c:	00c00793          	li	a5,12
   11010:	00f9a023          	sw	a5,0(s3)
   11014:	00000513          	li	a0,0
   11018:	fc1ff06f          	j	10fd8 <_malloc_r+0x274>
   1101c:	00400713          	li	a4,4
   11020:	1ef76463          	bltu	a4,a5,11208 <_malloc_r+0x4a4>
   11024:	0064d593          	srli	a1,s1,0x6
   11028:	0005859b          	sext.w	a1,a1
   1102c:	0395851b          	addiw	a0,a1,57
   11030:	0015169b          	slliw	a3,a0,0x1
   11034:	0385859b          	addiw	a1,a1,56
   11038:	da1ff06f          	j	10dd8 <_malloc_r+0x74>
   1103c:	00050693          	mv	a3,a0
   11040:	de9ff06f          	j	10e28 <_malloc_r+0xc4>
   11044:	01843683          	ld	a3,24(s0)
   11048:	01043603          	ld	a2,16(s0)
   1104c:	f69ff06f          	j	10fb4 <_malloc_r+0x250>
   11050:	00f407b3          	add	a5,s0,a5
   11054:	0087b703          	ld	a4,8(a5)
   11058:	00098513          	mv	a0,s3
   1105c:	00176713          	ori	a4,a4,1
   11060:	00e7b423          	sd	a4,8(a5)
   11064:	474000ef          	jal	114d8 <__malloc_unlock>
   11068:	01040513          	addi	a0,s0,16
   1106c:	f6dff06f          	j	10fd8 <_malloc_r+0x274>
   11070:	01093403          	ld	s0,16(s2)
   11074:	00843703          	ld	a4,8(s0)
   11078:	ffc77b93          	andi	s7,a4,-4
   1107c:	009be863          	bltu	s7,s1,1108c <_malloc_r+0x328>
   11080:	409b87b3          	sub	a5,s7,s1
   11084:	01f00713          	li	a4,31
   11088:	14f74c63          	blt	a4,a5,111e0 <_malloc_r+0x47c>
   1108c:	9101b783          	ld	a5,-1776(gp) # 24530 <__malloc_top_pad>
   11090:	8201b683          	ld	a3,-2016(gp) # 24440 <__malloc_sbrk_base>
   11094:	fff00713          	li	a4,-1
   11098:	00f487b3          	add	a5,s1,a5
   1109c:	01740a33          	add	s4,s0,s7
   110a0:	02078b13          	addi	s6,a5,32
   110a4:	00e68c63          	beq	a3,a4,110bc <_malloc_r+0x358>
   110a8:	00001b37          	lui	s6,0x1
   110ac:	01fb0b13          	addi	s6,s6,31 # 101f <_ftext-0xefe1>
   110b0:	01678b33          	add	s6,a5,s6
   110b4:	fffff7b7          	lui	a5,0xfffff
   110b8:	00fb7b33          	and	s6,s6,a5
   110bc:	000b0513          	mv	a0,s6
   110c0:	5d80f0ef          	jal	20698 <sbrk>
   110c4:	fff00793          	li	a5,-1
   110c8:	00050a93          	mv	s5,a0
   110cc:	26f50263          	beq	a0,a5,11330 <_malloc_r+0x5cc>
   110d0:	25456e63          	bltu	a0,s4,1132c <_malloc_r+0x5c8>
   110d4:	96818c13          	addi	s8,gp,-1688 # 24588 <__malloc_current_mallinfo>
   110d8:	000c2783          	lw	a5,0(s8)
   110dc:	00fb07bb          	addw	a5,s6,a5
   110e0:	00fc2023          	sw	a5,0(s8)
   110e4:	355a0463          	beq	s4,s5,1142c <_malloc_r+0x6c8>
   110e8:	8201b683          	ld	a3,-2016(gp) # 24440 <__malloc_sbrk_base>
   110ec:	fff00713          	li	a4,-1
   110f0:	36e68263          	beq	a3,a4,11454 <_malloc_r+0x6f0>
   110f4:	414a8a33          	sub	s4,s5,s4
   110f8:	00fa07bb          	addw	a5,s4,a5
   110fc:	00fc2023          	sw	a5,0(s8)
   11100:	00faf713          	andi	a4,s5,15
   11104:	000017b7          	lui	a5,0x1
   11108:	00070a63          	beqz	a4,1111c <_malloc_r+0x3b8>
   1110c:	40ea8ab3          	sub	s5,s5,a4
   11110:	01078a13          	addi	s4,a5,16 # 1010 <_ftext-0xeff0>
   11114:	010a8a93          	addi	s5,s5,16
   11118:	40ea07b3          	sub	a5,s4,a4
   1111c:	00001a37          	lui	s4,0x1
   11120:	fffa0a13          	addi	s4,s4,-1 # fff <_ftext-0xf001>
   11124:	016a8b33          	add	s6,s5,s6
   11128:	014b7b33          	and	s6,s6,s4
   1112c:	41678a33          	sub	s4,a5,s6
   11130:	000a0513          	mv	a0,s4
   11134:	5640f0ef          	jal	20698 <sbrk>
   11138:	fff00793          	li	a5,-1
   1113c:	30f50663          	beq	a0,a5,11448 <_malloc_r+0x6e4>
   11140:	41550733          	sub	a4,a0,s5
   11144:	01470733          	add	a4,a4,s4
   11148:	00176713          	ori	a4,a4,1
   1114c:	000a0a1b          	sext.w	s4,s4
   11150:	000c2783          	lw	a5,0(s8)
   11154:	01593823          	sd	s5,16(s2)
   11158:	00eab423          	sd	a4,8(s5)
   1115c:	00fa07bb          	addw	a5,s4,a5
   11160:	00fc2023          	sw	a5,0(s8)
   11164:	03240c63          	beq	s0,s2,1119c <_malloc_r+0x438>
   11168:	01f00613          	li	a2,31
   1116c:	27767463          	bleu	s7,a2,113d4 <_malloc_r+0x670>
   11170:	00843683          	ld	a3,8(s0)
   11174:	fe8b8713          	addi	a4,s7,-24
   11178:	ff077713          	andi	a4,a4,-16
   1117c:	0016f693          	andi	a3,a3,1
   11180:	00e6e6b3          	or	a3,a3,a4
   11184:	00d43423          	sd	a3,8(s0)
   11188:	00900593          	li	a1,9
   1118c:	00e406b3          	add	a3,s0,a4
   11190:	00b6b423          	sd	a1,8(a3)
   11194:	00b6b823          	sd	a1,16(a3)
   11198:	2ce66263          	bltu	a2,a4,1145c <_malloc_r+0x6f8>
   1119c:	9081b683          	ld	a3,-1784(gp) # 24528 <__malloc_max_sbrked_mem>
   111a0:	00f6f463          	bleu	a5,a3,111a8 <_malloc_r+0x444>
   111a4:	90f1b423          	sd	a5,-1784(gp) # 24528 <__malloc_max_sbrked_mem>
   111a8:	9001b683          	ld	a3,-1792(gp) # 24520 <__malloc_max_total_mem>
   111ac:	01093403          	ld	s0,16(s2)
   111b0:	00f6f463          	bleu	a5,a3,111b8 <_malloc_r+0x454>
   111b4:	90f1b023          	sd	a5,-1792(gp) # 24520 <__malloc_max_total_mem>
   111b8:	00843703          	ld	a4,8(s0)
   111bc:	ffc77713          	andi	a4,a4,-4
   111c0:	409707b3          	sub	a5,a4,s1
   111c4:	00976663          	bltu	a4,s1,111d0 <_malloc_r+0x46c>
   111c8:	01f00713          	li	a4,31
   111cc:	00f74a63          	blt	a4,a5,111e0 <_malloc_r+0x47c>
   111d0:	00098513          	mv	a0,s3
   111d4:	304000ef          	jal	114d8 <__malloc_unlock>
   111d8:	00000513          	li	a0,0
   111dc:	dfdff06f          	j	10fd8 <_malloc_r+0x274>
   111e0:	0014e713          	ori	a4,s1,1
   111e4:	00e43423          	sd	a4,8(s0)
   111e8:	009404b3          	add	s1,s0,s1
   111ec:	00993823          	sd	s1,16(s2)
   111f0:	0017e793          	ori	a5,a5,1
   111f4:	00098513          	mv	a0,s3
   111f8:	00f4b423          	sd	a5,8(s1)
   111fc:	2dc000ef          	jal	114d8 <__malloc_unlock>
   11200:	01040513          	addi	a0,s0,16
   11204:	dd5ff06f          	j	10fd8 <_malloc_r+0x274>
   11208:	01400713          	li	a4,20
   1120c:	0ef77a63          	bleu	a5,a4,11300 <_malloc_r+0x59c>
   11210:	05400713          	li	a4,84
   11214:	18f76063          	bltu	a4,a5,11394 <_malloc_r+0x630>
   11218:	00c4d593          	srli	a1,s1,0xc
   1121c:	0005859b          	sext.w	a1,a1
   11220:	06f5851b          	addiw	a0,a1,111
   11224:	0015169b          	slliw	a3,a0,0x1
   11228:	06e5859b          	addiw	a1,a1,110
   1122c:	badff06f          	j	10dd8 <_malloc_r+0x74>
   11230:	0097d713          	srli	a4,a5,0x9
   11234:	00400613          	li	a2,4
   11238:	0ce67e63          	bleu	a4,a2,11314 <_malloc_r+0x5b0>
   1123c:	01400613          	li	a2,20
   11240:	1ce66663          	bltu	a2,a4,1140c <_malloc_r+0x6a8>
   11244:	0007071b          	sext.w	a4,a4
   11248:	05c7059b          	addiw	a1,a4,92
   1124c:	05b7061b          	addiw	a2,a4,91
   11250:	0015959b          	slliw	a1,a1,0x1
   11254:	00359593          	slli	a1,a1,0x3
   11258:	00b905b3          	add	a1,s2,a1
   1125c:	0005b703          	ld	a4,0(a1)
   11260:	ff058593          	addi	a1,a1,-16
   11264:	14e58863          	beq	a1,a4,113b4 <_malloc_r+0x650>
   11268:	00873603          	ld	a2,8(a4)
   1126c:	ffc67613          	andi	a2,a2,-4
   11270:	00c7f663          	bleu	a2,a5,1127c <_malloc_r+0x518>
   11274:	01073703          	ld	a4,16(a4)
   11278:	fee598e3          	bne	a1,a4,11268 <_malloc_r+0x504>
   1127c:	01873583          	ld	a1,24(a4)
   11280:	00893783          	ld	a5,8(s2)
   11284:	00b43c23          	sd	a1,24(s0)
   11288:	00e43823          	sd	a4,16(s0)
   1128c:	0085b823          	sd	s0,16(a1)
   11290:	00873c23          	sd	s0,24(a4)
   11294:	c11ff06f          	j	10ea4 <_malloc_r+0x140>
   11298:	0014e793          	ori	a5,s1,1
   1129c:	00f43423          	sd	a5,8(s0)
   112a0:	ca1ff06f          	j	10f40 <_malloc_r+0x1dc>
   112a4:	00893783          	ld	a5,8(s2)
   112a8:	bfdff06f          	j	10ea4 <_malloc_r+0x140>
   112ac:	0013031b          	addiw	t1,t1,1
   112b0:	00337793          	andi	a5,t1,3
   112b4:	01058593          	addi	a1,a1,16
   112b8:	c40794e3          	bnez	a5,10f00 <_malloc_r+0x19c>
   112bc:	0900006f          	j	1134c <_malloc_r+0x5e8>
   112c0:	0187b403          	ld	s0,24(a5)
   112c4:	0026869b          	addiw	a3,a3,2
   112c8:	b68780e3          	beq	a5,s0,10e28 <_malloc_r+0xc4>
   112cc:	cd9ff06f          	j	10fa4 <_malloc_r+0x240>
   112d0:	00f407b3          	add	a5,s0,a5
   112d4:	0087b703          	ld	a4,8(a5)
   112d8:	01843683          	ld	a3,24(s0)
   112dc:	01043603          	ld	a2,16(s0)
   112e0:	00176713          	ori	a4,a4,1
   112e4:	00e7b423          	sd	a4,8(a5)
   112e8:	00d63c23          	sd	a3,24(a2)
   112ec:	00098513          	mv	a0,s3
   112f0:	00c6b823          	sd	a2,16(a3)
   112f4:	1e4000ef          	jal	114d8 <__malloc_unlock>
   112f8:	01040513          	addi	a0,s0,16
   112fc:	cddff06f          	j	10fd8 <_malloc_r+0x274>
   11300:	0007879b          	sext.w	a5,a5
   11304:	05c7851b          	addiw	a0,a5,92
   11308:	05b7859b          	addiw	a1,a5,91
   1130c:	0015169b          	slliw	a3,a0,0x1
   11310:	ac9ff06f          	j	10dd8 <_malloc_r+0x74>
   11314:	0067d713          	srli	a4,a5,0x6
   11318:	0007071b          	sext.w	a4,a4
   1131c:	0397059b          	addiw	a1,a4,57
   11320:	0387061b          	addiw	a2,a4,56
   11324:	0015959b          	slliw	a1,a1,0x1
   11328:	f2dff06f          	j	11254 <_malloc_r+0x4f0>
   1132c:	db2404e3          	beq	s0,s2,110d4 <_malloc_r+0x370>
   11330:	01093403          	ld	s0,16(s2)
   11334:	00843703          	ld	a4,8(s0)
   11338:	ffc77713          	andi	a4,a4,-4
   1133c:	e85ff06f          	j	111c0 <_malloc_r+0x45c>
   11340:	0108b783          	ld	a5,16(a7)
   11344:	fff6869b          	addiw	a3,a3,-1
   11348:	16f89863          	bne	a7,a5,114b8 <_malloc_r+0x754>
   1134c:	0036f793          	andi	a5,a3,3
   11350:	ff088893          	addi	a7,a7,-16
   11354:	fe0796e3          	bnez	a5,11340 <_malloc_r+0x5dc>
   11358:	00893783          	ld	a5,8(s2)
   1135c:	fff64713          	not	a4,a2
   11360:	00f777b3          	and	a5,a4,a5
   11364:	00f93423          	sd	a5,8(s2)
   11368:	00161613          	slli	a2,a2,0x1
   1136c:	d0c7e2e3          	bltu	a5,a2,11070 <_malloc_r+0x30c>
   11370:	d00600e3          	beqz	a2,11070 <_malloc_r+0x30c>
   11374:	00f67733          	and	a4,a2,a5
   11378:	00030693          	mv	a3,t1
   1137c:	b60714e3          	bnez	a4,10ee4 <_malloc_r+0x180>
   11380:	00161613          	slli	a2,a2,0x1
   11384:	00f67733          	and	a4,a2,a5
   11388:	0046869b          	addiw	a3,a3,4
   1138c:	fe070ae3          	beqz	a4,11380 <_malloc_r+0x61c>
   11390:	b55ff06f          	j	10ee4 <_malloc_r+0x180>
   11394:	15400713          	li	a4,340
   11398:	04f76463          	bltu	a4,a5,113e0 <_malloc_r+0x67c>
   1139c:	00f4d593          	srli	a1,s1,0xf
   113a0:	0005859b          	sext.w	a1,a1
   113a4:	0785851b          	addiw	a0,a1,120
   113a8:	0015169b          	slliw	a3,a0,0x1
   113ac:	0775859b          	addiw	a1,a1,119
   113b0:	a29ff06f          	j	10dd8 <_malloc_r+0x74>
   113b4:	00893783          	ld	a5,8(s2)
   113b8:	4026571b          	sraiw	a4,a2,0x2
   113bc:	00100613          	li	a2,1
   113c0:	00e61733          	sll	a4,a2,a4
   113c4:	00f767b3          	or	a5,a4,a5
   113c8:	00f93423          	sd	a5,8(s2)
   113cc:	00058713          	mv	a4,a1
   113d0:	eb5ff06f          	j	11284 <_malloc_r+0x520>
   113d4:	00100793          	li	a5,1
   113d8:	00fab423          	sd	a5,8(s5)
   113dc:	df5ff06f          	j	111d0 <_malloc_r+0x46c>
   113e0:	55400713          	li	a4,1364
   113e4:	0fe00693          	li	a3,254
   113e8:	07f00513          	li	a0,127
   113ec:	07e00593          	li	a1,126
   113f0:	9ef764e3          	bltu	a4,a5,10dd8 <_malloc_r+0x74>
   113f4:	0124d593          	srli	a1,s1,0x12
   113f8:	0005859b          	sext.w	a1,a1
   113fc:	07d5851b          	addiw	a0,a1,125
   11400:	0015169b          	slliw	a3,a0,0x1
   11404:	07c5859b          	addiw	a1,a1,124
   11408:	9d1ff06f          	j	10dd8 <_malloc_r+0x74>
   1140c:	05400613          	li	a2,84
   11410:	06e66063          	bltu	a2,a4,11470 <_malloc_r+0x70c>
   11414:	00c7d713          	srli	a4,a5,0xc
   11418:	0007071b          	sext.w	a4,a4
   1141c:	06f7059b          	addiw	a1,a4,111
   11420:	06e7061b          	addiw	a2,a4,110
   11424:	0015959b          	slliw	a1,a1,0x1
   11428:	e2dff06f          	j	11254 <_malloc_r+0x4f0>
   1142c:	034a1713          	slli	a4,s4,0x34
   11430:	ca071ce3          	bnez	a4,110e8 <_malloc_r+0x384>
   11434:	01093683          	ld	a3,16(s2)
   11438:	016b8733          	add	a4,s7,s6
   1143c:	00176713          	ori	a4,a4,1
   11440:	00e6b423          	sd	a4,8(a3)
   11444:	d59ff06f          	j	1119c <_malloc_r+0x438>
   11448:	00100713          	li	a4,1
   1144c:	00000a13          	li	s4,0
   11450:	d01ff06f          	j	11150 <_malloc_r+0x3ec>
   11454:	8351b023          	sd	s5,-2016(gp) # 24440 <__malloc_sbrk_base>
   11458:	ca9ff06f          	j	11100 <_malloc_r+0x39c>
   1145c:	01040593          	addi	a1,s0,16
   11460:	00098513          	mv	a0,s3
   11464:	728050ef          	jal	16b8c <_free_r>
   11468:	000c2783          	lw	a5,0(s8)
   1146c:	d31ff06f          	j	1119c <_malloc_r+0x438>
   11470:	15400613          	li	a2,340
   11474:	00e66e63          	bltu	a2,a4,11490 <_malloc_r+0x72c>
   11478:	00f7d713          	srli	a4,a5,0xf
   1147c:	0007071b          	sext.w	a4,a4
   11480:	0787059b          	addiw	a1,a4,120
   11484:	0777061b          	addiw	a2,a4,119
   11488:	0015959b          	slliw	a1,a1,0x1
   1148c:	dc9ff06f          	j	11254 <_malloc_r+0x4f0>
   11490:	55400513          	li	a0,1364
   11494:	0fe00593          	li	a1,254
   11498:	07e00613          	li	a2,126
   1149c:	dae56ce3          	bltu	a0,a4,11254 <_malloc_r+0x4f0>
   114a0:	0127d713          	srli	a4,a5,0x12
   114a4:	0007071b          	sext.w	a4,a4
   114a8:	07d7059b          	addiw	a1,a4,125
   114ac:	07c7061b          	addiw	a2,a4,124
   114b0:	0015959b          	slliw	a1,a1,0x1
   114b4:	da1ff06f          	j	11254 <_malloc_r+0x4f0>
   114b8:	00893783          	ld	a5,8(s2)
   114bc:	eadff06f          	j	11368 <_malloc_r+0x604>
   114c0:	0034d693          	srli	a3,s1,0x3
   114c4:	0006869b          	sext.w	a3,a3
   114c8:	0016879b          	addiw	a5,a3,1
   114cc:	0017979b          	slliw	a5,a5,0x1
   114d0:	ab9ff06f          	j	10f88 <_malloc_r+0x224>

00000000000114d4 <__malloc_lock>:
   114d4:	00008067          	ret

00000000000114d8 <__malloc_unlock>:
   114d8:	00008067          	ret

00000000000114dc <_printf_r>:
   114dc:	fb010113          	addi	sp,sp,-80
   114e0:	02c13023          	sd	a2,32(sp)
   114e4:	02d13423          	sd	a3,40(sp)
   114e8:	02f13c23          	sd	a5,56(sp)
   114ec:	02e13823          	sd	a4,48(sp)
   114f0:	05013023          	sd	a6,64(sp)
   114f4:	05113423          	sd	a7,72(sp)
   114f8:	00058613          	mv	a2,a1
   114fc:	01053583          	ld	a1,16(a0)
   11500:	02010793          	addi	a5,sp,32
   11504:	00078693          	mv	a3,a5
   11508:	00113c23          	sd	ra,24(sp)
   1150c:	00f13423          	sd	a5,8(sp)
   11510:	528000ef          	jal	11a38 <_vfprintf_r>
   11514:	01813083          	ld	ra,24(sp)
   11518:	05010113          	addi	sp,sp,80
   1151c:	00008067          	ret

0000000000011520 <printf>:
   11520:	8181b303          	ld	t1,-2024(gp) # 24438 <_impure_ptr>
   11524:	fa010113          	addi	sp,sp,-96
   11528:	02c13823          	sd	a2,48(sp)
   1152c:	02d13c23          	sd	a3,56(sp)
   11530:	04f13423          	sd	a5,72(sp)
   11534:	02b13423          	sd	a1,40(sp)
   11538:	04e13023          	sd	a4,64(sp)
   1153c:	05013823          	sd	a6,80(sp)
   11540:	05113c23          	sd	a7,88(sp)
   11544:	01033583          	ld	a1,16(t1)
   11548:	02810793          	addi	a5,sp,40
   1154c:	00050613          	mv	a2,a0
   11550:	00078693          	mv	a3,a5
   11554:	00030513          	mv	a0,t1
   11558:	00113c23          	sd	ra,24(sp)
   1155c:	00f13423          	sd	a5,8(sp)
   11560:	4d8000ef          	jal	11a38 <_vfprintf_r>
   11564:	01813083          	ld	ra,24(sp)
   11568:	06010113          	addi	sp,sp,96
   1156c:	00008067          	ret

0000000000011570 <_putchar_r>:
   11570:	01053603          	ld	a2,16(a0)
   11574:	0180006f          	j	1158c <_putc_r>

0000000000011578 <putchar>:
   11578:	8181b783          	ld	a5,-2024(gp) # 24438 <_impure_ptr>
   1157c:	00050593          	mv	a1,a0
   11580:	0107b603          	ld	a2,16(a5)
   11584:	00078513          	mv	a0,a5
   11588:	0040006f          	j	1158c <_putc_r>

000000000001158c <_putc_r>:
   1158c:	fe010113          	addi	sp,sp,-32
   11590:	00813823          	sd	s0,16(sp)
   11594:	00113c23          	sd	ra,24(sp)
   11598:	00050413          	mv	s0,a0
   1159c:	00050663          	beqz	a0,115a8 <_putc_r+0x1c>
   115a0:	05052783          	lw	a5,80(a0)
   115a4:	06078863          	beqz	a5,11614 <_putc_r+0x88>
   115a8:	00c62783          	lw	a5,12(a2)
   115ac:	fff7879b          	addiw	a5,a5,-1
   115b0:	00f62623          	sw	a5,12(a2)
   115b4:	0207c663          	bltz	a5,115e0 <_putc_r+0x54>
   115b8:	00063783          	ld	a5,0(a2)
   115bc:	00b78023          	sb	a1,0(a5)
   115c0:	00063783          	ld	a5,0(a2)
   115c4:	01813083          	ld	ra,24(sp)
   115c8:	00178713          	addi	a4,a5,1
   115cc:	00e63023          	sd	a4,0(a2)
   115d0:	0007c503          	lbu	a0,0(a5)
   115d4:	01013403          	ld	s0,16(sp)
   115d8:	02010113          	addi	sp,sp,32
   115dc:	00008067          	ret
   115e0:	02862703          	lw	a4,40(a2)
   115e4:	00e7ce63          	blt	a5,a4,11600 <_putc_r+0x74>
   115e8:	00063783          	ld	a5,0(a2)
   115ec:	00a00713          	li	a4,10
   115f0:	00b78023          	sb	a1,0(a5)
   115f4:	00063783          	ld	a5,0(a2)
   115f8:	0007c583          	lbu	a1,0(a5)
   115fc:	fce594e3          	bne	a1,a4,115c4 <_putc_r+0x38>
   11600:	00040513          	mv	a0,s0
   11604:	01813083          	ld	ra,24(sp)
   11608:	01013403          	ld	s0,16(sp)
   1160c:	02010113          	addi	sp,sp,32
   11610:	32c0306f          	j	1493c <__swbuf_r>
   11614:	00c13423          	sd	a2,8(sp)
   11618:	00b13023          	sd	a1,0(sp)
   1161c:	1ac050ef          	jal	167c8 <__sinit>
   11620:	00813603          	ld	a2,8(sp)
   11624:	00013583          	ld	a1,0(sp)
   11628:	f81ff06f          	j	115a8 <_putc_r+0x1c>

000000000001162c <putc>:
   1162c:	fd010113          	addi	sp,sp,-48
   11630:	02813023          	sd	s0,32(sp)
   11634:	8181b403          	ld	s0,-2024(gp) # 24438 <_impure_ptr>
   11638:	00913c23          	sd	s1,24(sp)
   1163c:	02113423          	sd	ra,40(sp)
   11640:	00050493          	mv	s1,a0
   11644:	00040663          	beqz	s0,11650 <putc+0x24>
   11648:	05042783          	lw	a5,80(s0)
   1164c:	06078663          	beqz	a5,116b8 <putc+0x8c>
   11650:	00c5a783          	lw	a5,12(a1)
   11654:	fff7879b          	addiw	a5,a5,-1
   11658:	00f5a623          	sw	a5,12(a1)
   1165c:	0207c863          	bltz	a5,1168c <putc+0x60>
   11660:	0005b783          	ld	a5,0(a1)
   11664:	00978023          	sb	s1,0(a5)
   11668:	0005b783          	ld	a5,0(a1)
   1166c:	02813083          	ld	ra,40(sp)
   11670:	00178713          	addi	a4,a5,1
   11674:	00e5b023          	sd	a4,0(a1)
   11678:	0007c503          	lbu	a0,0(a5)
   1167c:	02013403          	ld	s0,32(sp)
   11680:	01813483          	ld	s1,24(sp)
   11684:	03010113          	addi	sp,sp,48
   11688:	00008067          	ret
   1168c:	0285a703          	lw	a4,40(a1)
   11690:	02e7ce63          	blt	a5,a4,116cc <putc+0xa0>
   11694:	0005b783          	ld	a5,0(a1)
   11698:	00a00693          	li	a3,10
   1169c:	00978023          	sb	s1,0(a5)
   116a0:	0005b783          	ld	a5,0(a1)
   116a4:	0007c703          	lbu	a4,0(a5)
   116a8:	fcd712e3          	bne	a4,a3,1166c <putc+0x40>
   116ac:	00058613          	mv	a2,a1
   116b0:	00070593          	mv	a1,a4
   116b4:	0200006f          	j	116d4 <putc+0xa8>
   116b8:	00040513          	mv	a0,s0
   116bc:	00b13423          	sd	a1,8(sp)
   116c0:	108050ef          	jal	167c8 <__sinit>
   116c4:	00813583          	ld	a1,8(sp)
   116c8:	f89ff06f          	j	11650 <putc+0x24>
   116cc:	00058613          	mv	a2,a1
   116d0:	00048593          	mv	a1,s1
   116d4:	00040513          	mv	a0,s0
   116d8:	02813083          	ld	ra,40(sp)
   116dc:	02013403          	ld	s0,32(sp)
   116e0:	01813483          	ld	s1,24(sp)
   116e4:	03010113          	addi	sp,sp,48
   116e8:	2540306f          	j	1493c <__swbuf_r>

00000000000116ec <_puts_r>:
   116ec:	fa010113          	addi	sp,sp,-96
   116f0:	04813823          	sd	s0,80(sp)
   116f4:	00050413          	mv	s0,a0
   116f8:	00058513          	mv	a0,a1
   116fc:	04913423          	sd	s1,72(sp)
   11700:	04113c23          	sd	ra,88(sp)
   11704:	00058493          	mv	s1,a1
   11708:	260000ef          	jal	11968 <strlen>
   1170c:	01043583          	ld	a1,16(s0)
   11710:	00022737          	lui	a4,0x22
   11714:	cd070713          	addi	a4,a4,-816 # 21cd0 <zeroes.4123+0x668>
   11718:	01059683          	lh	a3,16(a1)
   1171c:	02e13823          	sd	a4,48(sp)
   11720:	00100713          	li	a4,1
   11724:	02e13c23          	sd	a4,56(sp)
   11728:	02010713          	addi	a4,sp,32
   1172c:	00150613          	addi	a2,a0,1
   11730:	00e13423          	sd	a4,8(sp)
   11734:	00200713          	li	a4,2
   11738:	02913023          	sd	s1,32(sp)
   1173c:	02a13423          	sd	a0,40(sp)
   11740:	00c13c23          	sd	a2,24(sp)
   11744:	00e12823          	sw	a4,16(sp)
   11748:	03269793          	slli	a5,a3,0x32
   1174c:	0207c263          	bltz	a5,11770 <_puts_r+0x84>
   11750:	0ac5a783          	lw	a5,172(a1)
   11754:	ffffe737          	lui	a4,0xffffe
   11758:	00002637          	lui	a2,0x2
   1175c:	fff7071b          	addiw	a4,a4,-1
   11760:	00c6e6b3          	or	a3,a3,a2
   11764:	00e7f733          	and	a4,a5,a4
   11768:	00d59823          	sh	a3,16(a1)
   1176c:	0ae5a623          	sw	a4,172(a1)
   11770:	00810613          	addi	a2,sp,8
   11774:	00040513          	mv	a0,s0
   11778:	724050ef          	jal	16e9c <__sfvwrite_r>
   1177c:	05813083          	ld	ra,88(sp)
   11780:	00a03533          	snez	a0,a0
   11784:	40a0053b          	negw	a0,a0
   11788:	00a56513          	ori	a0,a0,10
   1178c:	05013403          	ld	s0,80(sp)
   11790:	04813483          	ld	s1,72(sp)
   11794:	06010113          	addi	sp,sp,96
   11798:	00008067          	ret

000000000001179c <puts>:
   1179c:	00050593          	mv	a1,a0
   117a0:	8181b503          	ld	a0,-2024(gp) # 24438 <_impure_ptr>
   117a4:	f49ff06f          	j	116ec <_puts_r>

00000000000117a8 <scanf>:
   117a8:	8181b303          	ld	t1,-2024(gp) # 24438 <_impure_ptr>
   117ac:	fa010113          	addi	sp,sp,-96
   117b0:	02c13823          	sd	a2,48(sp)
   117b4:	02d13c23          	sd	a3,56(sp)
   117b8:	04f13423          	sd	a5,72(sp)
   117bc:	02b13423          	sd	a1,40(sp)
   117c0:	04e13023          	sd	a4,64(sp)
   117c4:	05013823          	sd	a6,80(sp)
   117c8:	05113c23          	sd	a7,88(sp)
   117cc:	00833583          	ld	a1,8(t1)
   117d0:	02810793          	addi	a5,sp,40
   117d4:	00050613          	mv	a2,a0
   117d8:	00078693          	mv	a3,a5
   117dc:	00030513          	mv	a0,t1
   117e0:	00113c23          	sd	ra,24(sp)
   117e4:	00f13423          	sd	a5,8(sp)
   117e8:	108030ef          	jal	148f0 <_vfscanf_r>
   117ec:	01813083          	ld	ra,24(sp)
   117f0:	06010113          	addi	sp,sp,96
   117f4:	00008067          	ret

00000000000117f8 <_scanf_r>:
   117f8:	fb010113          	addi	sp,sp,-80
   117fc:	02c13023          	sd	a2,32(sp)
   11800:	02d13423          	sd	a3,40(sp)
   11804:	02f13c23          	sd	a5,56(sp)
   11808:	02e13823          	sd	a4,48(sp)
   1180c:	05013023          	sd	a6,64(sp)
   11810:	05113423          	sd	a7,72(sp)
   11814:	00058613          	mv	a2,a1
   11818:	00853583          	ld	a1,8(a0)
   1181c:	02010793          	addi	a5,sp,32
   11820:	00078693          	mv	a3,a5
   11824:	00113c23          	sd	ra,24(sp)
   11828:	00f13423          	sd	a5,8(sp)
   1182c:	0c4030ef          	jal	148f0 <_vfscanf_r>
   11830:	01813083          	ld	ra,24(sp)
   11834:	05010113          	addi	sp,sp,80
   11838:	00008067          	ret

000000000001183c <strcmp>:
   1183c:	00b56733          	or	a4,a0,a1
   11840:	fff00393          	li	t2,-1
   11844:	00777713          	andi	a4,a4,7
   11848:	0c071c63          	bnez	a4,11920 <strcmp+0xe4>
   1184c:	00013e17          	auipc	t3,0x13
   11850:	c34e3e03          	ld	t3,-972(t3) # 24480 <mask>
   11854:	00053603          	ld	a2,0(a0)
   11858:	0005b683          	ld	a3,0(a1)
   1185c:	01c672b3          	and	t0,a2,t3
   11860:	01c66333          	or	t1,a2,t3
   11864:	01c282b3          	add	t0,t0,t3
   11868:	0062e2b3          	or	t0,t0,t1
   1186c:	0c729e63          	bne	t0,t2,11948 <strcmp+0x10c>
   11870:	04d61663          	bne	a2,a3,118bc <strcmp+0x80>
   11874:	00853603          	ld	a2,8(a0)
   11878:	0085b683          	ld	a3,8(a1)
   1187c:	01c672b3          	and	t0,a2,t3
   11880:	01c66333          	or	t1,a2,t3
   11884:	01c282b3          	add	t0,t0,t3
   11888:	0062e2b3          	or	t0,t0,t1
   1188c:	0a729a63          	bne	t0,t2,11940 <strcmp+0x104>
   11890:	02d61663          	bne	a2,a3,118bc <strcmp+0x80>
   11894:	01053603          	ld	a2,16(a0)
   11898:	0105b683          	ld	a3,16(a1)
   1189c:	01c672b3          	and	t0,a2,t3
   118a0:	01c66333          	or	t1,a2,t3
   118a4:	01c282b3          	add	t0,t0,t3
   118a8:	0062e2b3          	or	t0,t0,t1
   118ac:	0a729463          	bne	t0,t2,11954 <strcmp+0x118>
   118b0:	01850513          	addi	a0,a0,24
   118b4:	01858593          	addi	a1,a1,24
   118b8:	f8d60ee3          	beq	a2,a3,11854 <strcmp+0x18>
   118bc:	03061713          	slli	a4,a2,0x30
   118c0:	03069793          	slli	a5,a3,0x30
   118c4:	02f71a63          	bne	a4,a5,118f8 <strcmp+0xbc>
   118c8:	02061713          	slli	a4,a2,0x20
   118cc:	02069793          	slli	a5,a3,0x20
   118d0:	02f71463          	bne	a4,a5,118f8 <strcmp+0xbc>
   118d4:	01061713          	slli	a4,a2,0x10
   118d8:	01069793          	slli	a5,a3,0x10
   118dc:	00f71e63          	bne	a4,a5,118f8 <strcmp+0xbc>
   118e0:	03065713          	srli	a4,a2,0x30
   118e4:	0306d793          	srli	a5,a3,0x30
   118e8:	40f70533          	sub	a0,a4,a5
   118ec:	0ff57593          	andi	a1,a0,255
   118f0:	02059063          	bnez	a1,11910 <strcmp+0xd4>
   118f4:	00008067          	ret
   118f8:	03075713          	srli	a4,a4,0x30
   118fc:	0307d793          	srli	a5,a5,0x30
   11900:	40f70533          	sub	a0,a4,a5
   11904:	0ff57593          	andi	a1,a0,255
   11908:	00059463          	bnez	a1,11910 <strcmp+0xd4>
   1190c:	00008067          	ret
   11910:	0ff77713          	andi	a4,a4,255
   11914:	0ff7f793          	andi	a5,a5,255
   11918:	40f70533          	sub	a0,a4,a5
   1191c:	00008067          	ret
   11920:	00054603          	lbu	a2,0(a0)
   11924:	0005c683          	lbu	a3,0(a1)
   11928:	00150513          	addi	a0,a0,1
   1192c:	00158593          	addi	a1,a1,1
   11930:	00d61463          	bne	a2,a3,11938 <strcmp+0xfc>
   11934:	fe0616e3          	bnez	a2,11920 <strcmp+0xe4>
   11938:	40d60533          	sub	a0,a2,a3
   1193c:	00008067          	ret
   11940:	00850513          	addi	a0,a0,8
   11944:	00858593          	addi	a1,a1,8
   11948:	fcd61ce3          	bne	a2,a3,11920 <strcmp+0xe4>
   1194c:	00000513          	li	a0,0
   11950:	00008067          	ret
   11954:	01050513          	addi	a0,a0,16
   11958:	01058593          	addi	a1,a1,16
   1195c:	fcd612e3          	bne	a2,a3,11920 <strcmp+0xe4>
   11960:	00000513          	li	a0,0
   11964:	00008067          	ret

0000000000011968 <strlen>:
   11968:	00757793          	andi	a5,a0,7
   1196c:	00050593          	mv	a1,a0
   11970:	06079a63          	bnez	a5,119e4 <strlen+0x7c>
   11974:	000247b7          	lui	a5,0x24
   11978:	4807b683          	ld	a3,1152(a5) # 24480 <mask>
   1197c:	fff00613          	li	a2,-1
   11980:	00850513          	addi	a0,a0,8
   11984:	ff853783          	ld	a5,-8(a0)
   11988:	00d7f733          	and	a4,a5,a3
   1198c:	00d70733          	add	a4,a4,a3
   11990:	00d7e7b3          	or	a5,a5,a3
   11994:	00f767b3          	or	a5,a4,a5
   11998:	fec784e3          	beq	a5,a2,11980 <strlen+0x18>
   1199c:	ff854783          	lbu	a5,-8(a0)
   119a0:	40b505b3          	sub	a1,a0,a1
   119a4:	06078263          	beqz	a5,11a08 <strlen+0xa0>
   119a8:	ff954783          	lbu	a5,-7(a0)
   119ac:	04078a63          	beqz	a5,11a00 <strlen+0x98>
   119b0:	ffa54783          	lbu	a5,-6(a0)
   119b4:	06078263          	beqz	a5,11a18 <strlen+0xb0>
   119b8:	ffb54783          	lbu	a5,-5(a0)
   119bc:	04078a63          	beqz	a5,11a10 <strlen+0xa8>
   119c0:	ffc54783          	lbu	a5,-4(a0)
   119c4:	ffd54703          	lbu	a4,-3(a0)
   119c8:	ffe54683          	lbu	a3,-2(a0)
   119cc:	04078a63          	beqz	a5,11a20 <strlen+0xb8>
   119d0:	04070c63          	beqz	a4,11a28 <strlen+0xc0>
   119d4:	fff58513          	addi	a0,a1,-1
   119d8:	04068c63          	beqz	a3,11a30 <strlen+0xc8>
   119dc:	00008067          	ret
   119e0:	f8070ae3          	beqz	a4,11974 <strlen+0xc>
   119e4:	00054783          	lbu	a5,0(a0)
   119e8:	00150513          	addi	a0,a0,1
   119ec:	00757713          	andi	a4,a0,7
   119f0:	fe0798e3          	bnez	a5,119e0 <strlen+0x78>
   119f4:	40b50533          	sub	a0,a0,a1
   119f8:	fff50513          	addi	a0,a0,-1
   119fc:	00008067          	ret
   11a00:	ff958513          	addi	a0,a1,-7
   11a04:	00008067          	ret
   11a08:	ff858513          	addi	a0,a1,-8
   11a0c:	00008067          	ret
   11a10:	ffb58513          	addi	a0,a1,-5
   11a14:	00008067          	ret
   11a18:	ffa58513          	addi	a0,a1,-6
   11a1c:	00008067          	ret
   11a20:	ffc58513          	addi	a0,a1,-4
   11a24:	00008067          	ret
   11a28:	ffd58513          	addi	a0,a1,-3
   11a2c:	00008067          	ret
   11a30:	ffe58513          	addi	a0,a1,-2
   11a34:	00008067          	ret

0000000000011a38 <_vfprintf_r>:
   11a38:	e1010113          	addi	sp,sp,-496
   11a3c:	1e113423          	sd	ra,488(sp)
   11a40:	1d313423          	sd	s3,456(sp)
   11a44:	1d413023          	sd	s4,448(sp)
   11a48:	1b713423          	sd	s7,424(sp)
   11a4c:	00058a13          	mv	s4,a1
   11a50:	00060993          	mv	s3,a2
   11a54:	02d13423          	sd	a3,40(sp)
   11a58:	1e813023          	sd	s0,480(sp)
   11a5c:	1c913c23          	sd	s1,472(sp)
   11a60:	1d213823          	sd	s2,464(sp)
   11a64:	1b513c23          	sd	s5,440(sp)
   11a68:	1b613823          	sd	s6,432(sp)
   11a6c:	1b813023          	sd	s8,416(sp)
   11a70:	19913c23          	sd	s9,408(sp)
   11a74:	19a13823          	sd	s10,400(sp)
   11a78:	19b13423          	sd	s11,392(sp)
   11a7c:	16813c27          	fsd	fs0,376(sp)
   11a80:	00050b93          	mv	s7,a0
   11a84:	30d050ef          	jal	17590 <_localeconv_r>
   11a88:	00053783          	ld	a5,0(a0)
   11a8c:	00078513          	mv	a0,a5
   11a90:	06f13023          	sd	a5,96(sp)
   11a94:	ed5ff0ef          	jal	11968 <strlen>
   11a98:	06a13423          	sd	a0,104(sp)
   11a9c:	000b8663          	beqz	s7,11aa8 <_vfprintf_r+0x70>
   11aa0:	050ba783          	lw	a5,80(s7)
   11aa4:	2e078c63          	beqz	a5,11d9c <_vfprintf_r+0x364>
   11aa8:	010a1683          	lh	a3,16(s4)
   11aac:	03069793          	slli	a5,a3,0x30
   11ab0:	0307d793          	srli	a5,a5,0x30
   11ab4:	03279713          	slli	a4,a5,0x32
   11ab8:	02074a63          	bltz	a4,11aec <_vfprintf_r+0xb4>
   11abc:	000027b7          	lui	a5,0x2
   11ac0:	0aca2603          	lw	a2,172(s4)
   11ac4:	00f6e7b3          	or	a5,a3,a5
   11ac8:	0107979b          	slliw	a5,a5,0x10
   11acc:	ffffe737          	lui	a4,0xffffe
   11ad0:	4107d79b          	sraiw	a5,a5,0x10
   11ad4:	fff7071b          	addiw	a4,a4,-1
   11ad8:	00e67733          	and	a4,a2,a4
   11adc:	00fa1823          	sh	a5,16(s4)
   11ae0:	03079793          	slli	a5,a5,0x30
   11ae4:	0aea2623          	sw	a4,172(s4)
   11ae8:	0307d793          	srli	a5,a5,0x30
   11aec:	0087f713          	andi	a4,a5,8
   11af0:	1e070063          	beqz	a4,11cd0 <_vfprintf_r+0x298>
   11af4:	018a3703          	ld	a4,24(s4)
   11af8:	1c070c63          	beqz	a4,11cd0 <_vfprintf_r+0x298>
   11afc:	01a7f793          	andi	a5,a5,26
   11b00:	00a00713          	li	a4,10
   11b04:	1ee78863          	beq	a5,a4,11cf4 <_vfprintf_r+0x2bc>
   11b08:	000207b7          	lui	a5,0x20
   11b0c:	77878793          	addi	a5,a5,1912 # 20778 <sulp+0x68>
   11b10:	0f010b13          	addi	s6,sp,240
   11b14:	02f13823          	sd	a5,48(sp)
   11b18:	0ef10793          	addi	a5,sp,239
   11b1c:	00021ab7          	lui	s5,0x21
   11b20:	000214b7          	lui	s1,0x21
   11b24:	40fb07b3          	sub	a5,s6,a5
   11b28:	04013c23          	sd	zero,88(sp)
   11b2c:	0b613823          	sd	s6,176(sp)
   11b30:	0c013023          	sd	zero,192(sp)
   11b34:	0a012c23          	sw	zero,184(sp)
   11b38:	06012823          	sw	zero,112(sp)
   11b3c:	000b0893          	mv	a7,s6
   11b40:	02013c23          	sd	zero,56(sp)
   11b44:	06012a23          	sw	zero,116(sp)
   11b48:	00012e23          	sw	zero,28(sp)
   11b4c:	8e0a8a93          	addi	s5,s5,-1824 # 208e0 <blanks.4193>
   11b50:	8f048493          	addi	s1,s1,-1808 # 208f0 <zeroes.4194>
   11b54:	06f13c23          	sd	a5,120(sp)
   11b58:	0009c783          	lbu	a5,0(s3)
   11b5c:	0e0782e3          	beqz	a5,12440 <_vfprintf_r+0xa08>
   11b60:	02500713          	li	a4,37
   11b64:	00098413          	mv	s0,s3
   11b68:	00e79663          	bne	a5,a4,11b74 <_vfprintf_r+0x13c>
   11b6c:	0580006f          	j	11bc4 <_vfprintf_r+0x18c>
   11b70:	00e78863          	beq	a5,a4,11b80 <_vfprintf_r+0x148>
   11b74:	00140413          	addi	s0,s0,1
   11b78:	00044783          	lbu	a5,0(s0)
   11b7c:	fe079ae3          	bnez	a5,11b70 <_vfprintf_r+0x138>
   11b80:	4134093b          	subw	s2,s0,s3
   11b84:	04090063          	beqz	s2,11bc4 <_vfprintf_r+0x18c>
   11b88:	0c013703          	ld	a4,192(sp)
   11b8c:	0b812783          	lw	a5,184(sp)
   11b90:	00090693          	mv	a3,s2
   11b94:	00d70733          	add	a4,a4,a3
   11b98:	0017879b          	addiw	a5,a5,1
   11b9c:	0138b023          	sd	s3,0(a7)
   11ba0:	00d8b423          	sd	a3,8(a7)
   11ba4:	0ce13023          	sd	a4,192(sp)
   11ba8:	0af12c23          	sw	a5,184(sp)
   11bac:	00700713          	li	a4,7
   11bb0:	01088893          	addi	a7,a7,16
   11bb4:	16f74063          	blt	a4,a5,11d14 <_vfprintf_r+0x2dc>
   11bb8:	01c12783          	lw	a5,28(sp)
   11bbc:	012787bb          	addw	a5,a5,s2
   11bc0:	00f12e23          	sw	a5,28(sp)
   11bc4:	00044783          	lbu	a5,0(s0)
   11bc8:	16078463          	beqz	a5,11d30 <_vfprintf_r+0x2f8>
   11bcc:	00140993          	addi	s3,s0,1
   11bd0:	080107a3          	sb	zero,143(sp)
   11bd4:	00000613          	li	a2,0
   11bd8:	00000593          	li	a1,0
   11bdc:	fff00413          	li	s0,-1
   11be0:	00012c23          	sw	zero,24(sp)
   11be4:	00000c13          	li	s8,0
   11be8:	05800713          	li	a4,88
   11bec:	00900693          	li	a3,9
   11bf0:	02a00513          	li	a0,42
   11bf4:	0009cd03          	lbu	s10,0(s3)
   11bf8:	00198993          	addi	s3,s3,1
   11bfc:	fe0d079b          	addiw	a5,s10,-32
   11c00:	1cf762e3          	bltu	a4,a5,125c4 <_vfprintf_r+0xb8c>
   11c04:	03013803          	ld	a6,48(sp)
   11c08:	02079793          	slli	a5,a5,0x20
   11c0c:	01e7d793          	srli	a5,a5,0x1e
   11c10:	010787b3          	add	a5,a5,a6
   11c14:	0007a783          	lw	a5,0(a5)
   11c18:	00078067          	jr	a5
   11c1c:	010c6c13          	ori	s8,s8,16
   11c20:	fd5ff06f          	j	11bf4 <_vfprintf_r+0x1bc>
   11c24:	02813783          	ld	a5,40(sp)
   11c28:	0007a803          	lw	a6,0(a5)
   11c2c:	00878793          	addi	a5,a5,8
   11c30:	02f13423          	sd	a5,40(sp)
   11c34:	01012c23          	sw	a6,24(sp)
   11c38:	fa085ee3          	bgez	a6,11bf4 <_vfprintf_r+0x1bc>
   11c3c:	410007bb          	negw	a5,a6
   11c40:	00f12c23          	sw	a5,24(sp)
   11c44:	004c6c13          	ori	s8,s8,4
   11c48:	fadff06f          	j	11bf4 <_vfprintf_r+0x1bc>
   11c4c:	03000793          	li	a5,48
   11c50:	08f10823          	sb	a5,144(sp)
   11c54:	07800793          	li	a5,120
   11c58:	08f108a3          	sb	a5,145(sp)
   11c5c:	02813783          	ld	a5,40(sp)
   11c60:	080107a3          	sb	zero,143(sp)
   11c64:	002c6693          	ori	a3,s8,2
   11c68:	00878713          	addi	a4,a5,8
   11c6c:	0007b783          	ld	a5,0(a5)
   11c70:	180444e3          	bltz	s0,125f8 <_vfprintf_r+0xbc0>
   11c74:	f7fc7c13          	andi	s8,s8,-129
   11c78:	02e13423          	sd	a4,40(sp)
   11c7c:	002c6c13          	ori	s8,s8,2
   11c80:	120796e3          	bnez	a5,125ac <_vfprintf_r+0xb74>
   11c84:	000227b7          	lui	a5,0x22
   11c88:	d1078793          	addi	a5,a5,-752 # 21d10 <zeroes.4123+0x6a8>
   11c8c:	02f13c23          	sd	a5,56(sp)
   11c90:	07800d13          	li	s10,120
   11c94:	00000613          	li	a2,0
   11c98:	7e040463          	beqz	s0,12480 <_vfprintf_r+0xa48>
   11c9c:	00000793          	li	a5,0
   11ca0:	000b0913          	mv	s2,s6
   11ca4:	03813683          	ld	a3,56(sp)
   11ca8:	00f7f713          	andi	a4,a5,15
   11cac:	fff90913          	addi	s2,s2,-1
   11cb0:	00e68733          	add	a4,a3,a4
   11cb4:	00074703          	lbu	a4,0(a4) # ffffffffffffe000 <_end+0xfffffffffffd7208>
   11cb8:	0047d793          	srli	a5,a5,0x4
   11cbc:	00e90023          	sb	a4,0(s2)
   11cc0:	fe0792e3          	bnez	a5,11ca4 <_vfprintf_r+0x26c>
   11cc4:	412b07b3          	sub	a5,s6,s2
   11cc8:	02f12023          	sw	a5,32(sp)
   11ccc:	1680006f          	j	11e34 <_vfprintf_r+0x3fc>
   11cd0:	000a0593          	mv	a1,s4
   11cd4:	000b8513          	mv	a0,s7
   11cd8:	5ed020ef          	jal	14ac4 <__swsetup_r>
   11cdc:	00050463          	beqz	a0,11ce4 <_vfprintf_r+0x2ac>
   11ce0:	3940106f          	j	13074 <_vfprintf_r+0x163c>
   11ce4:	010a5783          	lhu	a5,16(s4)
   11ce8:	00a00713          	li	a4,10
   11cec:	01a7f793          	andi	a5,a5,26
   11cf0:	e0e79ce3          	bne	a5,a4,11b08 <_vfprintf_r+0xd0>
   11cf4:	012a1783          	lh	a5,18(s4)
   11cf8:	e007c8e3          	bltz	a5,11b08 <_vfprintf_r+0xd0>
   11cfc:	02813683          	ld	a3,40(sp)
   11d00:	00098613          	mv	a2,s3
   11d04:	000a0593          	mv	a1,s4
   11d08:	000b8513          	mv	a0,s7
   11d0c:	1c9010ef          	jal	136d4 <__sbprintf>
   11d10:	04c0006f          	j	11d5c <_vfprintf_r+0x324>
   11d14:	0b010613          	addi	a2,sp,176
   11d18:	000a0593          	mv	a1,s4
   11d1c:	000b8513          	mv	a0,s7
   11d20:	3080b0ef          	jal	1d028 <__sprint_r>
   11d24:	02051263          	bnez	a0,11d48 <_vfprintf_r+0x310>
   11d28:	000b0893          	mv	a7,s6
   11d2c:	e8dff06f          	j	11bb8 <_vfprintf_r+0x180>
   11d30:	0c013783          	ld	a5,192(sp)
   11d34:	00078a63          	beqz	a5,11d48 <_vfprintf_r+0x310>
   11d38:	0b010613          	addi	a2,sp,176
   11d3c:	000a0593          	mv	a1,s4
   11d40:	000b8513          	mv	a0,s7
   11d44:	2e40b0ef          	jal	1d028 <__sprint_r>
   11d48:	010a5783          	lhu	a5,16(s4)
   11d4c:	0407f793          	andi	a5,a5,64
   11d50:	00078463          	beqz	a5,11d58 <_vfprintf_r+0x320>
   11d54:	3200106f          	j	13074 <_vfprintf_r+0x163c>
   11d58:	01c12503          	lw	a0,28(sp)
   11d5c:	1e813083          	ld	ra,488(sp)
   11d60:	1e013403          	ld	s0,480(sp)
   11d64:	1d813483          	ld	s1,472(sp)
   11d68:	1d013903          	ld	s2,464(sp)
   11d6c:	1c813983          	ld	s3,456(sp)
   11d70:	1c013a03          	ld	s4,448(sp)
   11d74:	1b813a83          	ld	s5,440(sp)
   11d78:	1b013b03          	ld	s6,432(sp)
   11d7c:	1a813b83          	ld	s7,424(sp)
   11d80:	1a013c03          	ld	s8,416(sp)
   11d84:	19813c83          	ld	s9,408(sp)
   11d88:	19013d03          	ld	s10,400(sp)
   11d8c:	18813d83          	ld	s11,392(sp)
   11d90:	17813407          	fld	fs0,376(sp)
   11d94:	1f010113          	addi	sp,sp,496
   11d98:	00008067          	ret
   11d9c:	000b8513          	mv	a0,s7
   11da0:	229040ef          	jal	167c8 <__sinit>
   11da4:	d05ff06f          	j	11aa8 <_vfprintf_r+0x70>
   11da8:	00100613          	li	a2,1
   11dac:	02b00593          	li	a1,43
   11db0:	e45ff06f          	j	11bf4 <_vfprintf_r+0x1bc>
   11db4:	00060463          	beqz	a2,11dbc <_vfprintf_r+0x384>
   11db8:	0d90106f          	j	13690 <_vfprintf_r+0x1c58>
   11dbc:	010c7793          	andi	a5,s8,16
   11dc0:	22078263          	beqz	a5,11fe4 <_vfprintf_r+0x5ac>
   11dc4:	02813783          	ld	a5,40(sp)
   11dc8:	080107a3          	sb	zero,143(sp)
   11dcc:	00878713          	addi	a4,a5,8
   11dd0:	0007b783          	ld	a5,0(a5)
   11dd4:	22044663          	bltz	s0,12000 <_vfprintf_r+0x5c8>
   11dd8:	02e13423          	sd	a4,40(sp)
   11ddc:	f7fc7c13          	andi	s8,s8,-129
   11de0:	22079663          	bnez	a5,1200c <_vfprintf_r+0x5d4>
   11de4:	00000613          	li	a2,0
   11de8:	00000793          	li	a5,0
   11dec:	00041463          	bnez	s0,11df4 <_vfprintf_r+0x3bc>
   11df0:	3680106f          	j	13158 <_vfprintf_r+0x1720>
   11df4:	000b0913          	mv	s2,s6
   11df8:	0077f713          	andi	a4,a5,7
   11dfc:	fff90913          	addi	s2,s2,-1
   11e00:	0307071b          	addiw	a4,a4,48
   11e04:	00e90023          	sb	a4,0(s2)
   11e08:	0037d793          	srli	a5,a5,0x3
   11e0c:	fe0796e3          	bnez	a5,11df8 <_vfprintf_r+0x3c0>
   11e10:	001c7793          	andi	a5,s8,1
   11e14:	ea0788e3          	beqz	a5,11cc4 <_vfprintf_r+0x28c>
   11e18:	03000793          	li	a5,48
   11e1c:	eaf704e3          	beq	a4,a5,11cc4 <_vfprintf_r+0x28c>
   11e20:	fff90713          	addi	a4,s2,-1
   11e24:	40eb06b3          	sub	a3,s6,a4
   11e28:	fef90fa3          	sb	a5,-1(s2)
   11e2c:	02d12023          	sw	a3,32(sp)
   11e30:	00070913          	mv	s2,a4
   11e34:	02012783          	lw	a5,32(sp)
   11e38:	00078d93          	mv	s11,a5
   11e3c:	0087d463          	ble	s0,a5,11e44 <_vfprintf_r+0x40c>
   11e40:	00040d93          	mv	s11,s0
   11e44:	01b12423          	sw	s11,8(sp)
   11e48:	04012623          	sw	zero,76(sp)
   11e4c:	2a060263          	beqz	a2,120f0 <_vfprintf_r+0x6b8>
   11e50:	00812783          	lw	a5,8(sp)
   11e54:	0017879b          	addiw	a5,a5,1
   11e58:	00f12423          	sw	a5,8(sp)
   11e5c:	2940006f          	j	120f0 <_vfprintf_r+0x6b8>
   11e60:	0009cd03          	lbu	s10,0(s3)
   11e64:	00198993          	addi	s3,s3,1
   11e68:	00ad1463          	bne	s10,a0,11e70 <_vfprintf_r+0x438>
   11e6c:	75c0106f          	j	135c8 <_vfprintf_r+0x1b90>
   11e70:	fd0d079b          	addiw	a5,s10,-48
   11e74:	00000413          	li	s0,0
   11e78:	d8f6e2e3          	bltu	a3,a5,11bfc <_vfprintf_r+0x1c4>
   11e7c:	00198993          	addi	s3,s3,1
   11e80:	fff9cd03          	lbu	s10,-1(s3)
   11e84:	0014181b          	slliw	a6,s0,0x1
   11e88:	0034141b          	slliw	s0,s0,0x3
   11e8c:	0088043b          	addw	s0,a6,s0
   11e90:	00f4043b          	addw	s0,s0,a5
   11e94:	fd0d079b          	addiw	a5,s10,-48
   11e98:	fef6f2e3          	bleu	a5,a3,11e7c <_vfprintf_r+0x444>
   11e9c:	d60450e3          	bgez	s0,11bfc <_vfprintf_r+0x1c4>
   11ea0:	fff00413          	li	s0,-1
   11ea4:	d59ff06f          	j	11bfc <_vfprintf_r+0x1c4>
   11ea8:	080c6c13          	ori	s8,s8,128
   11eac:	d49ff06f          	j	11bf4 <_vfprintf_r+0x1bc>
   11eb0:	d40592e3          	bnez	a1,11bf4 <_vfprintf_r+0x1bc>
   11eb4:	00100613          	li	a2,1
   11eb8:	02000593          	li	a1,32
   11ebc:	d39ff06f          	j	11bf4 <_vfprintf_r+0x1bc>
   11ec0:	001c6c13          	ori	s8,s8,1
   11ec4:	d31ff06f          	j	11bf4 <_vfprintf_r+0x1bc>
   11ec8:	02813783          	ld	a5,40(sp)
   11ecc:	080107a3          	sb	zero,143(sp)
   11ed0:	0007b903          	ld	s2,0(a5)
   11ed4:	00878c93          	addi	s9,a5,8
   11ed8:	00091463          	bnez	s2,11ee0 <_vfprintf_r+0x4a8>
   11edc:	39c0106f          	j	13278 <_vfprintf_r+0x1840>
   11ee0:	01113023          	sd	a7,0(sp)
   11ee4:	00045463          	bgez	s0,11eec <_vfprintf_r+0x4b4>
   11ee8:	3240106f          	j	1320c <_vfprintf_r+0x17d4>
   11eec:	00040613          	mv	a2,s0
   11ef0:	00000593          	li	a1,0
   11ef4:	00090513          	mv	a0,s2
   11ef8:	2c9050ef          	jal	179c0 <memchr>
   11efc:	00013883          	ld	a7,0(sp)
   11f00:	00051463          	bnez	a0,11f08 <_vfprintf_r+0x4d0>
   11f04:	4c00106f          	j	133c4 <_vfprintf_r+0x198c>
   11f08:	412507bb          	subw	a5,a0,s2
   11f0c:	02f12023          	sw	a5,32(sp)
   11f10:	00078d93          	mv	s11,a5
   11f14:	0007d463          	bgez	a5,11f1c <_vfprintf_r+0x4e4>
   11f18:	3140106f          	j	1322c <_vfprintf_r+0x17f4>
   11f1c:	08f14603          	lbu	a2,143(sp)
   11f20:	01b12423          	sw	s11,8(sp)
   11f24:	03913423          	sd	s9,40(sp)
   11f28:	00000413          	li	s0,0
   11f2c:	04012623          	sw	zero,76(sp)
   11f30:	f1dff06f          	j	11e4c <_vfprintf_r+0x414>
   11f34:	00060463          	beqz	a2,11f3c <_vfprintf_r+0x504>
   11f38:	7800106f          	j	136b8 <_vfprintf_r+0x1c80>
   11f3c:	010c7793          	andi	a5,s8,16
   11f40:	0e078463          	beqz	a5,12028 <_vfprintf_r+0x5f0>
   11f44:	02813783          	ld	a5,40(sp)
   11f48:	080107a3          	sb	zero,143(sp)
   11f4c:	00878713          	addi	a4,a5,8
   11f50:	0007b783          	ld	a5,0(a5)
   11f54:	0e044863          	bltz	s0,12044 <_vfprintf_r+0x60c>
   11f58:	02e13423          	sd	a4,40(sp)
   11f5c:	f7fc7c13          	andi	s8,s8,-129
   11f60:	00000613          	li	a2,0
   11f64:	50078c63          	beqz	a5,1247c <_vfprintf_r+0xa44>
   11f68:	00900713          	li	a4,9
   11f6c:	000b0913          	mv	s2,s6
   11f70:	00a00693          	li	a3,10
   11f74:	40f770e3          	bleu	a5,a4,12b74 <_vfprintf_r+0x113c>
   11f78:	02d7f733          	remu	a4,a5,a3
   11f7c:	fff90913          	addi	s2,s2,-1
   11f80:	02d7d7b3          	divu	a5,a5,a3
   11f84:	0307071b          	addiw	a4,a4,48
   11f88:	00e90023          	sb	a4,0(s2)
   11f8c:	fe0796e3          	bnez	a5,11f78 <_vfprintf_r+0x540>
   11f90:	412b07b3          	sub	a5,s6,s2
   11f94:	02f12023          	sw	a5,32(sp)
   11f98:	e9dff06f          	j	11e34 <_vfprintf_r+0x3fc>
   11f9c:	00012c23          	sw	zero,24(sp)
   11fa0:	fd0d079b          	addiw	a5,s10,-48
   11fa4:	01812303          	lw	t1,24(sp)
   11fa8:	00198993          	addi	s3,s3,1
   11fac:	fff9cd03          	lbu	s10,-1(s3)
   11fb0:	0013181b          	slliw	a6,t1,0x1
   11fb4:	00331c9b          	slliw	s9,t1,0x3
   11fb8:	01980cbb          	addw	s9,a6,s9
   11fbc:	019787bb          	addw	a5,a5,s9
   11fc0:	00f12c23          	sw	a5,24(sp)
   11fc4:	fd0d079b          	addiw	a5,s10,-48
   11fc8:	fcf6fee3          	bleu	a5,a3,11fa4 <_vfprintf_r+0x56c>
   11fcc:	c31ff06f          	j	11bfc <_vfprintf_r+0x1c4>
   11fd0:	00060463          	beqz	a2,11fd8 <_vfprintf_r+0x5a0>
   11fd4:	6d80106f          	j	136ac <_vfprintf_r+0x1c74>
   11fd8:	010c6c13          	ori	s8,s8,16
   11fdc:	010c7793          	andi	a5,s8,16
   11fe0:	de0792e3          	bnez	a5,11dc4 <_vfprintf_r+0x38c>
   11fe4:	040c7793          	andi	a5,s8,64
   11fe8:	080107a3          	sb	zero,143(sp)
   11fec:	580780e3          	beqz	a5,12d6c <_vfprintf_r+0x1334>
   11ff0:	02813783          	ld	a5,40(sp)
   11ff4:	00878713          	addi	a4,a5,8
   11ff8:	0007d783          	lhu	a5,0(a5)
   11ffc:	dc045ee3          	bgez	s0,11dd8 <_vfprintf_r+0x3a0>
   12000:	02e13423          	sd	a4,40(sp)
   12004:	00000613          	li	a2,0
   12008:	60078a63          	beqz	a5,1261c <_vfprintf_r+0xbe4>
   1200c:	00000613          	li	a2,0
   12010:	de5ff06f          	j	11df4 <_vfprintf_r+0x3bc>
   12014:	00060463          	beqz	a2,1201c <_vfprintf_r+0x5e4>
   12018:	6880106f          	j	136a0 <_vfprintf_r+0x1c68>
   1201c:	010c6c13          	ori	s8,s8,16
   12020:	010c7793          	andi	a5,s8,16
   12024:	f20790e3          	bnez	a5,11f44 <_vfprintf_r+0x50c>
   12028:	040c7793          	andi	a5,s8,64
   1202c:	080107a3          	sb	zero,143(sp)
   12030:	500780e3          	beqz	a5,12d30 <_vfprintf_r+0x12f8>
   12034:	02813783          	ld	a5,40(sp)
   12038:	00878713          	addi	a4,a5,8
   1203c:	0007d783          	lhu	a5,0(a5)
   12040:	f0045ce3          	bgez	s0,11f58 <_vfprintf_r+0x520>
   12044:	02e13423          	sd	a4,40(sp)
   12048:	00000613          	li	a2,0
   1204c:	f0079ee3          	bnez	a5,11f68 <_vfprintf_r+0x530>
   12050:	00100793          	li	a5,1
   12054:	5c80006f          	j	1261c <_vfprintf_r+0xbe4>
   12058:	00060463          	beqz	a2,12060 <_vfprintf_r+0x628>
   1205c:	63c0106f          	j	13698 <_vfprintf_r+0x1c60>
   12060:	000227b7          	lui	a5,0x22
   12064:	cf878793          	addi	a5,a5,-776 # 21cf8 <zeroes.4123+0x690>
   12068:	02f13c23          	sd	a5,56(sp)
   1206c:	010c7793          	andi	a5,s8,16
   12070:	4c078263          	beqz	a5,12534 <_vfprintf_r+0xafc>
   12074:	02813703          	ld	a4,40(sp)
   12078:	00073783          	ld	a5,0(a4)
   1207c:	00870713          	addi	a4,a4,8
   12080:	02e13423          	sd	a4,40(sp)
   12084:	001c7713          	andi	a4,s8,1
   12088:	120706e3          	beqz	a4,129b4 <_vfprintf_r+0xf7c>
   1208c:	6a078ee3          	beqz	a5,12f48 <_vfprintf_r+0x1510>
   12090:	03000713          	li	a4,48
   12094:	08e10823          	sb	a4,144(sp)
   12098:	09a108a3          	sb	s10,145(sp)
   1209c:	080107a3          	sb	zero,143(sp)
   120a0:	002c6713          	ori	a4,s8,2
   120a4:	00045463          	bgez	s0,120ac <_vfprintf_r+0x674>
   120a8:	2140106f          	j	132bc <_vfprintf_r+0x1884>
   120ac:	f7fc7c13          	andi	s8,s8,-129
   120b0:	002c6c13          	ori	s8,s8,2
   120b4:	00000613          	li	a2,0
   120b8:	be9ff06f          	j	11ca0 <_vfprintf_r+0x268>
   120bc:	02813703          	ld	a4,40(sp)
   120c0:	00100693          	li	a3,1
   120c4:	00d12423          	sw	a3,8(sp)
   120c8:	00072783          	lw	a5,0(a4)
   120cc:	080107a3          	sb	zero,143(sp)
   120d0:	00000613          	li	a2,0
   120d4:	0cf10423          	sb	a5,200(sp)
   120d8:	00870793          	addi	a5,a4,8
   120dc:	02f13423          	sd	a5,40(sp)
   120e0:	02d12023          	sw	a3,32(sp)
   120e4:	00000413          	li	s0,0
   120e8:	04012623          	sw	zero,76(sp)
   120ec:	0c810913          	addi	s2,sp,200
   120f0:	002c7793          	andi	a5,s8,2
   120f4:	04f12023          	sw	a5,64(sp)
   120f8:	00078863          	beqz	a5,12108 <_vfprintf_r+0x6d0>
   120fc:	00812783          	lw	a5,8(sp)
   12100:	0027879b          	addiw	a5,a5,2
   12104:	00f12423          	sw	a5,8(sp)
   12108:	084c7793          	andi	a5,s8,132
   1210c:	04f12423          	sw	a5,72(sp)
   12110:	52079263          	bnez	a5,12634 <_vfprintf_r+0xbfc>
   12114:	01812783          	lw	a5,24(sp)
   12118:	00812703          	lw	a4,8(sp)
   1211c:	40e78cbb          	subw	s9,a5,a4
   12120:	51905a63          	blez	s9,12634 <_vfprintf_r+0xbfc>
   12124:	01000793          	li	a5,16
   12128:	0197c463          	blt	a5,s9,12130 <_vfprintf_r+0x6f8>
   1212c:	1080106f          	j	13234 <_vfprintf_r+0x17fc>
   12130:	01000813          	li	a6,16
   12134:	0c013783          	ld	a5,192(sp)
   12138:	0b812703          	lw	a4,184(sp)
   1213c:	05513823          	sd	s5,80(sp)
   12140:	00700313          	li	t1,7
   12144:	00080d93          	mv	s11,a6
   12148:	00c0006f          	j	12154 <_vfprintf_r+0x71c>
   1214c:	ff0c8c9b          	addiw	s9,s9,-16
   12150:	059dde63          	ble	s9,s11,121ac <_vfprintf_r+0x774>
   12154:	01078793          	addi	a5,a5,16
   12158:	0017071b          	addiw	a4,a4,1
   1215c:	0158b023          	sd	s5,0(a7)
   12160:	0108b423          	sd	a6,8(a7)
   12164:	0cf13023          	sd	a5,192(sp)
   12168:	0ae12c23          	sw	a4,184(sp)
   1216c:	01088893          	addi	a7,a7,16
   12170:	fce35ee3          	ble	a4,t1,1214c <_vfprintf_r+0x714>
   12174:	0b010613          	addi	a2,sp,176
   12178:	000a0593          	mv	a1,s4
   1217c:	000b8513          	mv	a0,s7
   12180:	00613823          	sd	t1,16(sp)
   12184:	01013023          	sd	a6,0(sp)
   12188:	6a10a0ef          	jal	1d028 <__sprint_r>
   1218c:	ba051ee3          	bnez	a0,11d48 <_vfprintf_r+0x310>
   12190:	ff0c8c9b          	addiw	s9,s9,-16
   12194:	0c013783          	ld	a5,192(sp)
   12198:	0b812703          	lw	a4,184(sp)
   1219c:	000b0893          	mv	a7,s6
   121a0:	01013303          	ld	t1,16(sp)
   121a4:	00013803          	ld	a6,0(sp)
   121a8:	fb9dc6e3          	blt	s11,s9,12154 <_vfprintf_r+0x71c>
   121ac:	05013603          	ld	a2,80(sp)
   121b0:	00fc87b3          	add	a5,s9,a5
   121b4:	0017071b          	addiw	a4,a4,1
   121b8:	00c8b023          	sd	a2,0(a7)
   121bc:	0198b423          	sd	s9,8(a7)
   121c0:	0cf13023          	sd	a5,192(sp)
   121c4:	0ae12c23          	sw	a4,184(sp)
   121c8:	00700693          	li	a3,7
   121cc:	0ce6cae3          	blt	a3,a4,12aa0 <_vfprintf_r+0x1068>
   121d0:	08f14603          	lbu	a2,143(sp)
   121d4:	01088893          	addi	a7,a7,16
   121d8:	02060a63          	beqz	a2,1220c <_vfprintf_r+0x7d4>
   121dc:	0b812703          	lw	a4,184(sp)
   121e0:	08f10693          	addi	a3,sp,143
   121e4:	00d8b023          	sd	a3,0(a7)
   121e8:	00178793          	addi	a5,a5,1
   121ec:	00100693          	li	a3,1
   121f0:	0017071b          	addiw	a4,a4,1
   121f4:	00d8b423          	sd	a3,8(a7)
   121f8:	0cf13023          	sd	a5,192(sp)
   121fc:	0ae12c23          	sw	a4,184(sp)
   12200:	00700693          	li	a3,7
   12204:	01088893          	addi	a7,a7,16
   12208:	76e6c663          	blt	a3,a4,12974 <_vfprintf_r+0xf3c>
   1220c:	04012703          	lw	a4,64(sp)
   12210:	02070a63          	beqz	a4,12244 <_vfprintf_r+0x80c>
   12214:	0b812703          	lw	a4,184(sp)
   12218:	09010693          	addi	a3,sp,144
   1221c:	00d8b023          	sd	a3,0(a7)
   12220:	00278793          	addi	a5,a5,2
   12224:	00200693          	li	a3,2
   12228:	0017071b          	addiw	a4,a4,1
   1222c:	00d8b423          	sd	a3,8(a7)
   12230:	0cf13023          	sd	a5,192(sp)
   12234:	0ae12c23          	sw	a4,184(sp)
   12238:	00700693          	li	a3,7
   1223c:	01088893          	addi	a7,a7,16
   12240:	74e6ca63          	blt	a3,a4,12994 <_vfprintf_r+0xf5c>
   12244:	04812683          	lw	a3,72(sp)
   12248:	08000713          	li	a4,128
   1224c:	5ee68663          	beq	a3,a4,12838 <_vfprintf_r+0xe00>
   12250:	02012703          	lw	a4,32(sp)
   12254:	40e4043b          	subw	s0,s0,a4
   12258:	0c805063          	blez	s0,12318 <_vfprintf_r+0x8e0>
   1225c:	01000713          	li	a4,16
   12260:	4e875ce3          	ble	s0,a4,12f58 <_vfprintf_r+0x1520>
   12264:	01000c93          	li	s9,16
   12268:	0b812703          	lw	a4,184(sp)
   1226c:	00913823          	sd	s1,16(sp)
   12270:	00700813          	li	a6,7
   12274:	000c8d93          	mv	s11,s9
   12278:	00c0006f          	j	12284 <_vfprintf_r+0x84c>
   1227c:	ff04041b          	addiw	s0,s0,-16
   12280:	048dda63          	ble	s0,s11,122d4 <_vfprintf_r+0x89c>
   12284:	01078793          	addi	a5,a5,16
   12288:	0017071b          	addiw	a4,a4,1
   1228c:	0098b023          	sd	s1,0(a7)
   12290:	0198b423          	sd	s9,8(a7)
   12294:	0cf13023          	sd	a5,192(sp)
   12298:	0ae12c23          	sw	a4,184(sp)
   1229c:	01088893          	addi	a7,a7,16
   122a0:	fce85ee3          	ble	a4,a6,1227c <_vfprintf_r+0x844>
   122a4:	0b010613          	addi	a2,sp,176
   122a8:	000a0593          	mv	a1,s4
   122ac:	000b8513          	mv	a0,s7
   122b0:	01013023          	sd	a6,0(sp)
   122b4:	5750a0ef          	jal	1d028 <__sprint_r>
   122b8:	a80518e3          	bnez	a0,11d48 <_vfprintf_r+0x310>
   122bc:	ff04041b          	addiw	s0,s0,-16
   122c0:	0c013783          	ld	a5,192(sp)
   122c4:	0b812703          	lw	a4,184(sp)
   122c8:	000b0893          	mv	a7,s6
   122cc:	00013803          	ld	a6,0(sp)
   122d0:	fa8dcae3          	blt	s11,s0,12284 <_vfprintf_r+0x84c>
   122d4:	01013683          	ld	a3,16(sp)
   122d8:	008787b3          	add	a5,a5,s0
   122dc:	0017071b          	addiw	a4,a4,1
   122e0:	00d8b023          	sd	a3,0(a7)
   122e4:	0088b423          	sd	s0,8(a7)
   122e8:	0cf13023          	sd	a5,192(sp)
   122ec:	0ae12c23          	sw	a4,184(sp)
   122f0:	00700693          	li	a3,7
   122f4:	01088893          	addi	a7,a7,16
   122f8:	02e6d063          	ble	a4,a3,12318 <_vfprintf_r+0x8e0>
   122fc:	0b010613          	addi	a2,sp,176
   12300:	000a0593          	mv	a1,s4
   12304:	000b8513          	mv	a0,s7
   12308:	5210a0ef          	jal	1d028 <__sprint_r>
   1230c:	a2051ee3          	bnez	a0,11d48 <_vfprintf_r+0x310>
   12310:	0c013783          	ld	a5,192(sp)
   12314:	000b0893          	mv	a7,s6
   12318:	100c7713          	andi	a4,s8,256
   1231c:	40071663          	bnez	a4,12728 <_vfprintf_r+0xcf0>
   12320:	02012703          	lw	a4,32(sp)
   12324:	0b812683          	lw	a3,184(sp)
   12328:	0128b023          	sd	s2,0(a7)
   1232c:	00e787b3          	add	a5,a5,a4
   12330:	0016869b          	addiw	a3,a3,1
   12334:	00e8b423          	sd	a4,8(a7)
   12338:	0cf13023          	sd	a5,192(sp)
   1233c:	0ad12c23          	sw	a3,184(sp)
   12340:	00700713          	li	a4,7
   12344:	3cd74263          	blt	a4,a3,12708 <_vfprintf_r+0xcd0>
   12348:	01088893          	addi	a7,a7,16
   1234c:	004c7c13          	andi	s8,s8,4
   12350:	0c0c0063          	beqz	s8,12410 <_vfprintf_r+0x9d8>
   12354:	01812703          	lw	a4,24(sp)
   12358:	00812683          	lw	a3,8(sp)
   1235c:	40d7043b          	subw	s0,a4,a3
   12360:	0a805863          	blez	s0,12410 <_vfprintf_r+0x9d8>
   12364:	01000713          	li	a4,16
   12368:	748754e3          	ble	s0,a4,132b0 <_vfprintf_r+0x1878>
   1236c:	01000913          	li	s2,16
   12370:	0b812703          	lw	a4,184(sp)
   12374:	05513823          	sd	s5,80(sp)
   12378:	00700c13          	li	s8,7
   1237c:	00090d13          	mv	s10,s2
   12380:	00c0006f          	j	1238c <_vfprintf_r+0x954>
   12384:	ff04041b          	addiw	s0,s0,-16
   12388:	048d5663          	ble	s0,s10,123d4 <_vfprintf_r+0x99c>
   1238c:	01078793          	addi	a5,a5,16
   12390:	0017071b          	addiw	a4,a4,1
   12394:	0158b023          	sd	s5,0(a7)
   12398:	0128b423          	sd	s2,8(a7)
   1239c:	0cf13023          	sd	a5,192(sp)
   123a0:	0ae12c23          	sw	a4,184(sp)
   123a4:	01088893          	addi	a7,a7,16
   123a8:	fcec5ee3          	ble	a4,s8,12384 <_vfprintf_r+0x94c>
   123ac:	0b010613          	addi	a2,sp,176
   123b0:	000a0593          	mv	a1,s4
   123b4:	000b8513          	mv	a0,s7
   123b8:	4710a0ef          	jal	1d028 <__sprint_r>
   123bc:	980516e3          	bnez	a0,11d48 <_vfprintf_r+0x310>
   123c0:	ff04041b          	addiw	s0,s0,-16
   123c4:	0c013783          	ld	a5,192(sp)
   123c8:	0b812703          	lw	a4,184(sp)
   123cc:	000b0893          	mv	a7,s6
   123d0:	fa8d4ee3          	blt	s10,s0,1238c <_vfprintf_r+0x954>
   123d4:	05013683          	ld	a3,80(sp)
   123d8:	008787b3          	add	a5,a5,s0
   123dc:	0017071b          	addiw	a4,a4,1
   123e0:	00d8b023          	sd	a3,0(a7)
   123e4:	0088b423          	sd	s0,8(a7)
   123e8:	0cf13023          	sd	a5,192(sp)
   123ec:	0ae12c23          	sw	a4,184(sp)
   123f0:	00700693          	li	a3,7
   123f4:	00e6de63          	ble	a4,a3,12410 <_vfprintf_r+0x9d8>
   123f8:	0b010613          	addi	a2,sp,176
   123fc:	000a0593          	mv	a1,s4
   12400:	000b8513          	mv	a0,s7
   12404:	4250a0ef          	jal	1d028 <__sprint_r>
   12408:	940510e3          	bnez	a0,11d48 <_vfprintf_r+0x310>
   1240c:	0c013783          	ld	a5,192(sp)
   12410:	01812c83          	lw	s9,24(sp)
   12414:	00812703          	lw	a4,8(sp)
   12418:	00ecd463          	ble	a4,s9,12420 <_vfprintf_r+0x9e8>
   1241c:	00070c93          	mv	s9,a4
   12420:	01c12703          	lw	a4,28(sp)
   12424:	0197073b          	addw	a4,a4,s9
   12428:	00e12e23          	sw	a4,28(sp)
   1242c:	52079863          	bnez	a5,1295c <_vfprintf_r+0xf24>
   12430:	0009c783          	lbu	a5,0(s3)
   12434:	0a012c23          	sw	zero,184(sp)
   12438:	000b0893          	mv	a7,s6
   1243c:	f2079263          	bnez	a5,11b60 <_vfprintf_r+0x128>
   12440:	00098413          	mv	s0,s3
   12444:	f80ff06f          	j	11bc4 <_vfprintf_r+0x18c>
   12448:	00060463          	beqz	a2,12450 <_vfprintf_r+0xa18>
   1244c:	22c0106f          	j	13678 <_vfprintf_r+0x1c40>
   12450:	010c7793          	andi	a5,s8,16
   12454:	12078e63          	beqz	a5,12590 <_vfprintf_r+0xb58>
   12458:	02813703          	ld	a4,40(sp)
   1245c:	00073783          	ld	a5,0(a4)
   12460:	00870713          	addi	a4,a4,8
   12464:	02e13423          	sd	a4,40(sp)
   12468:	1407c0e3          	bltz	a5,12da8 <_vfprintf_r+0x1370>
   1246c:	08f14603          	lbu	a2,143(sp)
   12470:	bc044ee3          	bltz	s0,1204c <_vfprintf_r+0x614>
   12474:	f7fc7c13          	andi	s8,s8,-129
   12478:	ae0798e3          	bnez	a5,11f68 <_vfprintf_r+0x530>
   1247c:	6e041a63          	bnez	s0,12b70 <_vfprintf_r+0x1138>
   12480:	00000413          	li	s0,0
   12484:	02012023          	sw	zero,32(sp)
   12488:	000b0913          	mv	s2,s6
   1248c:	9a9ff06f          	j	11e34 <_vfprintf_r+0x3fc>
   12490:	040c6c13          	ori	s8,s8,64
   12494:	f60ff06f          	j	11bf4 <_vfprintf_r+0x1bc>
   12498:	00060463          	beqz	a2,124a0 <_vfprintf_r+0xa68>
   1249c:	1d40106f          	j	13670 <_vfprintf_r+0x1c38>
   124a0:	02813783          	ld	a5,40(sp)
   124a4:	00100913          	li	s2,1
   124a8:	0007b787          	fld	fa5,0(a5)
   124ac:	00878793          	addi	a5,a5,8
   124b0:	01113023          	sd	a7,0(sp)
   124b4:	04f13c27          	fsd	fa5,88(sp)
   124b8:	05813c83          	ld	s9,88(sp)
   124bc:	02f13423          	sd	a5,40(sp)
   124c0:	f20c8553          	fmv.d.x	fa0,s9
   124c4:	208070ef          	jal	196cc <__fpclassifyd>
   124c8:	00013883          	ld	a7,0(sp)
   124cc:	0f251ce3          	bne	a0,s2,12dc4 <_vfprintf_r+0x138c>
   124d0:	f20007d3          	fmv.d.x	fa5,zero
   124d4:	f20c8753          	fmv.d.x	fa4,s9
   124d8:	a2f717d3          	flt.d	a5,fa4,fa5
   124dc:	600792e3          	bnez	a5,132e0 <_vfprintf_r+0x18a8>
   124e0:	08f14603          	lbu	a2,143(sp)
   124e4:	04700793          	li	a5,71
   124e8:	3da7d8e3          	ble	s10,a5,130b8 <_vfprintf_r+0x1680>
   124ec:	00022937          	lui	s2,0x22
   124f0:	ce090913          	addi	s2,s2,-800 # 21ce0 <zeroes.4123+0x678>
   124f4:	00300793          	li	a5,3
   124f8:	00f12423          	sw	a5,8(sp)
   124fc:	f7fc7c13          	andi	s8,s8,-129
   12500:	02f12023          	sw	a5,32(sp)
   12504:	00000413          	li	s0,0
   12508:	04012623          	sw	zero,76(sp)
   1250c:	941ff06f          	j	11e4c <_vfprintf_r+0x414>
   12510:	008c6c13          	ori	s8,s8,8
   12514:	ee0ff06f          	j	11bf4 <_vfprintf_r+0x1bc>
   12518:	00060463          	beqz	a2,12520 <_vfprintf_r+0xae8>
   1251c:	1280106f          	j	13644 <_vfprintf_r+0x1c0c>
   12520:	000227b7          	lui	a5,0x22
   12524:	d1078793          	addi	a5,a5,-752 # 21d10 <zeroes.4123+0x6a8>
   12528:	02f13c23          	sd	a5,56(sp)
   1252c:	010c7793          	andi	a5,s8,16
   12530:	b40792e3          	bnez	a5,12074 <_vfprintf_r+0x63c>
   12534:	040c7793          	andi	a5,s8,64
   12538:	02813703          	ld	a4,40(sp)
   1253c:	1c0784e3          	beqz	a5,12f04 <_vfprintf_r+0x14cc>
   12540:	00075783          	lhu	a5,0(a4)
   12544:	00870713          	addi	a4,a4,8
   12548:	02e13423          	sd	a4,40(sp)
   1254c:	b39ff06f          	j	12084 <_vfprintf_r+0x64c>
   12550:	00060463          	beqz	a2,12558 <_vfprintf_r+0xb20>
   12554:	10c0106f          	j	13660 <_vfprintf_r+0x1c28>
   12558:	010c7793          	andi	a5,s8,16
   1255c:	1a078ce3          	beqz	a5,12f14 <_vfprintf_r+0x14dc>
   12560:	02813683          	ld	a3,40(sp)
   12564:	01c12703          	lw	a4,28(sp)
   12568:	0006b783          	ld	a5,0(a3)
   1256c:	00868693          	addi	a3,a3,8
   12570:	02d13423          	sd	a3,40(sp)
   12574:	00e7b023          	sd	a4,0(a5)
   12578:	de0ff06f          	j	11b58 <_vfprintf_r+0x120>
   1257c:	00060463          	beqz	a2,12584 <_vfprintf_r+0xb4c>
   12580:	0d40106f          	j	13654 <_vfprintf_r+0x1c1c>
   12584:	010c6c13          	ori	s8,s8,16
   12588:	010c7793          	andi	a5,s8,16
   1258c:	ec0796e3          	bnez	a5,12458 <_vfprintf_r+0xa20>
   12590:	040c7793          	andi	a5,s8,64
   12594:	02813703          	ld	a4,40(sp)
   12598:	1a0780e3          	beqz	a5,12f38 <_vfprintf_r+0x1500>
   1259c:	00071783          	lh	a5,0(a4)
   125a0:	00870713          	addi	a4,a4,8
   125a4:	02e13423          	sd	a4,40(sp)
   125a8:	ec1ff06f          	j	12468 <_vfprintf_r+0xa30>
   125ac:	00022737          	lui	a4,0x22
   125b0:	d1070713          	addi	a4,a4,-752 # 21d10 <zeroes.4123+0x6a8>
   125b4:	00000613          	li	a2,0
   125b8:	02e13c23          	sd	a4,56(sp)
   125bc:	07800d13          	li	s10,120
   125c0:	ee0ff06f          	j	11ca0 <_vfprintf_r+0x268>
   125c4:	00060463          	beqz	a2,125cc <_vfprintf_r+0xb94>
   125c8:	0c00106f          	j	13688 <_vfprintf_r+0x1c50>
   125cc:	f60d0263          	beqz	s10,11d30 <_vfprintf_r+0x2f8>
   125d0:	00100793          	li	a5,1
   125d4:	00f12423          	sw	a5,8(sp)
   125d8:	0da10423          	sb	s10,200(sp)
   125dc:	080107a3          	sb	zero,143(sp)
   125e0:	00000613          	li	a2,0
   125e4:	02f12023          	sw	a5,32(sp)
   125e8:	00000413          	li	s0,0
   125ec:	04012623          	sw	zero,76(sp)
   125f0:	0c810913          	addi	s2,sp,200
   125f4:	afdff06f          	j	120f0 <_vfprintf_r+0x6b8>
   125f8:	02e13423          	sd	a4,40(sp)
   125fc:	00022737          	lui	a4,0x22
   12600:	d1070713          	addi	a4,a4,-752 # 21d10 <zeroes.4123+0x6a8>
   12604:	00068c13          	mv	s8,a3
   12608:	02e13c23          	sd	a4,56(sp)
   1260c:	07800d13          	li	s10,120
   12610:	3a079a63          	bnez	a5,129c4 <_vfprintf_r+0xf8c>
   12614:	00000613          	li	a2,0
   12618:	00200793          	li	a5,2
   1261c:	00100713          	li	a4,1
   12620:	54e78863          	beq	a5,a4,12b70 <_vfprintf_r+0x1138>
   12624:	00200713          	li	a4,2
   12628:	e6e78a63          	beq	a5,a4,11c9c <_vfprintf_r+0x264>
   1262c:	00000793          	li	a5,0
   12630:	fc4ff06f          	j	11df4 <_vfprintf_r+0x3bc>
   12634:	0c013783          	ld	a5,192(sp)
   12638:	ba1ff06f          	j	121d8 <_vfprintf_r+0x7a0>
   1263c:	07012683          	lw	a3,112(sp)
   12640:	00100713          	li	a4,1
   12644:	00178793          	addi	a5,a5,1
   12648:	6cd75663          	ble	a3,a4,12d14 <_vfprintf_r+0x12dc>
   1264c:	0b812703          	lw	a4,184(sp)
   12650:	00100693          	li	a3,1
   12654:	00d8b423          	sd	a3,8(a7)
   12658:	0017071b          	addiw	a4,a4,1
   1265c:	0128b023          	sd	s2,0(a7)
   12660:	0cf13023          	sd	a5,192(sp)
   12664:	0ae12c23          	sw	a4,184(sp)
   12668:	00700693          	li	a3,7
   1266c:	01088893          	addi	a7,a7,16
   12670:	6ce6ca63          	blt	a3,a4,12d44 <_vfprintf_r+0x130c>
   12674:	06813683          	ld	a3,104(sp)
   12678:	06013603          	ld	a2,96(sp)
   1267c:	0017071b          	addiw	a4,a4,1
   12680:	00f687b3          	add	a5,a3,a5
   12684:	00d8b423          	sd	a3,8(a7)
   12688:	00c8b023          	sd	a2,0(a7)
   1268c:	0cf13023          	sd	a5,192(sp)
   12690:	0ae12c23          	sw	a4,184(sp)
   12694:	00700693          	li	a3,7
   12698:	01088893          	addi	a7,a7,16
   1269c:	6ee6c263          	blt	a3,a4,12d80 <_vfprintf_r+0x1348>
   126a0:	f20007d3          	fmv.d.x	fa5,zero
   126a4:	05813707          	fld	fa4,88(sp)
   126a8:	a2f726d3          	feq.d	a3,fa4,fa5
   126ac:	40069c63          	bnez	a3,12ac4 <_vfprintf_r+0x108c>
   126b0:	07012683          	lw	a3,112(sp)
   126b4:	00190913          	addi	s2,s2,1
   126b8:	0017071b          	addiw	a4,a4,1
   126bc:	fff6869b          	addiw	a3,a3,-1
   126c0:	00d787b3          	add	a5,a5,a3
   126c4:	0128b023          	sd	s2,0(a7)
   126c8:	00d8b423          	sd	a3,8(a7)
   126cc:	0cf13023          	sd	a5,192(sp)
   126d0:	0ae12c23          	sw	a4,184(sp)
   126d4:	00700693          	li	a3,7
   126d8:	26e6c063          	blt	a3,a4,12938 <_vfprintf_r+0xf00>
   126dc:	01088893          	addi	a7,a7,16
   126e0:	07412683          	lw	a3,116(sp)
   126e4:	0a010613          	addi	a2,sp,160
   126e8:	0017071b          	addiw	a4,a4,1
   126ec:	00f687b3          	add	a5,a3,a5
   126f0:	00c8b023          	sd	a2,0(a7)
   126f4:	00d8b423          	sd	a3,8(a7)
   126f8:	0cf13023          	sd	a5,192(sp)
   126fc:	0ae12c23          	sw	a4,184(sp)
   12700:	00700693          	li	a3,7
   12704:	c4e6d2e3          	ble	a4,a3,12348 <_vfprintf_r+0x910>
   12708:	0b010613          	addi	a2,sp,176
   1270c:	000a0593          	mv	a1,s4
   12710:	000b8513          	mv	a0,s7
   12714:	1150a0ef          	jal	1d028 <__sprint_r>
   12718:	e2051863          	bnez	a0,11d48 <_vfprintf_r+0x310>
   1271c:	0c013783          	ld	a5,192(sp)
   12720:	000b0893          	mv	a7,s6
   12724:	c29ff06f          	j	1234c <_vfprintf_r+0x914>
   12728:	06500713          	li	a4,101
   1272c:	f1a758e3          	ble	s10,a4,1263c <_vfprintf_r+0xc04>
   12730:	f20007d3          	fmv.d.x	fa5,zero
   12734:	05813707          	fld	fa4,88(sp)
   12738:	a2f72753          	feq.d	a4,fa4,fa5
   1273c:	28070863          	beqz	a4,129cc <_vfprintf_r+0xf94>
   12740:	0b812703          	lw	a4,184(sp)
   12744:	000226b7          	lui	a3,0x22
   12748:	d3068693          	addi	a3,a3,-720 # 21d30 <zeroes.4123+0x6c8>
   1274c:	00d8b023          	sd	a3,0(a7)
   12750:	00178793          	addi	a5,a5,1
   12754:	00100693          	li	a3,1
   12758:	0017071b          	addiw	a4,a4,1
   1275c:	00d8b423          	sd	a3,8(a7)
   12760:	0cf13023          	sd	a5,192(sp)
   12764:	0ae12c23          	sw	a4,184(sp)
   12768:	00700693          	li	a3,7
   1276c:	01088893          	addi	a7,a7,16
   12770:	7ee6ca63          	blt	a3,a4,12f64 <_vfprintf_r+0x152c>
   12774:	09812703          	lw	a4,152(sp)
   12778:	07012683          	lw	a3,112(sp)
   1277c:	00d74663          	blt	a4,a3,12788 <_vfprintf_r+0xd50>
   12780:	001c7713          	andi	a4,s8,1
   12784:	bc0704e3          	beqz	a4,1234c <_vfprintf_r+0x914>
   12788:	06013703          	ld	a4,96(sp)
   1278c:	06813683          	ld	a3,104(sp)
   12790:	01088893          	addi	a7,a7,16
   12794:	fee8b823          	sd	a4,-16(a7)
   12798:	0b812703          	lw	a4,184(sp)
   1279c:	00d787b3          	add	a5,a5,a3
   127a0:	fed8bc23          	sd	a3,-8(a7)
   127a4:	0017071b          	addiw	a4,a4,1
   127a8:	0cf13023          	sd	a5,192(sp)
   127ac:	0ae12c23          	sw	a4,184(sp)
   127b0:	00700693          	li	a3,7
   127b4:	1ce6c8e3          	blt	a3,a4,13184 <_vfprintf_r+0x174c>
   127b8:	07012703          	lw	a4,112(sp)
   127bc:	fff7041b          	addiw	s0,a4,-1
   127c0:	b88056e3          	blez	s0,1234c <_vfprintf_r+0x914>
   127c4:	01000713          	li	a4,16
   127c8:	36875c63          	ble	s0,a4,12b40 <_vfprintf_r+0x1108>
   127cc:	01000913          	li	s2,16
   127d0:	0b812703          	lw	a4,184(sp)
   127d4:	00913823          	sd	s1,16(sp)
   127d8:	00700d13          	li	s10,7
   127dc:	00090693          	mv	a3,s2
   127e0:	00c0006f          	j	127ec <_vfprintf_r+0xdb4>
   127e4:	ff04041b          	addiw	s0,s0,-16
   127e8:	3686d063          	ble	s0,a3,12b48 <_vfprintf_r+0x1110>
   127ec:	01078793          	addi	a5,a5,16
   127f0:	0017071b          	addiw	a4,a4,1
   127f4:	0098b023          	sd	s1,0(a7)
   127f8:	0128b423          	sd	s2,8(a7)
   127fc:	0cf13023          	sd	a5,192(sp)
   12800:	0ae12c23          	sw	a4,184(sp)
   12804:	01088893          	addi	a7,a7,16
   12808:	fced5ee3          	ble	a4,s10,127e4 <_vfprintf_r+0xdac>
   1280c:	0b010613          	addi	a2,sp,176
   12810:	000a0593          	mv	a1,s4
   12814:	000b8513          	mv	a0,s7
   12818:	00d13023          	sd	a3,0(sp)
   1281c:	00d0a0ef          	jal	1d028 <__sprint_r>
   12820:	d2051463          	bnez	a0,11d48 <_vfprintf_r+0x310>
   12824:	0c013783          	ld	a5,192(sp)
   12828:	0b812703          	lw	a4,184(sp)
   1282c:	000b0893          	mv	a7,s6
   12830:	00013683          	ld	a3,0(sp)
   12834:	fb1ff06f          	j	127e4 <_vfprintf_r+0xdac>
   12838:	01812703          	lw	a4,24(sp)
   1283c:	00812683          	lw	a3,8(sp)
   12840:	40d70cbb          	subw	s9,a4,a3
   12844:	a19056e3          	blez	s9,12250 <_vfprintf_r+0x818>
   12848:	01000713          	li	a4,16
   1284c:	2f975ee3          	ble	s9,a4,13348 <_vfprintf_r+0x1910>
   12850:	01000813          	li	a6,16
   12854:	0b812703          	lw	a4,184(sp)
   12858:	00913823          	sd	s1,16(sp)
   1285c:	00700313          	li	t1,7
   12860:	00080d93          	mv	s11,a6
   12864:	00c0006f          	j	12870 <_vfprintf_r+0xe38>
   12868:	ff0c8c9b          	addiw	s9,s9,-16
   1286c:	059dde63          	ble	s9,s11,128c8 <_vfprintf_r+0xe90>
   12870:	01078793          	addi	a5,a5,16
   12874:	0017071b          	addiw	a4,a4,1
   12878:	0098b023          	sd	s1,0(a7)
   1287c:	0108b423          	sd	a6,8(a7)
   12880:	0cf13023          	sd	a5,192(sp)
   12884:	0ae12c23          	sw	a4,184(sp)
   12888:	01088893          	addi	a7,a7,16
   1288c:	fce35ee3          	ble	a4,t1,12868 <_vfprintf_r+0xe30>
   12890:	0b010613          	addi	a2,sp,176
   12894:	000a0593          	mv	a1,s4
   12898:	000b8513          	mv	a0,s7
   1289c:	04613023          	sd	t1,64(sp)
   128a0:	01013023          	sd	a6,0(sp)
   128a4:	7840a0ef          	jal	1d028 <__sprint_r>
   128a8:	ca051063          	bnez	a0,11d48 <_vfprintf_r+0x310>
   128ac:	ff0c8c9b          	addiw	s9,s9,-16
   128b0:	0c013783          	ld	a5,192(sp)
   128b4:	0b812703          	lw	a4,184(sp)
   128b8:	000b0893          	mv	a7,s6
   128bc:	04013303          	ld	t1,64(sp)
   128c0:	00013803          	ld	a6,0(sp)
   128c4:	fb9dc6e3          	blt	s11,s9,12870 <_vfprintf_r+0xe38>
   128c8:	01013603          	ld	a2,16(sp)
   128cc:	019787b3          	add	a5,a5,s9
   128d0:	0017071b          	addiw	a4,a4,1
   128d4:	00c8b023          	sd	a2,0(a7)
   128d8:	0198b423          	sd	s9,8(a7)
   128dc:	0cf13023          	sd	a5,192(sp)
   128e0:	0ae12c23          	sw	a4,184(sp)
   128e4:	00700693          	li	a3,7
   128e8:	01088893          	addi	a7,a7,16
   128ec:	96e6d2e3          	ble	a4,a3,12250 <_vfprintf_r+0x818>
   128f0:	0b010613          	addi	a2,sp,176
   128f4:	000a0593          	mv	a1,s4
   128f8:	000b8513          	mv	a0,s7
   128fc:	72c0a0ef          	jal	1d028 <__sprint_r>
   12900:	c4051463          	bnez	a0,11d48 <_vfprintf_r+0x310>
   12904:	0c013783          	ld	a5,192(sp)
   12908:	000b0893          	mv	a7,s6
   1290c:	945ff06f          	j	12250 <_vfprintf_r+0x818>
   12910:	00913823          	sd	s1,16(sp)
   12914:	01013683          	ld	a3,16(sp)
   12918:	008787b3          	add	a5,a5,s0
   1291c:	0017071b          	addiw	a4,a4,1
   12920:	00d8b023          	sd	a3,0(a7)
   12924:	0088b423          	sd	s0,8(a7)
   12928:	0cf13023          	sd	a5,192(sp)
   1292c:	0ae12c23          	sw	a4,184(sp)
   12930:	00700693          	li	a3,7
   12934:	dae6d4e3          	ble	a4,a3,126dc <_vfprintf_r+0xca4>
   12938:	0b010613          	addi	a2,sp,176
   1293c:	000a0593          	mv	a1,s4
   12940:	000b8513          	mv	a0,s7
   12944:	6e40a0ef          	jal	1d028 <__sprint_r>
   12948:	c0051063          	bnez	a0,11d48 <_vfprintf_r+0x310>
   1294c:	0c013783          	ld	a5,192(sp)
   12950:	0b812703          	lw	a4,184(sp)
   12954:	000b0893          	mv	a7,s6
   12958:	d89ff06f          	j	126e0 <_vfprintf_r+0xca8>
   1295c:	0b010613          	addi	a2,sp,176
   12960:	000a0593          	mv	a1,s4
   12964:	000b8513          	mv	a0,s7
   12968:	6c00a0ef          	jal	1d028 <__sprint_r>
   1296c:	ac0502e3          	beqz	a0,12430 <_vfprintf_r+0x9f8>
   12970:	bd8ff06f          	j	11d48 <_vfprintf_r+0x310>
   12974:	0b010613          	addi	a2,sp,176
   12978:	000a0593          	mv	a1,s4
   1297c:	000b8513          	mv	a0,s7
   12980:	6a80a0ef          	jal	1d028 <__sprint_r>
   12984:	bc051263          	bnez	a0,11d48 <_vfprintf_r+0x310>
   12988:	0c013783          	ld	a5,192(sp)
   1298c:	000b0893          	mv	a7,s6
   12990:	87dff06f          	j	1220c <_vfprintf_r+0x7d4>
   12994:	0b010613          	addi	a2,sp,176
   12998:	000a0593          	mv	a1,s4
   1299c:	000b8513          	mv	a0,s7
   129a0:	6880a0ef          	jal	1d028 <__sprint_r>
   129a4:	ba051263          	bnez	a0,11d48 <_vfprintf_r+0x310>
   129a8:	0c013783          	ld	a5,192(sp)
   129ac:	000b0893          	mv	a7,s6
   129b0:	895ff06f          	j	12244 <_vfprintf_r+0x80c>
   129b4:	080107a3          	sb	zero,143(sp)
   129b8:	c4044ce3          	bltz	s0,12610 <_vfprintf_r+0xbd8>
   129bc:	f7fc7c13          	andi	s8,s8,-129
   129c0:	ac078a63          	beqz	a5,11c94 <_vfprintf_r+0x25c>
   129c4:	00000613          	li	a2,0
   129c8:	ad8ff06f          	j	11ca0 <_vfprintf_r+0x268>
   129cc:	09812403          	lw	s0,152(sp)
   129d0:	5a805c63          	blez	s0,12f88 <_vfprintf_r+0x1550>
   129d4:	04c12703          	lw	a4,76(sp)
   129d8:	07012683          	lw	a3,112(sp)
   129dc:	00070413          	mv	s0,a4
   129e0:	00e6d463          	ble	a4,a3,129e8 <_vfprintf_r+0xfb0>
   129e4:	00068413          	mv	s0,a3
   129e8:	02805663          	blez	s0,12a14 <_vfprintf_r+0xfdc>
   129ec:	0b812703          	lw	a4,184(sp)
   129f0:	008787b3          	add	a5,a5,s0
   129f4:	0128b023          	sd	s2,0(a7)
   129f8:	0017071b          	addiw	a4,a4,1
   129fc:	0088b423          	sd	s0,8(a7)
   12a00:	0cf13023          	sd	a5,192(sp)
   12a04:	0ae12c23          	sw	a4,184(sp)
   12a08:	00700693          	li	a3,7
   12a0c:	01088893          	addi	a7,a7,16
   12a10:	6ae6ca63          	blt	a3,a4,130c4 <_vfprintf_r+0x168c>
   12a14:	020448e3          	bltz	s0,13244 <_vfprintf_r+0x180c>
   12a18:	04c12703          	lw	a4,76(sp)
   12a1c:	4087043b          	subw	s0,a4,s0
   12a20:	1a805c63          	blez	s0,12bd8 <_vfprintf_r+0x11a0>
   12a24:	01000713          	li	a4,16
   12a28:	16875263          	ble	s0,a4,12b8c <_vfprintf_r+0x1154>
   12a2c:	01000d13          	li	s10,16
   12a30:	0b812703          	lw	a4,184(sp)
   12a34:	00913823          	sd	s1,16(sp)
   12a38:	00700693          	li	a3,7
   12a3c:	000d0813          	mv	a6,s10
   12a40:	00c0006f          	j	12a4c <_vfprintf_r+0x1014>
   12a44:	ff04041b          	addiw	s0,s0,-16
   12a48:	14885663          	ble	s0,a6,12b94 <_vfprintf_r+0x115c>
   12a4c:	01078793          	addi	a5,a5,16
   12a50:	0017071b          	addiw	a4,a4,1
   12a54:	0098b023          	sd	s1,0(a7)
   12a58:	01a8b423          	sd	s10,8(a7)
   12a5c:	0cf13023          	sd	a5,192(sp)
   12a60:	0ae12c23          	sw	a4,184(sp)
   12a64:	01088893          	addi	a7,a7,16
   12a68:	fce6dee3          	ble	a4,a3,12a44 <_vfprintf_r+0x100c>
   12a6c:	0b010613          	addi	a2,sp,176
   12a70:	000a0593          	mv	a1,s4
   12a74:	000b8513          	mv	a0,s7
   12a78:	03013023          	sd	a6,32(sp)
   12a7c:	00d13023          	sd	a3,0(sp)
   12a80:	5a80a0ef          	jal	1d028 <__sprint_r>
   12a84:	ac051263          	bnez	a0,11d48 <_vfprintf_r+0x310>
   12a88:	0c013783          	ld	a5,192(sp)
   12a8c:	0b812703          	lw	a4,184(sp)
   12a90:	000b0893          	mv	a7,s6
   12a94:	02013803          	ld	a6,32(sp)
   12a98:	00013683          	ld	a3,0(sp)
   12a9c:	fa9ff06f          	j	12a44 <_vfprintf_r+0x100c>
   12aa0:	0b010613          	addi	a2,sp,176
   12aa4:	000a0593          	mv	a1,s4
   12aa8:	000b8513          	mv	a0,s7
   12aac:	57c0a0ef          	jal	1d028 <__sprint_r>
   12ab0:	a8051c63          	bnez	a0,11d48 <_vfprintf_r+0x310>
   12ab4:	08f14603          	lbu	a2,143(sp)
   12ab8:	0c013783          	ld	a5,192(sp)
   12abc:	000b0893          	mv	a7,s6
   12ac0:	f18ff06f          	j	121d8 <_vfprintf_r+0x7a0>
   12ac4:	07012683          	lw	a3,112(sp)
   12ac8:	fff6841b          	addiw	s0,a3,-1
   12acc:	c0805ae3          	blez	s0,126e0 <_vfprintf_r+0xca8>
   12ad0:	01000693          	li	a3,16
   12ad4:	e286dee3          	ble	s0,a3,12910 <_vfprintf_r+0xed8>
   12ad8:	01000913          	li	s2,16
   12adc:	00913823          	sd	s1,16(sp)
   12ae0:	00700d13          	li	s10,7
   12ae4:	00090693          	mv	a3,s2
   12ae8:	00c0006f          	j	12af4 <_vfprintf_r+0x10bc>
   12aec:	ff04041b          	addiw	s0,s0,-16
   12af0:	e286d2e3          	ble	s0,a3,12914 <_vfprintf_r+0xedc>
   12af4:	01078793          	addi	a5,a5,16
   12af8:	0017071b          	addiw	a4,a4,1
   12afc:	0098b023          	sd	s1,0(a7)
   12b00:	0128b423          	sd	s2,8(a7)
   12b04:	0cf13023          	sd	a5,192(sp)
   12b08:	0ae12c23          	sw	a4,184(sp)
   12b0c:	01088893          	addi	a7,a7,16
   12b10:	fced5ee3          	ble	a4,s10,12aec <_vfprintf_r+0x10b4>
   12b14:	0b010613          	addi	a2,sp,176
   12b18:	000a0593          	mv	a1,s4
   12b1c:	000b8513          	mv	a0,s7
   12b20:	00d13023          	sd	a3,0(sp)
   12b24:	5040a0ef          	jal	1d028 <__sprint_r>
   12b28:	a2051063          	bnez	a0,11d48 <_vfprintf_r+0x310>
   12b2c:	0c013783          	ld	a5,192(sp)
   12b30:	0b812703          	lw	a4,184(sp)
   12b34:	000b0893          	mv	a7,s6
   12b38:	00013683          	ld	a3,0(sp)
   12b3c:	fb1ff06f          	j	12aec <_vfprintf_r+0x10b4>
   12b40:	0b812703          	lw	a4,184(sp)
   12b44:	00913823          	sd	s1,16(sp)
   12b48:	01013683          	ld	a3,16(sp)
   12b4c:	008787b3          	add	a5,a5,s0
   12b50:	0088b423          	sd	s0,8(a7)
   12b54:	00d8b023          	sd	a3,0(a7)
   12b58:	0017071b          	addiw	a4,a4,1
   12b5c:	0cf13023          	sd	a5,192(sp)
   12b60:	0ae12c23          	sw	a4,184(sp)
   12b64:	00700693          	li	a3,7
   12b68:	fee6d063          	ble	a4,a3,12348 <_vfprintf_r+0x910>
   12b6c:	b9dff06f          	j	12708 <_vfprintf_r+0xcd0>
   12b70:	00000793          	li	a5,0
   12b74:	0307879b          	addiw	a5,a5,48
   12b78:	0ef107a3          	sb	a5,239(sp)
   12b7c:	07813783          	ld	a5,120(sp)
   12b80:	0ef10913          	addi	s2,sp,239
   12b84:	02f12023          	sw	a5,32(sp)
   12b88:	aacff06f          	j	11e34 <_vfprintf_r+0x3fc>
   12b8c:	0b812703          	lw	a4,184(sp)
   12b90:	00913823          	sd	s1,16(sp)
   12b94:	01013683          	ld	a3,16(sp)
   12b98:	008787b3          	add	a5,a5,s0
   12b9c:	0017071b          	addiw	a4,a4,1
   12ba0:	00d8b023          	sd	a3,0(a7)
   12ba4:	0088b423          	sd	s0,8(a7)
   12ba8:	0cf13023          	sd	a5,192(sp)
   12bac:	0ae12c23          	sw	a4,184(sp)
   12bb0:	00700693          	li	a3,7
   12bb4:	01088893          	addi	a7,a7,16
   12bb8:	02e6d063          	ble	a4,a3,12bd8 <_vfprintf_r+0x11a0>
   12bbc:	0b010613          	addi	a2,sp,176
   12bc0:	000a0593          	mv	a1,s4
   12bc4:	000b8513          	mv	a0,s7
   12bc8:	4600a0ef          	jal	1d028 <__sprint_r>
   12bcc:	96051e63          	bnez	a0,11d48 <_vfprintf_r+0x310>
   12bd0:	0c013783          	ld	a5,192(sp)
   12bd4:	000b0893          	mv	a7,s6
   12bd8:	04c12d03          	lw	s10,76(sp)
   12bdc:	09812703          	lw	a4,152(sp)
   12be0:	07012683          	lw	a3,112(sp)
   12be4:	01a90d33          	add	s10,s2,s10
   12be8:	0cd74a63          	blt	a4,a3,12cbc <_vfprintf_r+0x1284>
   12bec:	001c7693          	andi	a3,s8,1
   12bf0:	0c069663          	bnez	a3,12cbc <_vfprintf_r+0x1284>
   12bf4:	07012683          	lw	a3,112(sp)
   12bf8:	00d90433          	add	s0,s2,a3
   12bfc:	41a40433          	sub	s0,s0,s10
   12c00:	40e6873b          	subw	a4,a3,a4
   12c04:	0004041b          	sext.w	s0,s0
   12c08:	00875463          	ble	s0,a4,12c10 <_vfprintf_r+0x11d8>
   12c0c:	00070413          	mv	s0,a4
   12c10:	02805663          	blez	s0,12c3c <_vfprintf_r+0x1204>
   12c14:	0b812683          	lw	a3,184(sp)
   12c18:	008787b3          	add	a5,a5,s0
   12c1c:	01a8b023          	sd	s10,0(a7)
   12c20:	0016869b          	addiw	a3,a3,1
   12c24:	0088b423          	sd	s0,8(a7)
   12c28:	0cf13023          	sd	a5,192(sp)
   12c2c:	0ad12c23          	sw	a3,184(sp)
   12c30:	00700613          	li	a2,7
   12c34:	01088893          	addi	a7,a7,16
   12c38:	4cd64263          	blt	a2,a3,130fc <_vfprintf_r+0x16c4>
   12c3c:	60044863          	bltz	s0,1324c <_vfprintf_r+0x1814>
   12c40:	4087043b          	subw	s0,a4,s0
   12c44:	f0805463          	blez	s0,1234c <_vfprintf_r+0x914>
   12c48:	01000713          	li	a4,16
   12c4c:	ee875ae3          	ble	s0,a4,12b40 <_vfprintf_r+0x1108>
   12c50:	01000913          	li	s2,16
   12c54:	0b812703          	lw	a4,184(sp)
   12c58:	00913823          	sd	s1,16(sp)
   12c5c:	00700d13          	li	s10,7
   12c60:	00090693          	mv	a3,s2
   12c64:	00c0006f          	j	12c70 <_vfprintf_r+0x1238>
   12c68:	ff04041b          	addiw	s0,s0,-16
   12c6c:	ec86dee3          	ble	s0,a3,12b48 <_vfprintf_r+0x1110>
   12c70:	01078793          	addi	a5,a5,16
   12c74:	0017071b          	addiw	a4,a4,1
   12c78:	0098b023          	sd	s1,0(a7)
   12c7c:	0128b423          	sd	s2,8(a7)
   12c80:	0cf13023          	sd	a5,192(sp)
   12c84:	0ae12c23          	sw	a4,184(sp)
   12c88:	01088893          	addi	a7,a7,16
   12c8c:	fced5ee3          	ble	a4,s10,12c68 <_vfprintf_r+0x1230>
   12c90:	0b010613          	addi	a2,sp,176
   12c94:	000a0593          	mv	a1,s4
   12c98:	000b8513          	mv	a0,s7
   12c9c:	00d13023          	sd	a3,0(sp)
   12ca0:	3880a0ef          	jal	1d028 <__sprint_r>
   12ca4:	8a051263          	bnez	a0,11d48 <_vfprintf_r+0x310>
   12ca8:	0c013783          	ld	a5,192(sp)
   12cac:	0b812703          	lw	a4,184(sp)
   12cb0:	000b0893          	mv	a7,s6
   12cb4:	00013683          	ld	a3,0(sp)
   12cb8:	fb1ff06f          	j	12c68 <_vfprintf_r+0x1230>
   12cbc:	06013683          	ld	a3,96(sp)
   12cc0:	06813603          	ld	a2,104(sp)
   12cc4:	01088893          	addi	a7,a7,16
   12cc8:	fed8b823          	sd	a3,-16(a7)
   12ccc:	0b812683          	lw	a3,184(sp)
   12cd0:	00c787b3          	add	a5,a5,a2
   12cd4:	fec8bc23          	sd	a2,-8(a7)
   12cd8:	0016869b          	addiw	a3,a3,1
   12cdc:	0cf13023          	sd	a5,192(sp)
   12ce0:	0ad12c23          	sw	a3,184(sp)
   12ce4:	00700613          	li	a2,7
   12ce8:	f0d656e3          	ble	a3,a2,12bf4 <_vfprintf_r+0x11bc>
   12cec:	0b010613          	addi	a2,sp,176
   12cf0:	000a0593          	mv	a1,s4
   12cf4:	000b8513          	mv	a0,s7
   12cf8:	3300a0ef          	jal	1d028 <__sprint_r>
   12cfc:	00050463          	beqz	a0,12d04 <_vfprintf_r+0x12cc>
   12d00:	848ff06f          	j	11d48 <_vfprintf_r+0x310>
   12d04:	09812703          	lw	a4,152(sp)
   12d08:	0c013783          	ld	a5,192(sp)
   12d0c:	000b0893          	mv	a7,s6
   12d10:	ee5ff06f          	j	12bf4 <_vfprintf_r+0x11bc>
   12d14:	00ec7733          	and	a4,s8,a4
   12d18:	92071ae3          	bnez	a4,1264c <_vfprintf_r+0xc14>
   12d1c:	0b812703          	lw	a4,184(sp)
   12d20:	0128b023          	sd	s2,0(a7)
   12d24:	00100693          	li	a3,1
   12d28:	0017071b          	addiw	a4,a4,1
   12d2c:	99dff06f          	j	126c8 <_vfprintf_r+0xc90>
   12d30:	02813783          	ld	a5,40(sp)
   12d34:	00878713          	addi	a4,a5,8
   12d38:	0007e783          	lwu	a5,0(a5)
   12d3c:	a0045e63          	bgez	s0,11f58 <_vfprintf_r+0x520>
   12d40:	b04ff06f          	j	12044 <_vfprintf_r+0x60c>
   12d44:	0b010613          	addi	a2,sp,176
   12d48:	000a0593          	mv	a1,s4
   12d4c:	000b8513          	mv	a0,s7
   12d50:	2d80a0ef          	jal	1d028 <__sprint_r>
   12d54:	00050463          	beqz	a0,12d5c <_vfprintf_r+0x1324>
   12d58:	ff1fe06f          	j	11d48 <_vfprintf_r+0x310>
   12d5c:	0c013783          	ld	a5,192(sp)
   12d60:	0b812703          	lw	a4,184(sp)
   12d64:	000b0893          	mv	a7,s6
   12d68:	90dff06f          	j	12674 <_vfprintf_r+0xc3c>
   12d6c:	02813783          	ld	a5,40(sp)
   12d70:	00878713          	addi	a4,a5,8
   12d74:	0007e783          	lwu	a5,0(a5)
   12d78:	86045063          	bgez	s0,11dd8 <_vfprintf_r+0x3a0>
   12d7c:	a84ff06f          	j	12000 <_vfprintf_r+0x5c8>
   12d80:	0b010613          	addi	a2,sp,176
   12d84:	000a0593          	mv	a1,s4
   12d88:	000b8513          	mv	a0,s7
   12d8c:	29c0a0ef          	jal	1d028 <__sprint_r>
   12d90:	00050463          	beqz	a0,12d98 <_vfprintf_r+0x1360>
   12d94:	fb5fe06f          	j	11d48 <_vfprintf_r+0x310>
   12d98:	0c013783          	ld	a5,192(sp)
   12d9c:	0b812703          	lw	a4,184(sp)
   12da0:	000b0893          	mv	a7,s6
   12da4:	8fdff06f          	j	126a0 <_vfprintf_r+0xc68>
   12da8:	02d00713          	li	a4,45
   12dac:	08e107a3          	sb	a4,143(sp)
   12db0:	40f007b3          	neg	a5,a5
   12db4:	4a044063          	bltz	s0,13254 <_vfprintf_r+0x181c>
   12db8:	f7fc7c13          	andi	s8,s8,-129
   12dbc:	02d00613          	li	a2,45
   12dc0:	9a8ff06f          	j	11f68 <_vfprintf_r+0x530>
   12dc4:	05813507          	fld	fa0,88(sp)
   12dc8:	01113023          	sd	a7,0(sp)
   12dcc:	101060ef          	jal	196cc <__fpclassifyd>
   12dd0:	00013883          	ld	a7,0(sp)
   12dd4:	2a050463          	beqz	a0,1307c <_vfprintf_r+0x1644>
   12dd8:	fff00793          	li	a5,-1
   12ddc:	fdfd7d93          	andi	s11,s10,-33
   12de0:	62f40c63          	beq	s0,a5,13418 <_vfprintf_r+0x19e0>
   12de4:	04700793          	li	a5,71
   12de8:	62fd8263          	beq	s11,a5,1340c <_vfprintf_r+0x19d4>
   12dec:	05813703          	ld	a4,88(sp)
   12df0:	100c6693          	ori	a3,s8,256
   12df4:	00d12023          	sw	a3,0(sp)
   12df8:	42075793          	srai	a5,a4,0x20
   12dfc:	f2070453          	fmv.d.x	fs0,a4
   12e00:	00000c93          	li	s9,0
   12e04:	6607c663          	bltz	a5,13470 <_vfprintf_r+0x1a38>
   12e08:	06600793          	li	a5,102
   12e0c:	60fd0a63          	beq	s10,a5,13420 <_vfprintf_r+0x19e8>
   12e10:	04600793          	li	a5,70
   12e14:	72fd0863          	beq	s10,a5,13544 <_vfprintf_r+0x1b0c>
   12e18:	fbbd859b          	addiw	a1,s11,-69
   12e1c:	0015b593          	seqz	a1,a1
   12e20:	228405d3          	fmv.d	fa1,fs0
   12e24:	00b405bb          	addw	a1,s0,a1
   12e28:	09c10793          	addi	a5,sp,156
   12e2c:	00058693          	mv	a3,a1
   12e30:	0a810813          	addi	a6,sp,168
   12e34:	09810713          	addi	a4,sp,152
   12e38:	00200613          	li	a2,2
   12e3c:	000b8513          	mv	a0,s7
   12e40:	01113823          	sd	a7,16(sp)
   12e44:	00b13423          	sd	a1,8(sp)
   12e48:	26c020ef          	jal	150b4 <_dtoa_r>
   12e4c:	06700793          	li	a5,103
   12e50:	00050913          	mv	s2,a0
   12e54:	00813583          	ld	a1,8(sp)
   12e58:	01013883          	ld	a7,16(sp)
   12e5c:	46fd0863          	beq	s10,a5,132cc <_vfprintf_r+0x1894>
   12e60:	04700793          	li	a5,71
   12e64:	00b50733          	add	a4,a0,a1
   12e68:	48fd0a63          	beq	s10,a5,132fc <_vfprintf_r+0x18c4>
   12e6c:	f20007d3          	fmv.d.x	fa5,zero
   12e70:	00070793          	mv	a5,a4
   12e74:	a2f426d3          	feq.d	a3,fs0,fa5
   12e78:	02069263          	bnez	a3,12e9c <_vfprintf_r+0x1464>
   12e7c:	0a813783          	ld	a5,168(sp)
   12e80:	00e7fe63          	bleu	a4,a5,12e9c <_vfprintf_r+0x1464>
   12e84:	03000613          	li	a2,48
   12e88:	00178693          	addi	a3,a5,1
   12e8c:	0ad13423          	sd	a3,168(sp)
   12e90:	00c78023          	sb	a2,0(a5)
   12e94:	0a813783          	ld	a5,168(sp)
   12e98:	fee7e8e3          	bltu	a5,a4,12e88 <_vfprintf_r+0x1450>
   12e9c:	412787b3          	sub	a5,a5,s2
   12ea0:	06f12823          	sw	a5,112(sp)
   12ea4:	04700793          	li	a5,71
   12ea8:	46fd8663          	beq	s11,a5,13314 <_vfprintf_r+0x18dc>
   12eac:	06500793          	li	a5,101
   12eb0:	7ba7dc63          	ble	s10,a5,13668 <_vfprintf_r+0x1c30>
   12eb4:	06600793          	li	a5,102
   12eb8:	60fd0263          	beq	s10,a5,134bc <_vfprintf_r+0x1a84>
   12ebc:	09812783          	lw	a5,152(sp)
   12ec0:	04f12623          	sw	a5,76(sp)
   12ec4:	04c12703          	lw	a4,76(sp)
   12ec8:	07012683          	lw	a3,112(sp)
   12ecc:	00070793          	mv	a5,a4
   12ed0:	5ad74663          	blt	a4,a3,1347c <_vfprintf_r+0x1a44>
   12ed4:	001c7c13          	andi	s8,s8,1
   12ed8:	5c0c1463          	bnez	s8,134a0 <_vfprintf_r+0x1a68>
   12edc:	76074863          	bltz	a4,1364c <_vfprintf_r+0x1c14>
   12ee0:	04c12703          	lw	a4,76(sp)
   12ee4:	06700d13          	li	s10,103
   12ee8:	02e12023          	sw	a4,32(sp)
   12eec:	440c9063          	bnez	s9,1332c <_vfprintf_r+0x18f4>
   12ef0:	08f14603          	lbu	a2,143(sp)
   12ef4:	00f12423          	sw	a5,8(sp)
   12ef8:	00012c03          	lw	s8,0(sp)
   12efc:	00000413          	li	s0,0
   12f00:	f4dfe06f          	j	11e4c <_vfprintf_r+0x414>
   12f04:	00076783          	lwu	a5,0(a4)
   12f08:	00870713          	addi	a4,a4,8
   12f0c:	02e13423          	sd	a4,40(sp)
   12f10:	974ff06f          	j	12084 <_vfprintf_r+0x64c>
   12f14:	02813703          	ld	a4,40(sp)
   12f18:	040c7c13          	andi	s8,s8,64
   12f1c:	00073783          	ld	a5,0(a4)
   12f20:	00870713          	addi	a4,a4,8
   12f24:	02e13423          	sd	a4,40(sp)
   12f28:	180c0263          	beqz	s8,130ac <_vfprintf_r+0x1674>
   12f2c:	01c15703          	lhu	a4,28(sp)
   12f30:	00e79023          	sh	a4,0(a5)
   12f34:	c25fe06f          	j	11b58 <_vfprintf_r+0x120>
   12f38:	00072783          	lw	a5,0(a4)
   12f3c:	00870713          	addi	a4,a4,8
   12f40:	02e13423          	sd	a4,40(sp)
   12f44:	d24ff06f          	j	12468 <_vfprintf_r+0xa30>
   12f48:	080107a3          	sb	zero,143(sp)
   12f4c:	ec044463          	bltz	s0,12614 <_vfprintf_r+0xbdc>
   12f50:	f7fc7c13          	andi	s8,s8,-129
   12f54:	d41fe06f          	j	11c94 <_vfprintf_r+0x25c>
   12f58:	0b812703          	lw	a4,184(sp)
   12f5c:	00913823          	sd	s1,16(sp)
   12f60:	b74ff06f          	j	122d4 <_vfprintf_r+0x89c>
   12f64:	0b010613          	addi	a2,sp,176
   12f68:	000a0593          	mv	a1,s4
   12f6c:	000b8513          	mv	a0,s7
   12f70:	0b80a0ef          	jal	1d028 <__sprint_r>
   12f74:	00050463          	beqz	a0,12f7c <_vfprintf_r+0x1544>
   12f78:	dd1fe06f          	j	11d48 <_vfprintf_r+0x310>
   12f7c:	0c013783          	ld	a5,192(sp)
   12f80:	000b0893          	mv	a7,s6
   12f84:	ff0ff06f          	j	12774 <_vfprintf_r+0xd3c>
   12f88:	0b812703          	lw	a4,184(sp)
   12f8c:	000226b7          	lui	a3,0x22
   12f90:	d3068693          	addi	a3,a3,-720 # 21d30 <zeroes.4123+0x6c8>
   12f94:	00d8b023          	sd	a3,0(a7)
   12f98:	00178793          	addi	a5,a5,1
   12f9c:	00100693          	li	a3,1
   12fa0:	0017071b          	addiw	a4,a4,1
   12fa4:	00d8b423          	sd	a3,8(a7)
   12fa8:	0cf13023          	sd	a5,192(sp)
   12fac:	0ae12c23          	sw	a4,184(sp)
   12fb0:	00700693          	li	a3,7
   12fb4:	01088893          	addi	a7,a7,16
   12fb8:	16e6ca63          	blt	a3,a4,1312c <_vfprintf_r+0x16f4>
   12fbc:	12040663          	beqz	s0,130e8 <_vfprintf_r+0x16b0>
   12fc0:	06013703          	ld	a4,96(sp)
   12fc4:	06813683          	ld	a3,104(sp)
   12fc8:	01088893          	addi	a7,a7,16
   12fcc:	fee8b823          	sd	a4,-16(a7)
   12fd0:	0b812703          	lw	a4,184(sp)
   12fd4:	00f687b3          	add	a5,a3,a5
   12fd8:	fed8bc23          	sd	a3,-8(a7)
   12fdc:	0017071b          	addiw	a4,a4,1
   12fe0:	0cf13023          	sd	a5,192(sp)
   12fe4:	0ae12c23          	sw	a4,184(sp)
   12fe8:	00700693          	li	a3,7
   12fec:	3ee6ca63          	blt	a3,a4,133e0 <_vfprintf_r+0x19a8>
   12ff0:	4080043b          	negw	s0,s0
   12ff4:	20805263          	blez	s0,131f8 <_vfprintf_r+0x17c0>
   12ff8:	01000693          	li	a3,16
   12ffc:	1a86d663          	ble	s0,a3,131a8 <_vfprintf_r+0x1770>
   13000:	01000d13          	li	s10,16
   13004:	00913823          	sd	s1,16(sp)
   13008:	00700813          	li	a6,7
   1300c:	000d0693          	mv	a3,s10
   13010:	00c0006f          	j	1301c <_vfprintf_r+0x15e4>
   13014:	ff04041b          	addiw	s0,s0,-16
   13018:	1886da63          	ble	s0,a3,131ac <_vfprintf_r+0x1774>
   1301c:	01078793          	addi	a5,a5,16
   13020:	0017071b          	addiw	a4,a4,1
   13024:	0098b023          	sd	s1,0(a7)
   13028:	01a8b423          	sd	s10,8(a7)
   1302c:	0cf13023          	sd	a5,192(sp)
   13030:	0ae12c23          	sw	a4,184(sp)
   13034:	01088893          	addi	a7,a7,16
   13038:	fce85ee3          	ble	a4,a6,13014 <_vfprintf_r+0x15dc>
   1303c:	0b010613          	addi	a2,sp,176
   13040:	000a0593          	mv	a1,s4
   13044:	000b8513          	mv	a0,s7
   13048:	02d13023          	sd	a3,32(sp)
   1304c:	01013023          	sd	a6,0(sp)
   13050:	7d9090ef          	jal	1d028 <__sprint_r>
   13054:	00050463          	beqz	a0,1305c <_vfprintf_r+0x1624>
   13058:	cf1fe06f          	j	11d48 <_vfprintf_r+0x310>
   1305c:	0c013783          	ld	a5,192(sp)
   13060:	0b812703          	lw	a4,184(sp)
   13064:	000b0893          	mv	a7,s6
   13068:	02013683          	ld	a3,32(sp)
   1306c:	00013803          	ld	a6,0(sp)
   13070:	fa5ff06f          	j	13014 <_vfprintf_r+0x15dc>
   13074:	fff00513          	li	a0,-1
   13078:	ce5fe06f          	j	11d5c <_vfprintf_r+0x324>
   1307c:	04700793          	li	a5,71
   13080:	27a7c863          	blt	a5,s10,132f0 <_vfprintf_r+0x18b8>
   13084:	00022937          	lui	s2,0x22
   13088:	ce890913          	addi	s2,s2,-792 # 21ce8 <zeroes.4123+0x680>
   1308c:	00300793          	li	a5,3
   13090:	00f12423          	sw	a5,8(sp)
   13094:	f7fc7c13          	andi	s8,s8,-129
   13098:	08f14603          	lbu	a2,143(sp)
   1309c:	02f12023          	sw	a5,32(sp)
   130a0:	00000413          	li	s0,0
   130a4:	04012623          	sw	zero,76(sp)
   130a8:	da5fe06f          	j	11e4c <_vfprintf_r+0x414>
   130ac:	01c12703          	lw	a4,28(sp)
   130b0:	00e7a023          	sw	a4,0(a5)
   130b4:	aa5fe06f          	j	11b58 <_vfprintf_r+0x120>
   130b8:	00022937          	lui	s2,0x22
   130bc:	cd890913          	addi	s2,s2,-808 # 21cd8 <zeroes.4123+0x670>
   130c0:	c34ff06f          	j	124f4 <_vfprintf_r+0xabc>
   130c4:	0b010613          	addi	a2,sp,176
   130c8:	000a0593          	mv	a1,s4
   130cc:	000b8513          	mv	a0,s7
   130d0:	759090ef          	jal	1d028 <__sprint_r>
   130d4:	00050463          	beqz	a0,130dc <_vfprintf_r+0x16a4>
   130d8:	c71fe06f          	j	11d48 <_vfprintf_r+0x310>
   130dc:	0c013783          	ld	a5,192(sp)
   130e0:	000b0893          	mv	a7,s6
   130e4:	931ff06f          	j	12a14 <_vfprintf_r+0xfdc>
   130e8:	07012703          	lw	a4,112(sp)
   130ec:	ec071ae3          	bnez	a4,12fc0 <_vfprintf_r+0x1588>
   130f0:	001c7713          	andi	a4,s8,1
   130f4:	a4070c63          	beqz	a4,1234c <_vfprintf_r+0x914>
   130f8:	ec9ff06f          	j	12fc0 <_vfprintf_r+0x1588>
   130fc:	0b010613          	addi	a2,sp,176
   13100:	000a0593          	mv	a1,s4
   13104:	000b8513          	mv	a0,s7
   13108:	721090ef          	jal	1d028 <__sprint_r>
   1310c:	00050463          	beqz	a0,13114 <_vfprintf_r+0x16dc>
   13110:	c39fe06f          	j	11d48 <_vfprintf_r+0x310>
   13114:	09812703          	lw	a4,152(sp)
   13118:	07012683          	lw	a3,112(sp)
   1311c:	0c013783          	ld	a5,192(sp)
   13120:	000b0893          	mv	a7,s6
   13124:	40e6873b          	subw	a4,a3,a4
   13128:	b15ff06f          	j	12c3c <_vfprintf_r+0x1204>
   1312c:	0b010613          	addi	a2,sp,176
   13130:	000a0593          	mv	a1,s4
   13134:	000b8513          	mv	a0,s7
   13138:	6f1090ef          	jal	1d028 <__sprint_r>
   1313c:	00050463          	beqz	a0,13144 <_vfprintf_r+0x170c>
   13140:	c09fe06f          	j	11d48 <_vfprintf_r+0x310>
   13144:	09812403          	lw	s0,152(sp)
   13148:	0c013783          	ld	a5,192(sp)
   1314c:	000b0893          	mv	a7,s6
   13150:	e60418e3          	bnez	s0,12fc0 <_vfprintf_r+0x1588>
   13154:	f95ff06f          	j	130e8 <_vfprintf_r+0x16b0>
   13158:	001c7793          	andi	a5,s8,1
   1315c:	00078e63          	beqz	a5,13178 <_vfprintf_r+0x1740>
   13160:	03000793          	li	a5,48
   13164:	0ef107a3          	sb	a5,239(sp)
   13168:	07813783          	ld	a5,120(sp)
   1316c:	0ef10913          	addi	s2,sp,239
   13170:	02f12023          	sw	a5,32(sp)
   13174:	cc1fe06f          	j	11e34 <_vfprintf_r+0x3fc>
   13178:	02012023          	sw	zero,32(sp)
   1317c:	000b0913          	mv	s2,s6
   13180:	cb5fe06f          	j	11e34 <_vfprintf_r+0x3fc>
   13184:	0b010613          	addi	a2,sp,176
   13188:	000a0593          	mv	a1,s4
   1318c:	000b8513          	mv	a0,s7
   13190:	699090ef          	jal	1d028 <__sprint_r>
   13194:	00050463          	beqz	a0,1319c <_vfprintf_r+0x1764>
   13198:	bb1fe06f          	j	11d48 <_vfprintf_r+0x310>
   1319c:	0c013783          	ld	a5,192(sp)
   131a0:	000b0893          	mv	a7,s6
   131a4:	e14ff06f          	j	127b8 <_vfprintf_r+0xd80>
   131a8:	00913823          	sd	s1,16(sp)
   131ac:	01013683          	ld	a3,16(sp)
   131b0:	008787b3          	add	a5,a5,s0
   131b4:	0017071b          	addiw	a4,a4,1
   131b8:	00d8b023          	sd	a3,0(a7)
   131bc:	0088b423          	sd	s0,8(a7)
   131c0:	0cf13023          	sd	a5,192(sp)
   131c4:	0ae12c23          	sw	a4,184(sp)
   131c8:	00700693          	li	a3,7
   131cc:	01088893          	addi	a7,a7,16
   131d0:	02e6d463          	ble	a4,a3,131f8 <_vfprintf_r+0x17c0>
   131d4:	0b010613          	addi	a2,sp,176
   131d8:	000a0593          	mv	a1,s4
   131dc:	000b8513          	mv	a0,s7
   131e0:	649090ef          	jal	1d028 <__sprint_r>
   131e4:	00050463          	beqz	a0,131ec <_vfprintf_r+0x17b4>
   131e8:	b61fe06f          	j	11d48 <_vfprintf_r+0x310>
   131ec:	0c013783          	ld	a5,192(sp)
   131f0:	0b812703          	lw	a4,184(sp)
   131f4:	000b0893          	mv	a7,s6
   131f8:	07012683          	lw	a3,112(sp)
   131fc:	0017071b          	addiw	a4,a4,1
   13200:	0128b023          	sd	s2,0(a7)
   13204:	00f687b3          	add	a5,a3,a5
   13208:	cecff06f          	j	126f4 <_vfprintf_r+0xcbc>
   1320c:	00090513          	mv	a0,s2
   13210:	f58fe0ef          	jal	11968 <strlen>
   13214:	0005079b          	sext.w	a5,a0
   13218:	02f12023          	sw	a5,32(sp)
   1321c:	00078d93          	mv	s11,a5
   13220:	00013883          	ld	a7,0(sp)
   13224:	0007c463          	bltz	a5,1322c <_vfprintf_r+0x17f4>
   13228:	cf5fe06f          	j	11f1c <_vfprintf_r+0x4e4>
   1322c:	00000d93          	li	s11,0
   13230:	cedfe06f          	j	11f1c <_vfprintf_r+0x4e4>
   13234:	0c013783          	ld	a5,192(sp)
   13238:	0b812703          	lw	a4,184(sp)
   1323c:	05513823          	sd	s5,80(sp)
   13240:	f6dfe06f          	j	121ac <_vfprintf_r+0x774>
   13244:	00000413          	li	s0,0
   13248:	fd0ff06f          	j	12a18 <_vfprintf_r+0xfe0>
   1324c:	00000413          	li	s0,0
   13250:	9f1ff06f          	j	12c40 <_vfprintf_r+0x1208>
   13254:	02d00613          	li	a2,45
   13258:	00100713          	li	a4,1
   1325c:	00100693          	li	a3,1
   13260:	00d71463          	bne	a4,a3,13268 <_vfprintf_r+0x1830>
   13264:	d05fe06f          	j	11f68 <_vfprintf_r+0x530>
   13268:	00200693          	li	a3,2
   1326c:	00d71463          	bne	a4,a3,13274 <_vfprintf_r+0x183c>
   13270:	a31fe06f          	j	11ca0 <_vfprintf_r+0x268>
   13274:	b81fe06f          	j	11df4 <_vfprintf_r+0x3bc>
   13278:	00600713          	li	a4,6
   1327c:	00877463          	bleu	s0,a4,13284 <_vfprintf_r+0x184c>
   13280:	00070413          	mv	s0,a4
   13284:	02812023          	sw	s0,32(sp)
   13288:	00040d93          	mv	s11,s0
   1328c:	32044a63          	bltz	s0,135c0 <_vfprintf_r+0x1b88>
   13290:	00022937          	lui	s2,0x22
   13294:	01b12423          	sw	s11,8(sp)
   13298:	03913423          	sd	s9,40(sp)
   1329c:	00000613          	li	a2,0
   132a0:	00000413          	li	s0,0
   132a4:	04012623          	sw	zero,76(sp)
   132a8:	d2890913          	addi	s2,s2,-728 # 21d28 <zeroes.4123+0x6c0>
   132ac:	e45fe06f          	j	120f0 <_vfprintf_r+0x6b8>
   132b0:	0b812703          	lw	a4,184(sp)
   132b4:	05513823          	sd	s5,80(sp)
   132b8:	91cff06f          	j	123d4 <_vfprintf_r+0x99c>
   132bc:	00070c13          	mv	s8,a4
   132c0:	00000613          	li	a2,0
   132c4:	00200713          	li	a4,2
   132c8:	f95ff06f          	j	1325c <_vfprintf_r+0x1824>
   132cc:	001c7793          	andi	a5,s8,1
   132d0:	00b50733          	add	a4,a0,a1
   132d4:	b8079ce3          	bnez	a5,12e6c <_vfprintf_r+0x1434>
   132d8:	0a813783          	ld	a5,168(sp)
   132dc:	bc1ff06f          	j	12e9c <_vfprintf_r+0x1464>
   132e0:	02d00793          	li	a5,45
   132e4:	08f107a3          	sb	a5,143(sp)
   132e8:	02d00613          	li	a2,45
   132ec:	9f8ff06f          	j	124e4 <_vfprintf_r+0xaac>
   132f0:	00022937          	lui	s2,0x22
   132f4:	cf090913          	addi	s2,s2,-784 # 21cf0 <zeroes.4123+0x688>
   132f8:	d95ff06f          	j	1308c <_vfprintf_r+0x1654>
   132fc:	001c7793          	andi	a5,s8,1
   13300:	26079a63          	bnez	a5,13574 <_vfprintf_r+0x1b3c>
   13304:	0a813783          	ld	a5,168(sp)
   13308:	412787b3          	sub	a5,a5,s2
   1330c:	06f12823          	sw	a5,112(sp)
   13310:	35ad9c63          	bne	s11,s10,13668 <_vfprintf_r+0x1c30>
   13314:	09812783          	lw	a5,152(sp)
   13318:	ffd00713          	li	a4,-3
   1331c:	02e7cc63          	blt	a5,a4,13354 <_vfprintf_r+0x191c>
   13320:	02f44a63          	blt	s0,a5,13354 <_vfprintf_r+0x191c>
   13324:	04f12623          	sw	a5,76(sp)
   13328:	b9dff06f          	j	12ec4 <_vfprintf_r+0x148c>
   1332c:	02d00713          	li	a4,45
   13330:	08e107a3          	sb	a4,143(sp)
   13334:	00f12423          	sw	a5,8(sp)
   13338:	00012c03          	lw	s8,0(sp)
   1333c:	02d00613          	li	a2,45
   13340:	00000413          	li	s0,0
   13344:	b0dfe06f          	j	11e50 <_vfprintf_r+0x418>
   13348:	0b812703          	lw	a4,184(sp)
   1334c:	00913823          	sd	s1,16(sp)
   13350:	d78ff06f          	j	128c8 <_vfprintf_r+0xe90>
   13354:	ffed0d1b          	addiw	s10,s10,-2
   13358:	fff7879b          	addiw	a5,a5,-1
   1335c:	08f12c23          	sw	a5,152(sp)
   13360:	0ba10023          	sb	s10,160(sp)
   13364:	2c07c863          	bltz	a5,13634 <_vfprintf_r+0x1bfc>
   13368:	02b00713          	li	a4,43
   1336c:	0ae100a3          	sb	a4,161(sp)
   13370:	00900613          	li	a2,9
   13374:	16f64463          	blt	a2,a5,134dc <_vfprintf_r+0x1aa4>
   13378:	0307879b          	addiw	a5,a5,48
   1337c:	03000713          	li	a4,48
   13380:	0af101a3          	sb	a5,163(sp)
   13384:	0ae10123          	sb	a4,162(sp)
   13388:	0a410793          	addi	a5,sp,164
   1338c:	0a010713          	addi	a4,sp,160
   13390:	40e787bb          	subw	a5,a5,a4
   13394:	07012703          	lw	a4,112(sp)
   13398:	06f12a23          	sw	a5,116(sp)
   1339c:	00e787bb          	addw	a5,a5,a4
   133a0:	02f12023          	sw	a5,32(sp)
   133a4:	00100793          	li	a5,1
   133a8:	26e7d263          	ble	a4,a5,1360c <_vfprintf_r+0x1bd4>
   133ac:	02012783          	lw	a5,32(sp)
   133b0:	0017879b          	addiw	a5,a5,1
   133b4:	02f12023          	sw	a5,32(sp)
   133b8:	2607c463          	bltz	a5,13620 <_vfprintf_r+0x1be8>
   133bc:	04012623          	sw	zero,76(sp)
   133c0:	b2dff06f          	j	12eec <_vfprintf_r+0x14b4>
   133c4:	00812423          	sw	s0,8(sp)
   133c8:	02812023          	sw	s0,32(sp)
   133cc:	08f14603          	lbu	a2,143(sp)
   133d0:	03913423          	sd	s9,40(sp)
   133d4:	00000413          	li	s0,0
   133d8:	04012623          	sw	zero,76(sp)
   133dc:	a71fe06f          	j	11e4c <_vfprintf_r+0x414>
   133e0:	0b010613          	addi	a2,sp,176
   133e4:	000a0593          	mv	a1,s4
   133e8:	000b8513          	mv	a0,s7
   133ec:	43d090ef          	jal	1d028 <__sprint_r>
   133f0:	00050463          	beqz	a0,133f8 <_vfprintf_r+0x19c0>
   133f4:	955fe06f          	j	11d48 <_vfprintf_r+0x310>
   133f8:	09812403          	lw	s0,152(sp)
   133fc:	0c013783          	ld	a5,192(sp)
   13400:	0b812703          	lw	a4,184(sp)
   13404:	000b0893          	mv	a7,s6
   13408:	be9ff06f          	j	12ff0 <_vfprintf_r+0x15b8>
   1340c:	9e0410e3          	bnez	s0,12dec <_vfprintf_r+0x13b4>
   13410:	00090413          	mv	s0,s2
   13414:	9d9ff06f          	j	12dec <_vfprintf_r+0x13b4>
   13418:	00600413          	li	s0,6
   1341c:	9d1ff06f          	j	12dec <_vfprintf_r+0x13b4>
   13420:	228405d3          	fmv.d	fa1,fs0
   13424:	09810713          	addi	a4,sp,152
   13428:	0a810813          	addi	a6,sp,168
   1342c:	09c10793          	addi	a5,sp,156
   13430:	00040693          	mv	a3,s0
   13434:	00300613          	li	a2,3
   13438:	000b8513          	mv	a0,s7
   1343c:	01113423          	sd	a7,8(sp)
   13440:	475010ef          	jal	150b4 <_dtoa_r>
   13444:	00813883          	ld	a7,8(sp)
   13448:	00040713          	mv	a4,s0
   1344c:	00050913          	mv	s2,a0
   13450:	00e50733          	add	a4,a0,a4
   13454:	00040593          	mv	a1,s0
   13458:	00094683          	lbu	a3,0(s2)
   1345c:	03000793          	li	a5,48
   13460:	14f68063          	beq	a3,a5,135a0 <_vfprintf_r+0x1b68>
   13464:	09812583          	lw	a1,152(sp)
   13468:	00b70733          	add	a4,a4,a1
   1346c:	a01ff06f          	j	12e6c <_vfprintf_r+0x1434>
   13470:	22841453          	fneg.d	fs0,fs0
   13474:	02d00c93          	li	s9,45
   13478:	991ff06f          	j	12e08 <_vfprintf_r+0x13d0>
   1347c:	04c12703          	lw	a4,76(sp)
   13480:	00100793          	li	a5,1
   13484:	1ae05263          	blez	a4,13628 <_vfprintf_r+0x1bf0>
   13488:	07012703          	lw	a4,112(sp)
   1348c:	00e787bb          	addw	a5,a5,a4
   13490:	02f12023          	sw	a5,32(sp)
   13494:	0007ce63          	bltz	a5,134b0 <_vfprintf_r+0x1a78>
   13498:	06700d13          	li	s10,103
   1349c:	a51ff06f          	j	12eec <_vfprintf_r+0x14b4>
   134a0:	04c12783          	lw	a5,76(sp)
   134a4:	0017879b          	addiw	a5,a5,1
   134a8:	02f12023          	sw	a5,32(sp)
   134ac:	fe07d6e3          	bgez	a5,13498 <_vfprintf_r+0x1a60>
   134b0:	00000793          	li	a5,0
   134b4:	06700d13          	li	s10,103
   134b8:	a35ff06f          	j	12eec <_vfprintf_r+0x14b4>
   134bc:	09812783          	lw	a5,152(sp)
   134c0:	04f12623          	sw	a5,76(sp)
   134c4:	12f05263          	blez	a5,135e8 <_vfprintf_r+0x1bb0>
   134c8:	0a041e63          	bnez	s0,13584 <_vfprintf_r+0x1b4c>
   134cc:	001c7c13          	andi	s8,s8,1
   134d0:	0a0c1a63          	bnez	s8,13584 <_vfprintf_r+0x1b4c>
   134d4:	02f12023          	sw	a5,32(sp)
   134d8:	a15ff06f          	j	12eec <_vfprintf_r+0x14b4>
   134dc:	0af10593          	addi	a1,sp,175
   134e0:	00058713          	mv	a4,a1
   134e4:	00a00513          	li	a0,10
   134e8:	02a7e6bb          	remw	a3,a5,a0
   134ec:	fff70713          	addi	a4,a4,-1
   134f0:	02a7c7bb          	divw	a5,a5,a0
   134f4:	0306869b          	addiw	a3,a3,48
   134f8:	00d70023          	sb	a3,0(a4)
   134fc:	fef646e3          	blt	a2,a5,134e8 <_vfprintf_r+0x1ab0>
   13500:	0307879b          	addiw	a5,a5,48
   13504:	0ff7f793          	andi	a5,a5,255
   13508:	fff70693          	addi	a3,a4,-1
   1350c:	fef70fa3          	sb	a5,-1(a4)
   13510:	16b6f863          	bleu	a1,a3,13680 <_vfprintf_r+0x1c48>
   13514:	0a210613          	addi	a2,sp,162
   13518:	0080006f          	j	13520 <_vfprintf_r+0x1ae8>
   1351c:	0006c783          	lbu	a5,0(a3)
   13520:	00160613          	addi	a2,a2,1 # 2001 <_ftext-0xdfff>
   13524:	00168693          	addi	a3,a3,1
   13528:	fef60fa3          	sb	a5,-1(a2)
   1352c:	feb698e3          	bne	a3,a1,1351c <_vfprintf_r+0x1ae4>
   13530:	0b010793          	addi	a5,sp,176
   13534:	40e787b3          	sub	a5,a5,a4
   13538:	0a210713          	addi	a4,sp,162
   1353c:	00f707b3          	add	a5,a4,a5
   13540:	e4dff06f          	j	1338c <_vfprintf_r+0x1954>
   13544:	228405d3          	fmv.d	fa1,fs0
   13548:	0a810813          	addi	a6,sp,168
   1354c:	09c10793          	addi	a5,sp,156
   13550:	09810713          	addi	a4,sp,152
   13554:	00040693          	mv	a3,s0
   13558:	00300613          	li	a2,3
   1355c:	000b8513          	mv	a0,s7
   13560:	01113423          	sd	a7,8(sp)
   13564:	351010ef          	jal	150b4 <_dtoa_r>
   13568:	00813883          	ld	a7,8(sp)
   1356c:	00050913          	mv	s2,a0
   13570:	00040593          	mv	a1,s0
   13574:	04600793          	li	a5,70
   13578:	00b90733          	add	a4,s2,a1
   1357c:	ecfd0ee3          	beq	s10,a5,13458 <_vfprintf_r+0x1a20>
   13580:	8edff06f          	j	12e6c <_vfprintf_r+0x1434>
   13584:	04c12783          	lw	a5,76(sp)
   13588:	0014041b          	addiw	s0,s0,1
   1358c:	008787bb          	addw	a5,a5,s0
   13590:	02f12023          	sw	a5,32(sp)
   13594:	9407dce3          	bgez	a5,12eec <_vfprintf_r+0x14b4>
   13598:	00000793          	li	a5,0
   1359c:	951ff06f          	j	12eec <_vfprintf_r+0x14b4>
   135a0:	f20007d3          	fmv.d.x	fa5,zero
   135a4:	a2f427d3          	feq.d	a5,fs0,fa5
   135a8:	ea079ee3          	bnez	a5,13464 <_vfprintf_r+0x1a2c>
   135ac:	00100793          	li	a5,1
   135b0:	40b785bb          	subw	a1,a5,a1
   135b4:	08b12c23          	sw	a1,152(sp)
   135b8:	00b70733          	add	a4,a4,a1
   135bc:	8b1ff06f          	j	12e6c <_vfprintf_r+0x1434>
   135c0:	00000d93          	li	s11,0
   135c4:	ccdff06f          	j	13290 <_vfprintf_r+0x1858>
   135c8:	02813783          	ld	a5,40(sp)
   135cc:	0007a403          	lw	s0,0(a5)
   135d0:	00878793          	addi	a5,a5,8
   135d4:	02f13423          	sd	a5,40(sp)
   135d8:	00044463          	bltz	s0,135e0 <_vfprintf_r+0x1ba8>
   135dc:	e18fe06f          	j	11bf4 <_vfprintf_r+0x1bc>
   135e0:	fff00413          	li	s0,-1
   135e4:	e10fe06f          	j	11bf4 <_vfprintf_r+0x1bc>
   135e8:	00041a63          	bnez	s0,135fc <_vfprintf_r+0x1bc4>
   135ec:	00100793          	li	a5,1
   135f0:	00fc7c33          	and	s8,s8,a5
   135f4:	02f12023          	sw	a5,32(sp)
   135f8:	8e0c0ae3          	beqz	s8,12eec <_vfprintf_r+0x14b4>
   135fc:	0024079b          	addiw	a5,s0,2
   13600:	02f12023          	sw	a5,32(sp)
   13604:	8e07d4e3          	bgez	a5,12eec <_vfprintf_r+0x14b4>
   13608:	f91ff06f          	j	13598 <_vfprintf_r+0x1b60>
   1360c:	00fc7c33          	and	s8,s8,a5
   13610:	d80c1ee3          	bnez	s8,133ac <_vfprintf_r+0x1974>
   13614:	02012703          	lw	a4,32(sp)
   13618:	00070793          	mv	a5,a4
   1361c:	da0750e3          	bgez	a4,133bc <_vfprintf_r+0x1984>
   13620:	00000793          	li	a5,0
   13624:	d99ff06f          	j	133bc <_vfprintf_r+0x1984>
   13628:	00200793          	li	a5,2
   1362c:	40e787bb          	subw	a5,a5,a4
   13630:	e59ff06f          	j	13488 <_vfprintf_r+0x1a50>
   13634:	02d00713          	li	a4,45
   13638:	40f007bb          	negw	a5,a5
   1363c:	0ae100a3          	sb	a4,161(sp)
   13640:	d31ff06f          	j	13370 <_vfprintf_r+0x1938>
   13644:	08b107a3          	sb	a1,143(sp)
   13648:	ed9fe06f          	j	12520 <_vfprintf_r+0xae8>
   1364c:	00000793          	li	a5,0
   13650:	891ff06f          	j	12ee0 <_vfprintf_r+0x14a8>
   13654:	08b107a3          	sb	a1,143(sp)
   13658:	010c6c13          	ori	s8,s8,16
   1365c:	f2dfe06f          	j	12588 <_vfprintf_r+0xb50>
   13660:	08b107a3          	sb	a1,143(sp)
   13664:	ef5fe06f          	j	12558 <_vfprintf_r+0xb20>
   13668:	09812783          	lw	a5,152(sp)
   1366c:	cedff06f          	j	13358 <_vfprintf_r+0x1920>
   13670:	08b107a3          	sb	a1,143(sp)
   13674:	e2dfe06f          	j	124a0 <_vfprintf_r+0xa68>
   13678:	08b107a3          	sb	a1,143(sp)
   1367c:	dd5fe06f          	j	12450 <_vfprintf_r+0xa18>
   13680:	0a210793          	addi	a5,sp,162
   13684:	d09ff06f          	j	1338c <_vfprintf_r+0x1954>
   13688:	08b107a3          	sb	a1,143(sp)
   1368c:	f41fe06f          	j	125cc <_vfprintf_r+0xb94>
   13690:	08b107a3          	sb	a1,143(sp)
   13694:	f28fe06f          	j	11dbc <_vfprintf_r+0x384>
   13698:	08b107a3          	sb	a1,143(sp)
   1369c:	9c5fe06f          	j	12060 <_vfprintf_r+0x628>
   136a0:	08b107a3          	sb	a1,143(sp)
   136a4:	010c6c13          	ori	s8,s8,16
   136a8:	979fe06f          	j	12020 <_vfprintf_r+0x5e8>
   136ac:	08b107a3          	sb	a1,143(sp)
   136b0:	010c6c13          	ori	s8,s8,16
   136b4:	929fe06f          	j	11fdc <_vfprintf_r+0x5a4>
   136b8:	08b107a3          	sb	a1,143(sp)
   136bc:	881fe06f          	j	11f3c <_vfprintf_r+0x504>

00000000000136c0 <vfprintf>:
   136c0:	00060693          	mv	a3,a2
   136c4:	00058613          	mv	a2,a1
   136c8:	00050593          	mv	a1,a0
   136cc:	8181b503          	ld	a0,-2024(gp) # 24438 <_impure_ptr>
   136d0:	b68fe06f          	j	11a38 <_vfprintf_r>

00000000000136d4 <__sbprintf>:
   136d4:	0105d783          	lhu	a5,16(a1)
   136d8:	0ac5ae03          	lw	t3,172(a1)
   136dc:	0125d303          	lhu	t1,18(a1)
   136e0:	0305b883          	ld	a7,48(a1)
   136e4:	0405b803          	ld	a6,64(a1)
   136e8:	b3010113          	addi	sp,sp,-1232
   136ec:	ffd7f793          	andi	a5,a5,-3
   136f0:	40000713          	li	a4,1024
   136f4:	4c813023          	sd	s0,1216(sp)
   136f8:	00f11823          	sh	a5,16(sp)
   136fc:	00058413          	mv	s0,a1
   13700:	0b010793          	addi	a5,sp,176
   13704:	00010593          	mv	a1,sp
   13708:	4a913c23          	sd	s1,1208(sp)
   1370c:	4b213823          	sd	s2,1200(sp)
   13710:	4c113423          	sd	ra,1224(sp)
   13714:	00050913          	mv	s2,a0
   13718:	0bc12623          	sw	t3,172(sp)
   1371c:	00611923          	sh	t1,18(sp)
   13720:	03113823          	sd	a7,48(sp)
   13724:	05013023          	sd	a6,64(sp)
   13728:	00f13023          	sd	a5,0(sp)
   1372c:	00f13c23          	sd	a5,24(sp)
   13730:	00e12623          	sw	a4,12(sp)
   13734:	02e12023          	sw	a4,32(sp)
   13738:	02012423          	sw	zero,40(sp)
   1373c:	afcfe0ef          	jal	11a38 <_vfprintf_r>
   13740:	00050493          	mv	s1,a0
   13744:	00054a63          	bltz	a0,13758 <__sbprintf+0x84>
   13748:	00010593          	mv	a1,sp
   1374c:	00090513          	mv	a0,s2
   13750:	4cd020ef          	jal	1641c <_fflush_r>
   13754:	02051c63          	bnez	a0,1378c <__sbprintf+0xb8>
   13758:	01015783          	lhu	a5,16(sp)
   1375c:	0407f793          	andi	a5,a5,64
   13760:	00078863          	beqz	a5,13770 <__sbprintf+0x9c>
   13764:	01045783          	lhu	a5,16(s0)
   13768:	0407e793          	ori	a5,a5,64
   1376c:	00f41823          	sh	a5,16(s0)
   13770:	4c813083          	ld	ra,1224(sp)
   13774:	00048513          	mv	a0,s1
   13778:	4c013403          	ld	s0,1216(sp)
   1377c:	4b813483          	ld	s1,1208(sp)
   13780:	4b013903          	ld	s2,1200(sp)
   13784:	4d010113          	addi	sp,sp,1232
   13788:	00008067          	ret
   1378c:	fff00493          	li	s1,-1
   13790:	fc9ff06f          	j	13758 <__sbprintf+0x84>

0000000000013794 <__svfscanf_r>:
   13794:	cb010113          	addi	sp,sp,-848
   13798:	31813023          	sd	s8,768(sp)
   1379c:	00058c13          	mv	s8,a1
   137a0:	01059583          	lh	a1,16(a1)
   137a4:	34813023          	sd	s0,832(sp)
   137a8:	32913c23          	sd	s1,824(sp)
   137ac:	31613823          	sd	s6,784(sp)
   137b0:	34113423          	sd	ra,840(sp)
   137b4:	33213823          	sd	s2,816(sp)
   137b8:	33313423          	sd	s3,808(sp)
   137bc:	33413023          	sd	s4,800(sp)
   137c0:	31513c23          	sd	s5,792(sp)
   137c4:	31713423          	sd	s7,776(sp)
   137c8:	2f913c23          	sd	s9,760(sp)
   137cc:	2fa13823          	sd	s10,752(sp)
   137d0:	2fb13423          	sd	s11,744(sp)
   137d4:	2c813c27          	fsd	fs0,728(sp)
   137d8:	03259793          	slli	a5,a1,0x32
   137dc:	00050493          	mv	s1,a0
   137e0:	00060413          	mv	s0,a2
   137e4:	00068b13          	mv	s6,a3
   137e8:	0207c263          	bltz	a5,1380c <__svfscanf_r+0x78>
   137ec:	0acc2603          	lw	a2,172(s8)
   137f0:	ffffe737          	lui	a4,0xffffe
   137f4:	000026b7          	lui	a3,0x2
   137f8:	fff7071b          	addiw	a4,a4,-1
   137fc:	00d5e5b3          	or	a1,a1,a3
   13800:	00e67733          	and	a4,a2,a4
   13804:	00bc1823          	sh	a1,16(s8)
   13808:	0aec2623          	sw	a4,172(s8)
   1380c:	000217b7          	lui	a5,0x21
   13810:	c2078793          	addi	a5,a5,-992 # 20c20 <zeroes.4194+0x330>
   13814:	fffff737          	lui	a4,0xfffff
   13818:	000219b7          	lui	s3,0x21
   1381c:	00f13c23          	sd	a5,24(sp)
   13820:	47f7079b          	addiw	a5,a4,1151
   13824:	02013423          	sd	zero,40(sp)
   13828:	00012823          	sw	zero,16(sp)
   1382c:	00000b93          	li	s7,0
   13830:	00012a23          	sw	zero,20(sp)
   13834:	90098993          	addi	s3,s3,-1792 # 20900 <zeroes.4194+0x10>
   13838:	04f12423          	sw	a5,72(sp)
   1383c:	00044703          	lbu	a4,0(s0)
   13840:	00140413          	addi	s0,s0,1
   13844:	06e12223          	sw	a4,100(sp)
   13848:	00070693          	mv	a3,a4
   1384c:	06070e63          	beqz	a4,138c8 <__svfscanf_r+0x134>
   13850:	8301b503          	ld	a0,-2000(gp) # 24450 <__ctype_ptr__>
   13854:	00e50733          	add	a4,a0,a4
   13858:	00174703          	lbu	a4,1(a4) # fffffffffffff001 <_end+0xfffffffffffd8209>
   1385c:	00877713          	andi	a4,a4,8
   13860:	06070863          	beqz	a4,138d0 <__svfscanf_r+0x13c>
   13864:	008c2703          	lw	a4,8(s8)
   13868:	02e05e63          	blez	a4,138a4 <__svfscanf_r+0x110>
   1386c:	000c3683          	ld	a3,0(s8)
   13870:	8301b703          	ld	a4,-2000(gp) # 24450 <__ctype_ptr__>
   13874:	0006c603          	lbu	a2,0(a3) # 2000 <_ftext-0xe000>
   13878:	00c70733          	add	a4,a4,a2
   1387c:	00174703          	lbu	a4,1(a4)
   13880:	00877713          	andi	a4,a4,8
   13884:	fa070ce3          	beqz	a4,1383c <__svfscanf_r+0xa8>
   13888:	008c2703          	lw	a4,8(s8)
   1388c:	00168693          	addi	a3,a3,1
   13890:	00dc3023          	sd	a3,0(s8)
   13894:	fff7071b          	addiw	a4,a4,-1
   13898:	00ec2423          	sw	a4,8(s8)
   1389c:	001b8b9b          	addiw	s7,s7,1
   138a0:	fce046e3          	bgtz	a4,1386c <__svfscanf_r+0xd8>
   138a4:	000c0593          	mv	a1,s8
   138a8:	00048513          	mv	a0,s1
   138ac:	315050ef          	jal	193c0 <__srefill_r>
   138b0:	fa050ee3          	beqz	a0,1386c <__svfscanf_r+0xd8>
   138b4:	00044703          	lbu	a4,0(s0)
   138b8:	00140413          	addi	s0,s0,1
   138bc:	06e12223          	sw	a4,100(sp)
   138c0:	00070693          	mv	a3,a4
   138c4:	f80716e3          	bnez	a4,13850 <__svfscanf_r+0xbc>
   138c8:	01412503          	lw	a0,20(sp)
   138cc:	06c0006f          	j	13938 <__svfscanf_r+0x1a4>
   138d0:	02500713          	li	a4,37
   138d4:	02e69663          	bne	a3,a4,13900 <__svfscanf_r+0x16c>
   138d8:	00000a93          	li	s5,0
   138dc:	00000913          	li	s2,0
   138e0:	07800613          	li	a2,120
   138e4:	00140413          	addi	s0,s0,1
   138e8:	fff44683          	lbu	a3,-1(s0)
   138ec:	1ad66a63          	bltu	a2,a3,13aa0 <__svfscanf_r+0x30c>
   138f0:	00269713          	slli	a4,a3,0x2
   138f4:	01370733          	add	a4,a4,s3
   138f8:	00072703          	lw	a4,0(a4)
   138fc:	00070067          	jr	a4
   13900:	008c2703          	lw	a4,8(s8)
   13904:	58e05a63          	blez	a4,13e98 <__svfscanf_r+0x704>
   13908:	000c3703          	ld	a4,0(s8)
   1390c:	fff44683          	lbu	a3,-1(s0)
   13910:	00074603          	lbu	a2,0(a4)
   13914:	fad61ae3          	bne	a2,a3,138c8 <__svfscanf_r+0x134>
   13918:	008c2683          	lw	a3,8(s8)
   1391c:	00170713          	addi	a4,a4,1
   13920:	00ec3023          	sd	a4,0(s8)
   13924:	fff6871b          	addiw	a4,a3,-1
   13928:	00ec2423          	sw	a4,8(s8)
   1392c:	001b8b9b          	addiw	s7,s7,1
   13930:	f0dff06f          	j	1383c <__svfscanf_r+0xa8>
   13934:	fff00513          	li	a0,-1
   13938:	34813083          	ld	ra,840(sp)
   1393c:	34013403          	ld	s0,832(sp)
   13940:	33813483          	ld	s1,824(sp)
   13944:	33013903          	ld	s2,816(sp)
   13948:	32813983          	ld	s3,808(sp)
   1394c:	32013a03          	ld	s4,800(sp)
   13950:	31813a83          	ld	s5,792(sp)
   13954:	31013b03          	ld	s6,784(sp)
   13958:	30813b83          	ld	s7,776(sp)
   1395c:	30013c03          	ld	s8,768(sp)
   13960:	2f813c83          	ld	s9,760(sp)
   13964:	2f013d03          	ld	s10,752(sp)
   13968:	2e813d83          	ld	s11,744(sp)
   1396c:	2d813407          	fld	fs0,728(sp)
   13970:	35010113          	addi	sp,sp,848
   13974:	00008067          	ret
   13978:	008c2703          	lw	a4,8(s8)
   1397c:	0001ba37          	lui	s4,0x1b
   13980:	e74a0793          	addi	a5,s4,-396 # 1ae74 <_strtoul_r>
   13984:	02f13423          	sd	a5,40(sp)
   13988:	00a00793          	li	a5,10
   1398c:	00f12823          	sw	a5,16(sp)
   13990:	00300c93          	li	s9,3
   13994:	02e05e63          	blez	a4,139d0 <__svfscanf_r+0x23c>
   13998:	000c3683          	ld	a3,0(s8)
   1399c:	00c0006f          	j	139a8 <__svfscanf_r+0x214>
   139a0:	00168693          	addi	a3,a3,1
   139a4:	00dc3023          	sd	a3,0(s8)
   139a8:	0006c603          	lbu	a2,0(a3)
   139ac:	00c50733          	add	a4,a0,a2
   139b0:	00174703          	lbu	a4,1(a4)
   139b4:	00877593          	andi	a1,a4,8
   139b8:	58058063          	beqz	a1,13f38 <__svfscanf_r+0x7a4>
   139bc:	008c2703          	lw	a4,8(s8)
   139c0:	001b8b9b          	addiw	s7,s7,1
   139c4:	fff7071b          	addiw	a4,a4,-1
   139c8:	00ec2423          	sw	a4,8(s8)
   139cc:	fce04ae3          	bgtz	a4,139a0 <__svfscanf_r+0x20c>
   139d0:	000c0593          	mv	a1,s8
   139d4:	00048513          	mv	a0,s1
   139d8:	1e9050ef          	jal	193c0 <__srefill_r>
   139dc:	04051863          	bnez	a0,13a2c <__svfscanf_r+0x298>
   139e0:	8301b503          	ld	a0,-2000(gp) # 24450 <__ctype_ptr__>
   139e4:	fb5ff06f          	j	13998 <__svfscanf_r+0x204>
   139e8:	008c2703          	lw	a4,8(s8)
   139ec:	00200c93          	li	s9,2
   139f0:	fae044e3          	bgtz	a4,13998 <__svfscanf_r+0x204>
   139f4:	fddff06f          	j	139d0 <__svfscanf_r+0x23c>
   139f8:	008c2703          	lw	a4,8(s8)
   139fc:	220aea93          	ori	s5,s5,544
   13a00:	0001ba37          	lui	s4,0x1b
   13a04:	e74a0793          	addi	a5,s4,-396 # 1ae74 <_strtoul_r>
   13a08:	02f13423          	sd	a5,40(sp)
   13a0c:	01000793          	li	a5,16
   13a10:	00f12823          	sw	a5,16(sp)
   13a14:	00300c93          	li	s9,3
   13a18:	f8e040e3          	bgtz	a4,13998 <__svfscanf_r+0x204>
   13a1c:	000c0593          	mv	a1,s8
   13a20:	00048513          	mv	a0,s1
   13a24:	19d050ef          	jal	193c0 <__srefill_r>
   13a28:	fa050ce3          	beqz	a0,139e0 <__svfscanf_r+0x24c>
   13a2c:	01412703          	lw	a4,20(sp)
   13a30:	fff00513          	li	a0,-1
   13a34:	f00702e3          	beqz	a4,13938 <__svfscanf_r+0x1a4>
   13a38:	010c5783          	lhu	a5,16(s8)
   13a3c:	0407f793          	andi	a5,a5,64
   13a40:	ee079ce3          	bnez	a5,13938 <__svfscanf_r+0x1a4>
   13a44:	00070513          	mv	a0,a4
   13a48:	ef1ff06f          	j	13938 <__svfscanf_r+0x1a4>
   13a4c:	008c2703          	lw	a4,8(s8)
   13a50:	4ce05863          	blez	a4,13f20 <__svfscanf_r+0x78c>
   13a54:	0001ba37          	lui	s4,0x1b
   13a58:	e74a0793          	addi	a5,s4,-396 # 1ae74 <_strtoul_r>
   13a5c:	02f13423          	sd	a5,40(sp)
   13a60:	00800793          	li	a5,8
   13a64:	00f12823          	sw	a5,16(sp)
   13a68:	00300c93          	li	s9,3
   13a6c:	f2dff06f          	j	13998 <__svfscanf_r+0x204>
   13a70:	010af713          	andi	a4,s5,16
   13a74:	dc0714e3          	bnez	a4,1383c <__svfscanf_r+0xa8>
   13a78:	004af713          	andi	a4,s5,4
   13a7c:	42070e63          	beqz	a4,13eb8 <__svfscanf_r+0x724>
   13a80:	000b3703          	ld	a4,0(s6)
   13a84:	008b0b13          	addi	s6,s6,8
   13a88:	01771023          	sh	s7,0(a4)
   13a8c:	db1ff06f          	j	1383c <__svfscanf_r+0xa8>
   13a90:	00140413          	addi	s0,s0,1
   13a94:	fff44683          	lbu	a3,-1(s0)
   13a98:	001aea93          	ori	s5,s5,1
   13a9c:	e4d67ae3          	bleu	a3,a2,138f0 <__svfscanf_r+0x15c>
   13aa0:	00d506b3          	add	a3,a0,a3
   13aa4:	0016c703          	lbu	a4,1(a3)
   13aa8:	00100693          	li	a3,1
   13aac:	00377713          	andi	a4,a4,3
   13ab0:	3ed70e63          	beq	a4,a3,13eac <__svfscanf_r+0x718>
   13ab4:	008c2703          	lw	a4,8(s8)
   13ab8:	1440006f          	j	13bfc <__svfscanf_r+0x468>
   13abc:	004aea93          	ori	s5,s5,4
   13ac0:	e25ff06f          	j	138e4 <__svfscanf_r+0x150>
   13ac4:	008c2703          	lw	a4,8(s8)
   13ac8:	40e05463          	blez	a4,13ed0 <__svfscanf_r+0x73c>
   13acc:	0001ba37          	lui	s4,0x1b
   13ad0:	c84a0793          	addi	a5,s4,-892 # 1ac84 <_strtol_r>
   13ad4:	02f13423          	sd	a5,40(sp)
   13ad8:	00a00793          	li	a5,10
   13adc:	00f12823          	sw	a5,16(sp)
   13ae0:	00300c93          	li	s9,3
   13ae4:	eb5ff06f          	j	13998 <__svfscanf_r+0x204>
   13ae8:	008c2703          	lw	a4,8(s8)
   13aec:	34e05663          	blez	a4,13e38 <__svfscanf_r+0x6a4>
   13af0:	00091463          	bnez	s2,13af8 <__svfscanf_r+0x364>
   13af4:	00100913          	li	s2,1
   13af8:	001af713          	andi	a4,s5,1
   13afc:	22071063          	bnez	a4,13d1c <__svfscanf_r+0x588>
   13b00:	010afa93          	andi	s5,s5,16
   13b04:	360a8063          	beqz	s5,13e64 <__svfscanf_r+0x6d0>
   13b08:	00000a93          	li	s5,0
   13b0c:	0280006f          	j	13b34 <__svfscanf_r+0x3a0>
   13b10:	000c3683          	ld	a3,0(s8)
   13b14:	000c0593          	mv	a1,s8
   13b18:	00048513          	mv	a0,s1
   13b1c:	00e686b3          	add	a3,a3,a4
   13b20:	00dc3023          	sd	a3,0(s8)
   13b24:	00ea8ab3          	add	s5,s5,a4
   13b28:	40e90933          	sub	s2,s2,a4
   13b2c:	095050ef          	jal	193c0 <__srefill_r>
   13b30:	30051e63          	bnez	a0,13e4c <__svfscanf_r+0x6b8>
   13b34:	008c2703          	lw	a4,8(s8)
   13b38:	0009069b          	sext.w	a3,s2
   13b3c:	fcd74ae3          	blt	a4,a3,13b10 <__svfscanf_r+0x37c>
   13b40:	000c3603          	ld	a2,0(s8)
   13b44:	40d7073b          	subw	a4,a4,a3
   13b48:	012a8ab3          	add	s5,s5,s2
   13b4c:	01260333          	add	t1,a2,s2
   13b50:	00ec2423          	sw	a4,8(s8)
   13b54:	006c3023          	sd	t1,0(s8)
   13b58:	017a8bbb          	addw	s7,s5,s7
   13b5c:	ce1ff06f          	j	1383c <__svfscanf_r+0xa8>
   13b60:	00040593          	mv	a1,s0
   13b64:	07010513          	addi	a0,sp,112
   13b68:	2a1050ef          	jal	19608 <__sccl>
   13b6c:	008c2703          	lw	a4,8(s8)
   13b70:	00050413          	mv	s0,a0
   13b74:	38e05063          	blez	a4,13ef4 <__svfscanf_r+0x760>
   13b78:	000c3683          	ld	a3,0(s8)
   13b7c:	0006c703          	lbu	a4,0(a3)
   13b80:	10090263          	beqz	s2,13c84 <__svfscanf_r+0x4f0>
   13b84:	010afa93          	andi	s5,s5,16
   13b88:	100a8463          	beqz	s5,13c90 <__svfscanf_r+0x4fc>
   13b8c:	00000a93          	li	s5,0
   13b90:	0080006f          	j	13b98 <__svfscanf_r+0x404>
   13b94:	0006c703          	lbu	a4,0(a3)
   13b98:	2d010793          	addi	a5,sp,720
   13b9c:	00e78733          	add	a4,a5,a4
   13ba0:	da074703          	lbu	a4,-608(a4)
   13ba4:	2a070a63          	beqz	a4,13e58 <__svfscanf_r+0x6c4>
   13ba8:	008c2703          	lw	a4,8(s8)
   13bac:	00168693          	addi	a3,a3,1
   13bb0:	00dc3023          	sd	a3,0(s8)
   13bb4:	fff7071b          	addiw	a4,a4,-1
   13bb8:	00ec2423          	sw	a4,8(s8)
   13bbc:	fff90913          	addi	s2,s2,-1
   13bc0:	001a8a9b          	addiw	s5,s5,1
   13bc4:	14090863          	beqz	s2,13d14 <__svfscanf_r+0x580>
   13bc8:	fce046e3          	bgtz	a4,13b94 <__svfscanf_r+0x400>
   13bcc:	000c0593          	mv	a1,s8
   13bd0:	00048513          	mv	a0,s1
   13bd4:	7ec050ef          	jal	193c0 <__srefill_r>
   13bd8:	12051e63          	bnez	a0,13d14 <__svfscanf_r+0x580>
   13bdc:	000c3683          	ld	a3,0(s8)
   13be0:	fb5ff06f          	j	13b94 <__svfscanf_r+0x400>
   13be4:	008c2703          	lw	a4,8(s8)
   13be8:	00400c93          	li	s9,4
   13bec:	dae046e3          	bgtz	a4,13998 <__svfscanf_r+0x204>
   13bf0:	de1ff06f          	j	139d0 <__svfscanf_r+0x23c>
   13bf4:	008c2703          	lw	a4,8(s8)
   13bf8:	001aea93          	ori	s5,s5,1
   13bfc:	0001ba37          	lui	s4,0x1b
   13c00:	c84a0793          	addi	a5,s4,-892 # 1ac84 <_strtol_r>
   13c04:	d81ff06f          	j	13984 <__svfscanf_r+0x1f0>
   13c08:	0001ba37          	lui	s4,0x1b
   13c0c:	e74a0793          	addi	a5,s4,-396 # 1ae74 <_strtoul_r>
   13c10:	008c2703          	lw	a4,8(s8)
   13c14:	02f13423          	sd	a5,40(sp)
   13c18:	00800793          	li	a5,8
   13c1c:	00f12823          	sw	a5,16(sp)
   13c20:	001aea93          	ori	s5,s5,1
   13c24:	00300c93          	li	s9,3
   13c28:	d6e048e3          	bgtz	a4,13998 <__svfscanf_r+0x204>
   13c2c:	da5ff06f          	j	139d0 <__svfscanf_r+0x23c>
   13c30:	002aea93          	ori	s5,s5,2
   13c34:	cb1ff06f          	j	138e4 <__svfscanf_r+0x150>
   13c38:	008c2703          	lw	a4,8(s8)
   13c3c:	200aea93          	ori	s5,s5,512
   13c40:	dc1ff06f          	j	13a00 <__svfscanf_r+0x26c>
   13c44:	00191713          	slli	a4,s2,0x1
   13c48:	00391313          	slli	t1,s2,0x3
   13c4c:	00670333          	add	t1,a4,t1
   13c50:	fd068693          	addi	a3,a3,-48
   13c54:	00668933          	add	s2,a3,t1
   13c58:	c8dff06f          	j	138e4 <__svfscanf_r+0x150>
   13c5c:	010aea93          	ori	s5,s5,16
   13c60:	c85ff06f          	j	138e4 <__svfscanf_r+0x150>
   13c64:	008c2703          	lw	a4,8(s8)
   13c68:	2ae05063          	blez	a4,13f08 <__svfscanf_r+0x774>
   13c6c:	0001ba37          	lui	s4,0x1b
   13c70:	c84a0793          	addi	a5,s4,-892 # 1ac84 <_strtol_r>
   13c74:	02f13423          	sd	a5,40(sp)
   13c78:	00012823          	sw	zero,16(sp)
   13c7c:	00300c93          	li	s9,3
   13c80:	d19ff06f          	j	13998 <__svfscanf_r+0x204>
   13c84:	010afa93          	andi	s5,s5,16
   13c88:	fff00913          	li	s2,-1
   13c8c:	f00a90e3          	bnez	s5,13b8c <__svfscanf_r+0x3f8>
   13c90:	000b3a83          	ld	s5,0(s6)
   13c94:	008b0b13          	addi	s6,s6,8
   13c98:	012a8d33          	add	s10,s5,s2
   13c9c:	000a8c93          	mv	s9,s5
   13ca0:	00c0006f          	j	13cac <__svfscanf_r+0x518>
   13ca4:	000c3683          	ld	a3,0(s8)
   13ca8:	0006c703          	lbu	a4,0(a3)
   13cac:	2d010793          	addi	a5,sp,720
   13cb0:	00e78733          	add	a4,a5,a4
   13cb4:	da074703          	lbu	a4,-608(a4)
   13cb8:	04070263          	beqz	a4,13cfc <__svfscanf_r+0x568>
   13cbc:	008c2703          	lw	a4,8(s8)
   13cc0:	00168613          	addi	a2,a3,1
   13cc4:	00cc3023          	sd	a2,0(s8)
   13cc8:	fff7071b          	addiw	a4,a4,-1
   13ccc:	00ec2423          	sw	a4,8(s8)
   13cd0:	0006c703          	lbu	a4,0(a3)
   13cd4:	001c8c93          	addi	s9,s9,1
   13cd8:	feec8fa3          	sb	a4,-1(s9)
   13cdc:	03ac8063          	beq	s9,s10,13cfc <__svfscanf_r+0x568>
   13ce0:	008c2703          	lw	a4,8(s8)
   13ce4:	fce040e3          	bgtz	a4,13ca4 <__svfscanf_r+0x510>
   13ce8:	000c0593          	mv	a1,s8
   13cec:	00048513          	mv	a0,s1
   13cf0:	6d0050ef          	jal	193c0 <__srefill_r>
   13cf4:	fa0508e3          	beqz	a0,13ca4 <__svfscanf_r+0x510>
   13cf8:	d39a8ae3          	beq	s5,s9,13a2c <__svfscanf_r+0x298>
   13cfc:	415c8abb          	subw	s5,s9,s5
   13d00:	bc0a84e3          	beqz	s5,138c8 <__svfscanf_r+0x134>
   13d04:	01412783          	lw	a5,20(sp)
   13d08:	000c8023          	sb	zero,0(s9)
   13d0c:	0017879b          	addiw	a5,a5,1
   13d10:	00f12a23          	sw	a5,20(sp)
   13d14:	015b8bbb          	addw	s7,s7,s5
   13d18:	b25ff06f          	j	1383c <__svfscanf_r+0xa8>
   13d1c:	010af793          	andi	a5,s5,16
   13d20:	06810c93          	addi	s9,sp,104
   13d24:	00800613          	li	a2,8
   13d28:	00000593          	li	a1,0
   13d2c:	000c8513          	mv	a0,s9
   13d30:	00078a13          	mv	s4,a5
   13d34:	00f12423          	sw	a5,8(sp)
   13d38:	00000a93          	li	s5,0
   13d3c:	7ad030ef          	jal	17ce8 <memset>
   13d40:	0e0a0663          	beqz	s4,13e2c <__svfscanf_r+0x698>
   13d44:	00000a13          	li	s4,0
   13d48:	fff00d13          	li	s10,-1
   13d4c:	029030ef          	jal	17574 <__locale_mb_cur_max>
   13d50:	cd450ee3          	beq	a0,s4,13a2c <__svfscanf_r+0x298>
   13d54:	000c3683          	ld	a3,0(s8)
   13d58:	008c2603          	lw	a2,8(s8)
   13d5c:	001a0d9b          	addiw	s11,s4,1
   13d60:	0006ce83          	lbu	t4,0(a3)
   13d64:	fff6061b          	addiw	a2,a2,-1
   13d68:	00168693          	addi	a3,a3,1
   13d6c:	2d010793          	addi	a5,sp,720
   13d70:	014788b3          	add	a7,a5,s4
   13d74:	00cc2423          	sw	a2,8(s8)
   13d78:	00dc3023          	sd	a3,0(s8)
   13d7c:	000c8713          	mv	a4,s9
   13d80:	000d8693          	mv	a3,s11
   13d84:	17010613          	addi	a2,sp,368
   13d88:	000a8593          	mv	a1,s5
   13d8c:	00048513          	mv	a0,s1
   13d90:	ebd88023          	sb	t4,-352(a7)
   13d94:	1d1030ef          	jal	17764 <_mbrtowc_r>
   13d98:	c9a50ae3          	beq	a0,s10,13a2c <__svfscanf_r+0x298>
   13d9c:	04051263          	bnez	a0,13de0 <__svfscanf_r+0x64c>
   13da0:	00812783          	lw	a5,8(sp)
   13da4:	06079463          	bnez	a5,13e0c <__svfscanf_r+0x678>
   13da8:	000aa023          	sw	zero,0(s5)
   13dac:	01bb8bbb          	addw	s7,s7,s11
   13db0:	fff90913          	addi	s2,s2,-1
   13db4:	004a8a93          	addi	s5,s5,4
   13db8:	008c2683          	lw	a3,8(s8)
   13dbc:	00000a13          	li	s4,0
   13dc0:	02d05a63          	blez	a3,13df4 <__svfscanf_r+0x660>
   13dc4:	f80914e3          	bnez	s2,13d4c <__svfscanf_r+0x5b8>
   13dc8:	00812783          	lw	a5,8(sp)
   13dcc:	0017ba93          	seqz	s5,a5
   13dd0:	01412783          	lw	a5,20(sp)
   13dd4:	015787bb          	addw	a5,a5,s5
   13dd8:	00f12a23          	sw	a5,20(sp)
   13ddc:	a61ff06f          	j	1383c <__svfscanf_r+0xa8>
   13de0:	ffe00793          	li	a5,-2
   13de4:	02f51a63          	bne	a0,a5,13e18 <__svfscanf_r+0x684>
   13de8:	008c2703          	lw	a4,8(s8)
   13dec:	000d8a13          	mv	s4,s11
   13df0:	f4e04ee3          	bgtz	a4,13d4c <__svfscanf_r+0x5b8>
   13df4:	000c0593          	mv	a1,s8
   13df8:	00048513          	mv	a0,s1
   13dfc:	5c4050ef          	jal	193c0 <__srefill_r>
   13e00:	fc0502e3          	beqz	a0,13dc4 <__svfscanf_r+0x630>
   13e04:	fc0a02e3          	beqz	s4,13dc8 <__svfscanf_r+0x634>
   13e08:	c25ff06f          	j	13a2c <__svfscanf_r+0x298>
   13e0c:	01bb8bbb          	addw	s7,s7,s11
   13e10:	fff90913          	addi	s2,s2,-1
   13e14:	fa5ff06f          	j	13db8 <__svfscanf_r+0x624>
   13e18:	00812783          	lw	a5,8(sp)
   13e1c:	01bb8bbb          	addw	s7,s7,s11
   13e20:	fff90913          	addi	s2,s2,-1
   13e24:	f80788e3          	beqz	a5,13db4 <__svfscanf_r+0x620>
   13e28:	f91ff06f          	j	13db8 <__svfscanf_r+0x624>
   13e2c:	000b3a83          	ld	s5,0(s6)
   13e30:	008b0b13          	addi	s6,s6,8
   13e34:	f11ff06f          	j	13d44 <__svfscanf_r+0x5b0>
   13e38:	000c0593          	mv	a1,s8
   13e3c:	00048513          	mv	a0,s1
   13e40:	580050ef          	jal	193c0 <__srefill_r>
   13e44:	ca0506e3          	beqz	a0,13af0 <__svfscanf_r+0x35c>
   13e48:	be5ff06f          	j	13a2c <__svfscanf_r+0x298>
   13e4c:	be0a80e3          	beqz	s5,13a2c <__svfscanf_r+0x298>
   13e50:	017a8bbb          	addw	s7,s5,s7
   13e54:	9e9ff06f          	j	1383c <__svfscanf_r+0xa8>
   13e58:	a60a88e3          	beqz	s5,138c8 <__svfscanf_r+0x134>
   13e5c:	015b8bbb          	addw	s7,s7,s5
   13e60:	9ddff06f          	j	1383c <__svfscanf_r+0xa8>
   13e64:	000b3583          	ld	a1,0(s6)
   13e68:	000c0713          	mv	a4,s8
   13e6c:	00090693          	mv	a3,s2
   13e70:	00100613          	li	a2,1
   13e74:	00048513          	mv	a0,s1
   13e78:	191020ef          	jal	16808 <_fread_r>
   13e7c:	008b0b13          	addi	s6,s6,8
   13e80:	ba0506e3          	beqz	a0,13a2c <__svfscanf_r+0x298>
   13e84:	01412783          	lw	a5,20(sp)
   13e88:	01750bbb          	addw	s7,a0,s7
   13e8c:	0017879b          	addiw	a5,a5,1
   13e90:	00f12a23          	sw	a5,20(sp)
   13e94:	9a9ff06f          	j	1383c <__svfscanf_r+0xa8>
   13e98:	000c0593          	mv	a1,s8
   13e9c:	00048513          	mv	a0,s1
   13ea0:	520050ef          	jal	193c0 <__srefill_r>
   13ea4:	a60502e3          	beqz	a0,13908 <__svfscanf_r+0x174>
   13ea8:	b85ff06f          	j	13a2c <__svfscanf_r+0x298>
   13eac:	008c2703          	lw	a4,8(s8)
   13eb0:	00daeab3          	or	s5,s5,a3
   13eb4:	d49ff06f          	j	13bfc <__svfscanf_r+0x468>
   13eb8:	001afa93          	andi	s5,s5,1
   13ebc:	000b3703          	ld	a4,0(s6)
   13ec0:	020a8463          	beqz	s5,13ee8 <__svfscanf_r+0x754>
   13ec4:	008b0b13          	addi	s6,s6,8
   13ec8:	01773023          	sd	s7,0(a4)
   13ecc:	971ff06f          	j	1383c <__svfscanf_r+0xa8>
   13ed0:	000c0593          	mv	a1,s8
   13ed4:	00048513          	mv	a0,s1
   13ed8:	4e8050ef          	jal	193c0 <__srefill_r>
   13edc:	b40518e3          	bnez	a0,13a2c <__svfscanf_r+0x298>
   13ee0:	8301b503          	ld	a0,-2000(gp) # 24450 <__ctype_ptr__>
   13ee4:	be9ff06f          	j	13acc <__svfscanf_r+0x338>
   13ee8:	008b0b13          	addi	s6,s6,8
   13eec:	01772023          	sw	s7,0(a4)
   13ef0:	94dff06f          	j	1383c <__svfscanf_r+0xa8>
   13ef4:	000c0593          	mv	a1,s8
   13ef8:	00048513          	mv	a0,s1
   13efc:	4c4050ef          	jal	193c0 <__srefill_r>
   13f00:	c6050ce3          	beqz	a0,13b78 <__svfscanf_r+0x3e4>
   13f04:	b29ff06f          	j	13a2c <__svfscanf_r+0x298>
   13f08:	000c0593          	mv	a1,s8
   13f0c:	00048513          	mv	a0,s1
   13f10:	4b0050ef          	jal	193c0 <__srefill_r>
   13f14:	b0051ce3          	bnez	a0,13a2c <__svfscanf_r+0x298>
   13f18:	8301b503          	ld	a0,-2000(gp) # 24450 <__ctype_ptr__>
   13f1c:	d51ff06f          	j	13c6c <__svfscanf_r+0x4d8>
   13f20:	000c0593          	mv	a1,s8
   13f24:	00048513          	mv	a0,s1
   13f28:	498050ef          	jal	193c0 <__srefill_r>
   13f2c:	b00510e3          	bnez	a0,13a2c <__svfscanf_r+0x298>
   13f30:	8301b503          	ld	a0,-2000(gp) # 24450 <__ctype_ptr__>
   13f34:	b21ff06f          	j	13a54 <__svfscanf_r+0x2c0>
   13f38:	00300593          	li	a1,3
   13f3c:	3ebc8e63          	beq	s9,a1,14338 <__svfscanf_r+0xba4>
   13f40:	00400613          	li	a2,4
   13f44:	38cc9063          	bne	s9,a2,142c4 <__svfscanf_r+0xb30>
   13f48:	00048513          	mv	a0,s1
   13f4c:	644030ef          	jal	17590 <_localeconv_r>
   13f50:	00053783          	ld	a5,0(a0)
   13f54:	fff90713          	addi	a4,s2,-1
   13f58:	04012623          	sw	zero,76(sp)
   13f5c:	04f13023          	sd	a5,64(sp)
   13f60:	15c00693          	li	a3,348
   13f64:	00e6f863          	bleu	a4,a3,13f74 <__svfscanf_r+0x7e0>
   13f68:	ea39079b          	addiw	a5,s2,-349
   13f6c:	04f12623          	sw	a5,76(sp)
   13f70:	15d00913          	li	s2,349
   13f74:	17010793          	addi	a5,sp,368
   13f78:	00021637          	lui	a2,0x21
   13f7c:	780aea13          	ori	s4,s5,1920
   13f80:	02f13823          	sd	a5,48(sp)
   13f84:	00000c93          	li	s9,0
   13f88:	00000d13          	li	s10,0
   13f8c:	04013c23          	sd	zero,88(sp)
   13f90:	04013823          	sd	zero,80(sp)
   13f94:	00000a93          	li	s5,0
   13f98:	02013c23          	sd	zero,56(sp)
   13f9c:	00078d93          	mv	s11,a5
   13fa0:	04e00e93          	li	t4,78
   13fa4:	ae460613          	addi	a2,a2,-1308 # 20ae4 <zeroes.4194+0x1f4>
   13fa8:	000c3583          	ld	a1,0(s8)
   13fac:	0005c503          	lbu	a0,0(a1)
   13fb0:	fd55071b          	addiw	a4,a0,-43
   13fb4:	0ff77f93          	andi	t6,a4,255
   13fb8:	2dfee463          	bltu	t4,t6,14280 <__svfscanf_r+0xaec>
   13fbc:	0ff77713          	andi	a4,a4,255
   13fc0:	00271713          	slli	a4,a4,0x2
   13fc4:	00c70733          	add	a4,a4,a2
   13fc8:	00072703          	lw	a4,0(a4)
   13fcc:	00070067          	jr	a4
   13fd0:	019d073b          	addw	a4,s10,s9
   13fd4:	02071a63          	bnez	a4,14008 <__svfscanf_r+0x874>
   13fd8:	e7fa7a13          	andi	s4,s4,-385
   13fdc:	00ad8023          	sb	a0,0(s11)
   13fe0:	001d8d93          	addi	s11,s11,1
   13fe4:	008c2703          	lw	a4,8(s8)
   13fe8:	fff90913          	addi	s2,s2,-1
   13fec:	001b8b9b          	addiw	s7,s7,1
   13ff0:	fff7071b          	addiw	a4,a4,-1
   13ff4:	00ec2423          	sw	a4,8(s8)
   13ff8:	04e05c63          	blez	a4,14050 <__svfscanf_r+0x8bc>
   13ffc:	00158593          	addi	a1,a1,1
   14000:	00bc3023          	sd	a1,0(s8)
   14004:	fa0912e3          	bnez	s2,13fa8 <__svfscanf_r+0x814>
   14008:	0e0a8263          	beqz	s5,140ec <__svfscanf_r+0x958>
   1400c:	effa7a13          	andi	s4,s4,-257
   14010:	0dc0006f          	j	140ec <__svfscanf_r+0x958>
   14014:	100a7713          	andi	a4,s4,256
   14018:	fa070ce3          	beqz	a4,13fd0 <__svfscanf_r+0x83c>
   1401c:	04c12783          	lw	a5,76(sp)
   14020:	f7fa7a13          	andi	s4,s4,-129
   14024:	001a8a93          	addi	s5,s5,1
   14028:	fa078ee3          	beqz	a5,13fe4 <__svfscanf_r+0x850>
   1402c:	008c2703          	lw	a4,8(s8)
   14030:	fff7879b          	addiw	a5,a5,-1
   14034:	00190913          	addi	s2,s2,1
   14038:	fff7071b          	addiw	a4,a4,-1
   1403c:	04f12623          	sw	a5,76(sp)
   14040:	00ec2423          	sw	a4,8(s8)
   14044:	fff90913          	addi	s2,s2,-1
   14048:	001b8b9b          	addiw	s7,s7,1
   1404c:	fae048e3          	bgtz	a4,13ffc <__svfscanf_r+0x868>
   14050:	000c0593          	mv	a1,s8
   14054:	00048513          	mv	a0,s1
   14058:	02c13023          	sd	a2,32(sp)
   1405c:	01d13423          	sd	t4,8(sp)
   14060:	360050ef          	jal	193c0 <__srefill_r>
   14064:	00813e83          	ld	t4,8(sp)
   14068:	02013603          	ld	a2,32(sp)
   1406c:	f8051ee3          	bnez	a0,14008 <__svfscanf_r+0x874>
   14070:	f2091ce3          	bnez	s2,13fa8 <__svfscanf_r+0x814>
   14074:	f95ff06f          	j	14008 <__svfscanf_r+0x874>
   14078:	00700793          	li	a5,7
   1407c:	f8fc96e3          	bne	s9,a5,14008 <__svfscanf_r+0x874>
   14080:	00800c93          	li	s9,8
   14084:	f59ff06f          	j	13fdc <__svfscanf_r+0x848>
   14088:	080a7713          	andi	a4,s4,128
   1408c:	f6070ee3          	beqz	a4,14008 <__svfscanf_r+0x874>
   14090:	f7fa7a13          	andi	s4,s4,-129
   14094:	f49ff06f          	j	13fdc <__svfscanf_r+0x848>
   14098:	00600793          	li	a5,6
   1409c:	f6fc96e3          	bne	s9,a5,14008 <__svfscanf_r+0x874>
   140a0:	00700c93          	li	s9,7
   140a4:	f39ff06f          	j	13fdc <__svfscanf_r+0x848>
   140a8:	1e0d1c63          	bnez	s10,142a0 <__svfscanf_r+0xb0c>
   140ac:	000a9863          	bnez	s5,140bc <__svfscanf_r+0x928>
   140b0:	700a7713          	andi	a4,s4,1792
   140b4:	70000793          	li	a5,1792
   140b8:	56f70863          	beq	a4,a5,14628 <__svfscanf_r+0xe94>
   140bc:	00100713          	li	a4,1
   140c0:	00ec8663          	beq	s9,a4,140cc <__svfscanf_r+0x938>
   140c4:	00400713          	li	a4,4
   140c8:	f4ec90e3          	bne	s9,a4,14008 <__svfscanf_r+0x874>
   140cc:	001c8e1b          	addiw	t3,s9,1
   140d0:	0ffe7c93          	andi	s9,t3,255
   140d4:	f09ff06f          	j	13fdc <__svfscanf_r+0x848>
   140d8:	1c0c9c63          	bnez	s9,142b0 <__svfscanf_r+0xb1c>
   140dc:	f20a98e3          	bnez	s5,1400c <__svfscanf_r+0x878>
   140e0:	700a7713          	andi	a4,s4,1792
   140e4:	70000793          	li	a5,1792
   140e8:	54f70663          	beq	a4,a5,14634 <__svfscanf_r+0xea0>
   140ec:	fffd0f1b          	addiw	t5,s10,-1
   140f0:	00100713          	li	a4,1
   140f4:	6fe77c63          	bleu	t5,a4,147ec <__svfscanf_r+0x1058>
   140f8:	fffc871b          	addiw	a4,s9,-1
   140fc:	00600613          	li	a2,6
   14100:	06e66063          	bltu	a2,a4,14160 <__svfscanf_r+0x9cc>
   14104:	00200793          	li	a5,2
   14108:	7397fa63          	bleu	s9,a5,1483c <__svfscanf_r+0x10a8>
   1410c:	00300613          	li	a2,3
   14110:	0ff77713          	andi	a4,a4,255
   14114:	000d8d13          	mv	s10,s11
   14118:	00078913          	mv	s2,a5
   1411c:	04cc8263          	beq	s9,a2,14160 <__svfscanf_r+0x9cc>
   14120:	fffd0d13          	addi	s10,s10,-1
   14124:	000d4583          	lbu	a1,0(s10)
   14128:	000c0613          	mv	a2,s8
   1412c:	00048513          	mv	a0,s1
   14130:	00e13423          	sd	a4,8(sp)
   14134:	42d080ef          	jal	1cd60 <_ungetc_r>
   14138:	00813703          	ld	a4,8(sp)
   1413c:	fff7071b          	addiw	a4,a4,-1
   14140:	0ff77713          	andi	a4,a4,255
   14144:	fd271ee3          	bne	a4,s2,14120 <__svfscanf_r+0x98c>
   14148:	ffcc871b          	addiw	a4,s9,-4
   1414c:	0ff77713          	andi	a4,a4,255
   14150:	fff74613          	not	a2,a4
   14154:	fffb881b          	addiw	a6,s7,-1
   14158:	00cd8db3          	add	s11,s11,a2
   1415c:	40e80bbb          	subw	s7,a6,a4
   14160:	100a7713          	andi	a4,s4,256
   14164:	04070e63          	beqz	a4,141c0 <__svfscanf_r+0xa2c>
   14168:	400a7713          	andi	a4,s4,1024
   1416c:	6a071463          	bnez	a4,14814 <__svfscanf_r+0x1080>
   14170:	fffdc583          	lbu	a1,-1(s11)
   14174:	06500613          	li	a2,101
   14178:	fffd8d13          	addi	s10,s11,-1
   1417c:	fffb871b          	addiw	a4,s7,-1
   14180:	02c58263          	beq	a1,a2,141a4 <__svfscanf_r+0xa10>
   14184:	04500613          	li	a2,69
   14188:	00c58e63          	beq	a1,a2,141a4 <__svfscanf_r+0xa10>
   1418c:	000c0613          	mv	a2,s8
   14190:	00048513          	mv	a0,s1
   14194:	3cd080ef          	jal	1cd60 <_ungetc_r>
   14198:	ffedc583          	lbu	a1,-2(s11)
   1419c:	ffed8d13          	addi	s10,s11,-2
   141a0:	ffeb871b          	addiw	a4,s7,-2
   141a4:	000c0613          	mv	a2,s8
   141a8:	00048513          	mv	a0,s1
   141ac:	00e13423          	sd	a4,8(sp)
   141b0:	3b1080ef          	jal	1cd60 <_ungetc_r>
   141b4:	00813703          	ld	a4,8(sp)
   141b8:	000d0d93          	mv	s11,s10
   141bc:	00070b93          	mv	s7,a4
   141c0:	010a7713          	andi	a4,s4,16
   141c4:	e6071c63          	bnez	a4,1383c <__svfscanf_r+0xa8>
   141c8:	000d8023          	sb	zero,0(s11)
   141cc:	600a7713          	andi	a4,s4,1536
   141d0:	40000613          	li	a2,1024
   141d4:	48c70e63          	beq	a4,a2,14670 <__svfscanf_r+0xedc>
   141d8:	05013783          	ld	a5,80(sp)
   141dc:	4c079263          	bnez	a5,146a0 <__svfscanf_r+0xf0c>
   141e0:	03013583          	ld	a1,48(sp)
   141e4:	00000613          	li	a2,0
   141e8:	00048513          	mv	a0,s1
   141ec:	794050ef          	jal	19980 <_strtod_r>
   141f0:	001a7713          	andi	a4,s4,1
   141f4:	22a50453          	fmv.d	fs0,fa0
   141f8:	00071663          	bnez	a4,14204 <__svfscanf_r+0xa70>
   141fc:	002a7893          	andi	a7,s4,2
   14200:	4c088e63          	beqz	a7,146dc <__svfscanf_r+0xf48>
   14204:	000b3703          	ld	a4,0(s6)
   14208:	008b0b13          	addi	s6,s6,8
   1420c:	00873027          	fsd	fs0,0(a4)
   14210:	01412783          	lw	a5,20(sp)
   14214:	0017879b          	addiw	a5,a5,1
   14218:	00f12a23          	sw	a5,20(sp)
   1421c:	e20ff06f          	j	1383c <__svfscanf_r+0xa8>
   14220:	00200793          	li	a5,2
   14224:	defc92e3          	bne	s9,a5,14008 <__svfscanf_r+0x874>
   14228:	00300c93          	li	s9,3
   1422c:	db1ff06f          	j	13fdc <__svfscanf_r+0x848>
   14230:	500a7713          	andi	a4,s4,1280
   14234:	40000793          	li	a5,1024
   14238:	00f70863          	beq	a4,a5,14248 <__svfscanf_r+0xab4>
   1423c:	00fa7733          	and	a4,s4,a5
   14240:	dc0704e3          	beqz	a4,14008 <__svfscanf_r+0x874>
   14244:	ea0a84e3          	beqz	s5,140ec <__svfscanf_r+0x958>
   14248:	200a7713          	andi	a4,s4,512
   1424c:	00071a63          	bnez	a4,14260 <__svfscanf_r+0xacc>
   14250:	03813783          	ld	a5,56(sp)
   14254:	05b13c23          	sd	s11,88(sp)
   14258:	40fa87b3          	sub	a5,s5,a5
   1425c:	04f13823          	sd	a5,80(sp)
   14260:	87fa7a93          	andi	s5,s4,-1921
   14264:	180aea13          	ori	s4,s5,384
   14268:	00000a93          	li	s5,0
   1426c:	d71ff06f          	j	13fdc <__svfscanf_r+0x848>
   14270:	00100713          	li	a4,1
   14274:	d8ed1ae3          	bne	s10,a4,14008 <__svfscanf_r+0x874>
   14278:	00200d13          	li	s10,2
   1427c:	d61ff06f          	j	13fdc <__svfscanf_r+0x848>
   14280:	04013783          	ld	a5,64(sp)
   14284:	0007c703          	lbu	a4,0(a5)
   14288:	d8a710e3          	bne	a4,a0,14008 <__svfscanf_r+0x874>
   1428c:	200a7713          	andi	a4,s4,512
   14290:	d6070ce3          	beqz	a4,14008 <__svfscanf_r+0x874>
   14294:	d7fa7a13          	andi	s4,s4,-641
   14298:	03513c23          	sd	s5,56(sp)
   1429c:	d41ff06f          	j	13fdc <__svfscanf_r+0x848>
   142a0:	00200793          	li	a5,2
   142a4:	e0fd1ce3          	bne	s10,a5,140bc <__svfscanf_r+0x928>
   142a8:	00300d13          	li	s10,3
   142ac:	d31ff06f          	j	13fdc <__svfscanf_r+0x848>
   142b0:	ffdc871b          	addiw	a4,s9,-3
   142b4:	0fd77713          	andi	a4,a4,253
   142b8:	e0070ae3          	beqz	a4,140cc <__svfscanf_r+0x938>
   142bc:	e20a88e3          	beqz	s5,140ec <__svfscanf_r+0x958>
   142c0:	d4dff06f          	j	1400c <__svfscanf_r+0x878>
   142c4:	00091463          	bnez	s2,142cc <__svfscanf_r+0xb38>
   142c8:	fff00913          	li	s2,-1
   142cc:	001af613          	andi	a2,s5,1
   142d0:	2c061863          	bnez	a2,145a0 <__svfscanf_r+0xe0c>
   142d4:	010afa93          	andi	s5,s5,16
   142d8:	1e0a8e63          	beqz	s5,144d4 <__svfscanf_r+0xd40>
   142dc:	00000a93          	li	s5,0
   142e0:	0100006f          	j	142f0 <__svfscanf_r+0xb5c>
   142e4:	0006c703          	lbu	a4,0(a3)
   142e8:	00e50733          	add	a4,a0,a4
   142ec:	00174703          	lbu	a4,1(a4)
   142f0:	00877713          	andi	a4,a4,8
   142f4:	a20710e3          	bnez	a4,13d14 <__svfscanf_r+0x580>
   142f8:	008c2703          	lw	a4,8(s8)
   142fc:	00168693          	addi	a3,a3,1
   14300:	00dc3023          	sd	a3,0(s8)
   14304:	fff7071b          	addiw	a4,a4,-1
   14308:	00ec2423          	sw	a4,8(s8)
   1430c:	fff90913          	addi	s2,s2,-1
   14310:	001a8a9b          	addiw	s5,s5,1
   14314:	a00900e3          	beqz	s2,13d14 <__svfscanf_r+0x580>
   14318:	fce046e3          	bgtz	a4,142e4 <__svfscanf_r+0xb50>
   1431c:	000c0593          	mv	a1,s8
   14320:	00048513          	mv	a0,s1
   14324:	09c050ef          	jal	193c0 <__srefill_r>
   14328:	9e0516e3          	bnez	a0,13d14 <__svfscanf_r+0x580>
   1432c:	8301b503          	ld	a0,-2000(gp) # 24450 <__ctype_ptr__>
   14330:	000c3683          	ld	a3,0(s8)
   14334:	fb1ff06f          	j	142e4 <__svfscanf_r+0xb50>
   14338:	fff90713          	addi	a4,s2,-1
   1433c:	15c00593          	li	a1,348
   14340:	00000e13          	li	t3,0
   14344:	00e5f663          	bleu	a4,a1,14350 <__svfscanf_r+0xbbc>
   14348:	ea390e1b          	addiw	t3,s2,-349
   1434c:	15d00913          	li	s2,349
   14350:	17010793          	addi	a5,sp,368
   14354:	00001737          	lui	a4,0x1
   14358:	02f13823          	sd	a5,48(sp)
   1435c:	d807071b          	addiw	a4,a4,-640
   14360:	00078d13          	mv	s10,a5
   14364:	00021db7          	lui	s11,0x21
   14368:	000017b7          	lui	a5,0x1
   1436c:	00eaeab3          	or	s5,s5,a4
   14370:	00000a13          	li	s4,0
   14374:	d58d8d93          	addi	s11,s11,-680 # 20d58 <basefix.4147>
   14378:	80078c9b          	addiw	s9,a5,-2048
   1437c:	fd56071b          	addiw	a4,a2,-43
   14380:	0ff77513          	andi	a0,a4,255
   14384:	04d00593          	li	a1,77
   14388:	0aa5e063          	bltu	a1,a0,14428 <__svfscanf_r+0xc94>
   1438c:	01813783          	ld	a5,24(sp)
   14390:	0ff77713          	andi	a4,a4,255
   14394:	00271713          	slli	a4,a4,0x2
   14398:	00f70733          	add	a4,a4,a5
   1439c:	00072703          	lw	a4,0(a4) # 1000 <_ftext-0xf000>
   143a0:	00070067          	jr	a4
   143a4:	600af713          	andi	a4,s5,1536
   143a8:	20000593          	li	a1,512
   143ac:	06b71e63          	bne	a4,a1,14428 <__svfscanf_r+0xc94>
   143b0:	dffafa93          	andi	s5,s5,-513
   143b4:	01000793          	li	a5,16
   143b8:	500aea93          	ori	s5,s5,1280
   143bc:	00f12823          	sw	a5,16(sp)
   143c0:	00cd0023          	sb	a2,0(s10)
   143c4:	001d0d13          	addi	s10,s10,1
   143c8:	008c2703          	lw	a4,8(s8)
   143cc:	fff7071b          	addiw	a4,a4,-1
   143d0:	00ec2423          	sw	a4,8(s8)
   143d4:	0ee05263          	blez	a4,144b8 <__svfscanf_r+0xd24>
   143d8:	00168693          	addi	a3,a3,1
   143dc:	00dc3023          	sd	a3,0(s8)
   143e0:	fff90913          	addi	s2,s2,-1
   143e4:	04090263          	beqz	s2,14428 <__svfscanf_r+0xc94>
   143e8:	000c3683          	ld	a3,0(s8)
   143ec:	0006c603          	lbu	a2,0(a3)
   143f0:	f8dff06f          	j	1437c <__svfscanf_r+0xbe8>
   143f4:	01012783          	lw	a5,16(sp)
   143f8:	00a00713          	li	a4,10
   143fc:	02f75663          	ble	a5,a4,14428 <__svfscanf_r+0xc94>
   14400:	04812783          	lw	a5,72(sp)
   14404:	00fafab3          	and	s5,s5,a5
   14408:	fb9ff06f          	j	143c0 <__svfscanf_r+0xc2c>
   1440c:	01012703          	lw	a4,16(sp)
   14410:	00171713          	slli	a4,a4,0x1
   14414:	00ed8733          	add	a4,s11,a4
   14418:	00071783          	lh	a5,0(a4)
   1441c:	00800713          	li	a4,8
   14420:	00f12823          	sw	a5,16(sp)
   14424:	fcf74ee3          	blt	a4,a5,14400 <__svfscanf_r+0xc6c>
   14428:	100af713          	andi	a4,s5,256
   1442c:	00070a63          	beqz	a4,14440 <__svfscanf_r+0xcac>
   14430:	03013783          	ld	a5,48(sp)
   14434:	21a7e663          	bltu	a5,s10,14640 <__svfscanf_r+0xeac>
   14438:	03013783          	ld	a5,48(sp)
   1443c:	c8fd0663          	beq	s10,a5,138c8 <__svfscanf_r+0x134>
   14440:	010af713          	andi	a4,s5,16
   14444:	10070e63          	beqz	a4,14560 <__svfscanf_r+0xdcc>
   14448:	03013783          	ld	a5,48(sp)
   1444c:	017a083b          	addw	a6,s4,s7
   14450:	40fd0cb3          	sub	s9,s10,a5
   14454:	010c8bbb          	addw	s7,s9,a6
   14458:	be4ff06f          	j	1383c <__svfscanf_r+0xa8>
   1445c:	01012703          	lw	a4,16(sp)
   14460:	00171713          	slli	a4,a4,0x1
   14464:	00ed8733          	add	a4,s11,a4
   14468:	00071783          	lh	a5,0(a4)
   1446c:	00f12823          	sw	a5,16(sp)
   14470:	04812783          	lw	a5,72(sp)
   14474:	00fafab3          	and	s5,s5,a5
   14478:	f49ff06f          	j	143c0 <__svfscanf_r+0xc2c>
   1447c:	019af733          	and	a4,s5,s9
   14480:	f40700e3          	beqz	a4,143c0 <__svfscanf_r+0xc2c>
   14484:	01012783          	lw	a5,16(sp)
   14488:	00079863          	bnez	a5,14498 <__svfscanf_r+0xd04>
   1448c:	00800793          	li	a5,8
   14490:	200aea93          	ori	s5,s5,512
   14494:	00f12823          	sw	a5,16(sp)
   14498:	400af713          	andi	a4,s5,1024
   1449c:	16070a63          	beqz	a4,14610 <__svfscanf_r+0xe7c>
   144a0:	a7fafa93          	andi	s5,s5,-1409
   144a4:	f1dff06f          	j	143c0 <__svfscanf_r+0xc2c>
   144a8:	080af713          	andi	a4,s5,128
   144ac:	f6070ee3          	beqz	a4,14428 <__svfscanf_r+0xc94>
   144b0:	f7fafa93          	andi	s5,s5,-129
   144b4:	f0dff06f          	j	143c0 <__svfscanf_r+0xc2c>
   144b8:	000c0593          	mv	a1,s8
   144bc:	00048513          	mv	a0,s1
   144c0:	01c13423          	sd	t3,8(sp)
   144c4:	6fd040ef          	jal	193c0 <__srefill_r>
   144c8:	00813e03          	ld	t3,8(sp)
   144cc:	f0050ae3          	beqz	a0,143e0 <__svfscanf_r+0xc4c>
   144d0:	f59ff06f          	j	14428 <__svfscanf_r+0xc94>
   144d4:	000b3c83          	ld	s9,0(s6)
   144d8:	008b0b13          	addi	s6,s6,8
   144dc:	012c8d33          	add	s10,s9,s2
   144e0:	000c8a93          	mv	s5,s9
   144e4:	0180006f          	j	144fc <__svfscanf_r+0xd68>
   144e8:	000c3683          	ld	a3,0(s8)
   144ec:	8301b703          	ld	a4,-2000(gp) # 24450 <__ctype_ptr__>
   144f0:	0006c603          	lbu	a2,0(a3)
   144f4:	00c70733          	add	a4,a4,a2
   144f8:	00174703          	lbu	a4,1(a4)
   144fc:	00877713          	andi	a4,a4,8
   14500:	04071063          	bnez	a4,14540 <__svfscanf_r+0xdac>
   14504:	008c2703          	lw	a4,8(s8)
   14508:	00168613          	addi	a2,a3,1
   1450c:	00cc3023          	sd	a2,0(s8)
   14510:	fff7071b          	addiw	a4,a4,-1
   14514:	00ec2423          	sw	a4,8(s8)
   14518:	0006c703          	lbu	a4,0(a3)
   1451c:	001a8a93          	addi	s5,s5,1
   14520:	feea8fa3          	sb	a4,-1(s5)
   14524:	035d0063          	beq	s10,s5,14544 <__svfscanf_r+0xdb0>
   14528:	008c2703          	lw	a4,8(s8)
   1452c:	fae04ee3          	bgtz	a4,144e8 <__svfscanf_r+0xd54>
   14530:	000c0593          	mv	a1,s8
   14534:	00048513          	mv	a0,s1
   14538:	689040ef          	jal	193c0 <__srefill_r>
   1453c:	fa0506e3          	beqz	a0,144e8 <__svfscanf_r+0xd54>
   14540:	000a8d13          	mv	s10,s5
   14544:	01412783          	lw	a5,20(sp)
   14548:	419d0cb3          	sub	s9,s10,s9
   1454c:	000d0023          	sb	zero,0(s10)
   14550:	0017879b          	addiw	a5,a5,1
   14554:	017c8bbb          	addw	s7,s9,s7
   14558:	00f12a23          	sw	a5,20(sp)
   1455c:	ae0ff06f          	j	1383c <__svfscanf_r+0xa8>
   14560:	01012683          	lw	a3,16(sp)
   14564:	03013583          	ld	a1,48(sp)
   14568:	02813783          	ld	a5,40(sp)
   1456c:	00000613          	li	a2,0
   14570:	00048513          	mv	a0,s1
   14574:	000d0023          	sb	zero,0(s10)
   14578:	000780e7          	jalr	a5
   1457c:	020af713          	andi	a4,s5,32
   14580:	0c070c63          	beqz	a4,14658 <__svfscanf_r+0xec4>
   14584:	000b3703          	ld	a4,0(s6)
   14588:	008b0b13          	addi	s6,s6,8
   1458c:	00a73023          	sd	a0,0(a4)
   14590:	01412783          	lw	a5,20(sp)
   14594:	0017879b          	addiw	a5,a5,1
   14598:	00f12a23          	sw	a5,20(sp)
   1459c:	eadff06f          	j	14448 <__svfscanf_r+0xcb4>
   145a0:	010af793          	andi	a5,s5,16
   145a4:	06810c93          	addi	s9,sp,104
   145a8:	00800613          	li	a2,8
   145ac:	00000593          	li	a1,0
   145b0:	000c8513          	mv	a0,s9
   145b4:	00078a13          	mv	s4,a5
   145b8:	00f12423          	sw	a5,8(sp)
   145bc:	06410a93          	addi	s5,sp,100
   145c0:	728030ef          	jal	17ce8 <memset>
   145c4:	000a1663          	bnez	s4,145d0 <__svfscanf_r+0xe3c>
   145c8:	000b3a83          	ld	s5,0(s6)
   145cc:	008b0b13          	addi	s6,s6,8
   145d0:	00000a13          	li	s4,0
   145d4:	000c3603          	ld	a2,0(s8)
   145d8:	8301b683          	ld	a3,-2000(gp) # 24450 <__ctype_ptr__>
   145dc:	00064603          	lbu	a2,0(a2)
   145e0:	00c686b3          	add	a3,a3,a2
   145e4:	0016c683          	lbu	a3,1(a3)
   145e8:	0086f693          	andi	a3,a3,8
   145ec:	00069463          	bnez	a3,145f4 <__svfscanf_r+0xe60>
   145f0:	10091663          	bnez	s2,146fc <__svfscanf_r+0xf68>
   145f4:	00812783          	lw	a5,8(sp)
   145f8:	a4079263          	bnez	a5,1383c <__svfscanf_r+0xa8>
   145fc:	01412783          	lw	a5,20(sp)
   14600:	000aa023          	sw	zero,0(s5)
   14604:	0017879b          	addiw	a5,a5,1
   14608:	00f12a23          	sw	a5,20(sp)
   1460c:	a30ff06f          	j	1383c <__svfscanf_r+0xa8>
   14610:	c7fafa93          	andi	s5,s5,-897
   14614:	000e0663          	beqz	t3,14620 <__svfscanf_r+0xe8c>
   14618:	fffe0e1b          	addiw	t3,t3,-1
   1461c:	00190913          	addi	s2,s2,1
   14620:	001a0a1b          	addiw	s4,s4,1
   14624:	da5ff06f          	j	143c8 <__svfscanf_r+0xc34>
   14628:	87fa7a13          	andi	s4,s4,-1921
   1462c:	00100d13          	li	s10,1
   14630:	9adff06f          	j	13fdc <__svfscanf_r+0x848>
   14634:	87fa7a13          	andi	s4,s4,-1921
   14638:	00100c93          	li	s9,1
   1463c:	9a1ff06f          	j	13fdc <__svfscanf_r+0x848>
   14640:	fffd4583          	lbu	a1,-1(s10)
   14644:	000c0613          	mv	a2,s8
   14648:	00048513          	mv	a0,s1
   1464c:	fffd0d13          	addi	s10,s10,-1
   14650:	710080ef          	jal	1cd60 <_ungetc_r>
   14654:	de5ff06f          	j	14438 <__svfscanf_r+0xca4>
   14658:	004af713          	andi	a4,s5,4
   1465c:	06070463          	beqz	a4,146c4 <__svfscanf_r+0xf30>
   14660:	000b3703          	ld	a4,0(s6)
   14664:	008b0b13          	addi	s6,s6,8
   14668:	00a71023          	sh	a0,0(a4)
   1466c:	f25ff06f          	j	14590 <__svfscanf_r+0xdfc>
   14670:	03813783          	ld	a5,56(sp)
   14674:	40fa8ab3          	sub	s5,s5,a5
   14678:	41500633          	neg	a2,s5
   1467c:	b60a82e3          	beqz	s5,141e0 <__svfscanf_r+0xa4c>
   14680:	2b910713          	addi	a4,sp,697
   14684:	00ede463          	bltu	s11,a4,1468c <__svfscanf_r+0xef8>
   14688:	2b810d93          	addi	s11,sp,696
   1468c:	000225b7          	lui	a1,0x22
   14690:	d3858593          	addi	a1,a1,-712 # 21d38 <zeroes.4123+0x6d0>
   14694:	000d8513          	mv	a0,s11
   14698:	11c050ef          	jal	197b4 <sprintf>
   1469c:	b45ff06f          	j	141e0 <__svfscanf_r+0xa4c>
   146a0:	05813d83          	ld	s11,88(sp)
   146a4:	00000613          	li	a2,0
   146a8:	00a00693          	li	a3,10
   146ac:	001d8593          	addi	a1,s11,1
   146b0:	00048513          	mv	a0,s1
   146b4:	5d0060ef          	jal	1ac84 <_strtol_r>
   146b8:	05013783          	ld	a5,80(sp)
   146bc:	40f50633          	sub	a2,a0,a5
   146c0:	fc1ff06f          	j	14680 <__svfscanf_r+0xeec>
   146c4:	001afa93          	andi	s5,s5,1
   146c8:	000b3703          	ld	a4,0(s6)
   146cc:	008b0b13          	addi	s6,s6,8
   146d0:	0c0a8063          	beqz	s5,14790 <__svfscanf_r+0xffc>
   146d4:	00a73023          	sd	a0,0(a4)
   146d8:	eb9ff06f          	j	14590 <__svfscanf_r+0xdfc>
   146dc:	008b0a93          	addi	s5,s6,8
   146e0:	000b3c83          	ld	s9,0(s6)
   146e4:	7e9040ef          	jal	196cc <__fpclassifyd>
   146e8:	18050063          	beqz	a0,14868 <__svfscanf_r+0x10d4>
   146ec:	40147453          	fcvt.s.d	fs0,fs0
   146f0:	000a8b13          	mv	s6,s5
   146f4:	008ca027          	fsw	fs0,0(s9)
   146f8:	b19ff06f          	j	14210 <__svfscanf_r+0xa7c>
   146fc:	679020ef          	jal	17574 <__locale_mb_cur_max>
   14700:	b2aa0663          	beq	s4,a0,13a2c <__svfscanf_r+0x298>
   14704:	000c3683          	ld	a3,0(s8)
   14708:	008c2603          	lw	a2,8(s8)
   1470c:	2d010793          	addi	a5,sp,720
   14710:	0006cf03          	lbu	t5,0(a3)
   14714:	fff6061b          	addiw	a2,a2,-1
   14718:	00168693          	addi	a3,a3,1
   1471c:	001a0d1b          	addiw	s10,s4,1
   14720:	01478eb3          	add	t4,a5,s4
   14724:	00cc2423          	sw	a2,8(s8)
   14728:	00dc3023          	sd	a3,0(s8)
   1472c:	000c8713          	mv	a4,s9
   14730:	000d0693          	mv	a3,s10
   14734:	17010613          	addi	a2,sp,368
   14738:	000a8593          	mv	a1,s5
   1473c:	00048513          	mv	a0,s1
   14740:	ebee8023          	sb	t5,-352(t4)
   14744:	020030ef          	jal	17764 <_mbrtowc_r>
   14748:	fff00793          	li	a5,-1
   1474c:	aef50063          	beq	a0,a5,13a2c <__svfscanf_r+0x298>
   14750:	04051463          	bnez	a0,14798 <__svfscanf_r+0x1004>
   14754:	000aa023          	sw	zero,0(s5)
   14758:	00000513          	li	a0,0
   1475c:	565020ef          	jal	174c0 <iswspace>
   14760:	06050263          	beqz	a0,147c4 <__svfscanf_r+0x1030>
   14764:	e80d08e3          	beqz	s10,145f4 <__svfscanf_r+0xe60>
   14768:	fffd0d1b          	addiw	s10,s10,-1
   1476c:	000d0713          	mv	a4,s10
   14770:	2d010793          	addi	a5,sp,720
   14774:	00e78733          	add	a4,a5,a4
   14778:	ea074583          	lbu	a1,-352(a4)
   1477c:	000c0613          	mv	a2,s8
   14780:	00048513          	mv	a0,s1
   14784:	5dc080ef          	jal	1cd60 <_ungetc_r>
   14788:	fe0d10e3          	bnez	s10,14768 <__svfscanf_r+0xfd4>
   1478c:	e69ff06f          	j	145f4 <__svfscanf_r+0xe60>
   14790:	00a72023          	sw	a0,0(a4)
   14794:	dfdff06f          	j	14590 <__svfscanf_r+0xdfc>
   14798:	ffe00793          	li	a5,-2
   1479c:	000d0a13          	mv	s4,s10
   147a0:	04f51263          	bne	a0,a5,147e4 <__svfscanf_r+0x1050>
   147a4:	008c2683          	lw	a3,8(s8)
   147a8:	e2d046e3          	bgtz	a3,145d4 <__svfscanf_r+0xe40>
   147ac:	000c0593          	mv	a1,s8
   147b0:	00048513          	mv	a0,s1
   147b4:	40d040ef          	jal	193c0 <__srefill_r>
   147b8:	e0050ee3          	beqz	a0,145d4 <__svfscanf_r+0xe40>
   147bc:	a60a1863          	bnez	s4,13a2c <__svfscanf_r+0x298>
   147c0:	e35ff06f          	j	145f4 <__svfscanf_r+0xe60>
   147c4:	00812783          	lw	a5,8(sp)
   147c8:	01ab8bbb          	addw	s7,s7,s10
   147cc:	fff90913          	addi	s2,s2,-1
   147d0:	00000a13          	li	s4,0
   147d4:	fc0798e3          	bnez	a5,147a4 <__svfscanf_r+0x1010>
   147d8:	004a8a93          	addi	s5,s5,4
   147dc:	00078a13          	mv	s4,a5
   147e0:	fc5ff06f          	j	147a4 <__svfscanf_r+0x1010>
   147e4:	000aa503          	lw	a0,0(s5)
   147e8:	f75ff06f          	j	1475c <__svfscanf_r+0xfc8>
   147ec:	03013783          	ld	a5,48(sp)
   147f0:	8db7fc63          	bleu	s11,a5,138c8 <__svfscanf_r+0x134>
   147f4:	fffd8d93          	addi	s11,s11,-1
   147f8:	000dc583          	lbu	a1,0(s11)
   147fc:	000c0613          	mv	a2,s8
   14800:	00048513          	mv	a0,s1
   14804:	55c080ef          	jal	1cd60 <_ungetc_r>
   14808:	03013783          	ld	a5,48(sp)
   1480c:	fefd94e3          	bne	s11,a5,147f4 <__svfscanf_r+0x1060>
   14810:	8b8ff06f          	j	138c8 <__svfscanf_r+0x134>
   14814:	03013783          	ld	a5,48(sp)
   14818:	8bb7f863          	bleu	s11,a5,138c8 <__svfscanf_r+0x134>
   1481c:	fffd8d93          	addi	s11,s11,-1
   14820:	000dc583          	lbu	a1,0(s11)
   14824:	000c0613          	mv	a2,s8
   14828:	00048513          	mv	a0,s1
   1482c:	534080ef          	jal	1cd60 <_ungetc_r>
   14830:	03013783          	ld	a5,48(sp)
   14834:	fefd94e3          	bne	s11,a5,1481c <__svfscanf_r+0x1088>
   14838:	890ff06f          	j	138c8 <__svfscanf_r+0x134>
   1483c:	03013783          	ld	a5,48(sp)
   14840:	01b7e463          	bltu	a5,s11,14848 <__svfscanf_r+0x10b4>
   14844:	884ff06f          	j	138c8 <__svfscanf_r+0x134>
   14848:	fffd8d93          	addi	s11,s11,-1
   1484c:	000dc583          	lbu	a1,0(s11)
   14850:	000c0613          	mv	a2,s8
   14854:	00048513          	mv	a0,s1
   14858:	508080ef          	jal	1cd60 <_ungetc_r>
   1485c:	03013783          	ld	a5,48(sp)
   14860:	fefd94e3          	bne	s11,a5,14848 <__svfscanf_r+0x10b4>
   14864:	864ff06f          	j	138c8 <__svfscanf_r+0x134>
   14868:	00000513          	li	a0,0
   1486c:	655040ef          	jal	196c0 <nanf>
   14870:	00aca027          	fsw	fa0,0(s9)
   14874:	000a8b13          	mv	s6,s5
   14878:	999ff06f          	j	14210 <__svfscanf_r+0xa7c>

000000000001487c <vfscanf>:
   1487c:	fd010113          	addi	sp,sp,-48
   14880:	02813023          	sd	s0,32(sp)
   14884:	8181b403          	ld	s0,-2024(gp) # 24438 <_impure_ptr>
   14888:	00913c23          	sd	s1,24(sp)
   1488c:	02113423          	sd	ra,40(sp)
   14890:	00050493          	mv	s1,a0
   14894:	00060693          	mv	a3,a2
   14898:	02040263          	beqz	s0,148bc <vfscanf+0x40>
   1489c:	05042783          	lw	a5,80(s0)
   148a0:	00079e63          	bnez	a5,148bc <vfscanf+0x40>
   148a4:	00040513          	mv	a0,s0
   148a8:	00b13023          	sd	a1,0(sp)
   148ac:	00c13423          	sd	a2,8(sp)
   148b0:	719010ef          	jal	167c8 <__sinit>
   148b4:	00813683          	ld	a3,8(sp)
   148b8:	00013583          	ld	a1,0(sp)
   148bc:	00058613          	mv	a2,a1
   148c0:	00040513          	mv	a0,s0
   148c4:	00048593          	mv	a1,s1
   148c8:	02813083          	ld	ra,40(sp)
   148cc:	02013403          	ld	s0,32(sp)
   148d0:	01813483          	ld	s1,24(sp)
   148d4:	03010113          	addi	sp,sp,48
   148d8:	ebdfe06f          	j	13794 <__svfscanf_r>

00000000000148dc <__svfscanf>:
   148dc:	00060693          	mv	a3,a2
   148e0:	00058613          	mv	a2,a1
   148e4:	00050593          	mv	a1,a0
   148e8:	8181b503          	ld	a0,-2024(gp) # 24438 <_impure_ptr>
   148ec:	ea9fe06f          	j	13794 <__svfscanf_r>

00000000000148f0 <_vfscanf_r>:
   148f0:	fd010113          	addi	sp,sp,-48
   148f4:	02813023          	sd	s0,32(sp)
   148f8:	02113423          	sd	ra,40(sp)
   148fc:	00050413          	mv	s0,a0
   14900:	02050463          	beqz	a0,14928 <_vfscanf_r+0x38>
   14904:	05052783          	lw	a5,80(a0)
   14908:	02079063          	bnez	a5,14928 <_vfscanf_r+0x38>
   1490c:	00d13c23          	sd	a3,24(sp)
   14910:	00c13823          	sd	a2,16(sp)
   14914:	00b13423          	sd	a1,8(sp)
   14918:	6b1010ef          	jal	167c8 <__sinit>
   1491c:	01813683          	ld	a3,24(sp)
   14920:	01013603          	ld	a2,16(sp)
   14924:	00813583          	ld	a1,8(sp)
   14928:	00040513          	mv	a0,s0
   1492c:	02813083          	ld	ra,40(sp)
   14930:	02013403          	ld	s0,32(sp)
   14934:	03010113          	addi	sp,sp,48
   14938:	e5dfe06f          	j	13794 <__svfscanf_r>

000000000001493c <__swbuf_r>:
   1493c:	fd010113          	addi	sp,sp,-48
   14940:	02813023          	sd	s0,32(sp)
   14944:	00913c23          	sd	s1,24(sp)
   14948:	01313423          	sd	s3,8(sp)
   1494c:	02113423          	sd	ra,40(sp)
   14950:	01213823          	sd	s2,16(sp)
   14954:	00050493          	mv	s1,a0
   14958:	00058993          	mv	s3,a1
   1495c:	00060413          	mv	s0,a2
   14960:	00050663          	beqz	a0,1496c <__swbuf_r+0x30>
   14964:	05052783          	lw	a5,80(a0)
   14968:	12078e63          	beqz	a5,14aa4 <__swbuf_r+0x168>
   1496c:	01041683          	lh	a3,16(s0)
   14970:	02842783          	lw	a5,40(s0)
   14974:	03069713          	slli	a4,a3,0x30
   14978:	03075713          	srli	a4,a4,0x30
   1497c:	00f42623          	sw	a5,12(s0)
   14980:	00877793          	andi	a5,a4,8
   14984:	0e078e63          	beqz	a5,14a80 <__swbuf_r+0x144>
   14988:	01843783          	ld	a5,24(s0)
   1498c:	0e078a63          	beqz	a5,14a80 <__swbuf_r+0x144>
   14990:	03271613          	slli	a2,a4,0x32
   14994:	0ff9f913          	andi	s2,s3,255
   14998:	06065663          	bgez	a2,14a04 <__swbuf_r+0xc8>
   1499c:	00043703          	ld	a4,0(s0)
   149a0:	02042683          	lw	a3,32(s0)
   149a4:	40f707bb          	subw	a5,a4,a5
   149a8:	08d7d663          	ble	a3,a5,14a34 <__swbuf_r+0xf8>
   149ac:	0017879b          	addiw	a5,a5,1
   149b0:	00c42683          	lw	a3,12(s0)
   149b4:	00170613          	addi	a2,a4,1
   149b8:	00c43023          	sd	a2,0(s0)
   149bc:	fff6869b          	addiw	a3,a3,-1
   149c0:	00d42623          	sw	a3,12(s0)
   149c4:	01370023          	sb	s3,0(a4)
   149c8:	02042703          	lw	a4,32(s0)
   149cc:	08f70263          	beq	a4,a5,14a50 <__swbuf_r+0x114>
   149d0:	01045783          	lhu	a5,16(s0)
   149d4:	00090513          	mv	a0,s2
   149d8:	0017f793          	andi	a5,a5,1
   149dc:	00078663          	beqz	a5,149e8 <__swbuf_r+0xac>
   149e0:	00a00793          	li	a5,10
   149e4:	06f90663          	beq	s2,a5,14a50 <__swbuf_r+0x114>
   149e8:	02813083          	ld	ra,40(sp)
   149ec:	02013403          	ld	s0,32(sp)
   149f0:	01813483          	ld	s1,24(sp)
   149f4:	01013903          	ld	s2,16(sp)
   149f8:	00813983          	ld	s3,8(sp)
   149fc:	03010113          	addi	sp,sp,48
   14a00:	00008067          	ret
   14a04:	0ac42583          	lw	a1,172(s0)
   14a08:	ffffe737          	lui	a4,0xffffe
   14a0c:	fff7071b          	addiw	a4,a4,-1
   14a10:	00e5f733          	and	a4,a1,a4
   14a14:	00002637          	lui	a2,0x2
   14a18:	00c6e6b3          	or	a3,a3,a2
   14a1c:	0ae42623          	sw	a4,172(s0)
   14a20:	00043703          	ld	a4,0(s0)
   14a24:	00d41823          	sh	a3,16(s0)
   14a28:	02042683          	lw	a3,32(s0)
   14a2c:	40f707bb          	subw	a5,a4,a5
   14a30:	f6d7cee3          	blt	a5,a3,149ac <__swbuf_r+0x70>
   14a34:	00040593          	mv	a1,s0
   14a38:	00048513          	mv	a0,s1
   14a3c:	1e1010ef          	jal	1641c <_fflush_r>
   14a40:	06051663          	bnez	a0,14aac <__swbuf_r+0x170>
   14a44:	00043703          	ld	a4,0(s0)
   14a48:	00100793          	li	a5,1
   14a4c:	f65ff06f          	j	149b0 <__swbuf_r+0x74>
   14a50:	00040593          	mv	a1,s0
   14a54:	00048513          	mv	a0,s1
   14a58:	1c5010ef          	jal	1641c <_fflush_r>
   14a5c:	04051863          	bnez	a0,14aac <__swbuf_r+0x170>
   14a60:	02813083          	ld	ra,40(sp)
   14a64:	00090513          	mv	a0,s2
   14a68:	02013403          	ld	s0,32(sp)
   14a6c:	01813483          	ld	s1,24(sp)
   14a70:	01013903          	ld	s2,16(sp)
   14a74:	00813983          	ld	s3,8(sp)
   14a78:	03010113          	addi	sp,sp,48
   14a7c:	00008067          	ret
   14a80:	00040593          	mv	a1,s0
   14a84:	00048513          	mv	a0,s1
   14a88:	03c000ef          	jal	14ac4 <__swsetup_r>
   14a8c:	02051063          	bnez	a0,14aac <__swbuf_r+0x170>
   14a90:	01041683          	lh	a3,16(s0)
   14a94:	01843783          	ld	a5,24(s0)
   14a98:	03069713          	slli	a4,a3,0x30
   14a9c:	03075713          	srli	a4,a4,0x30
   14aa0:	ef1ff06f          	j	14990 <__swbuf_r+0x54>
   14aa4:	525010ef          	jal	167c8 <__sinit>
   14aa8:	ec5ff06f          	j	1496c <__swbuf_r+0x30>
   14aac:	fff00513          	li	a0,-1
   14ab0:	f39ff06f          	j	149e8 <__swbuf_r+0xac>

0000000000014ab4 <__swbuf>:
   14ab4:	00058613          	mv	a2,a1
   14ab8:	00050593          	mv	a1,a0
   14abc:	8181b503          	ld	a0,-2024(gp) # 24438 <_impure_ptr>
   14ac0:	e7dff06f          	j	1493c <__swbuf_r>

0000000000014ac4 <__swsetup_r>:
   14ac4:	8181b783          	ld	a5,-2024(gp) # 24438 <_impure_ptr>
   14ac8:	fe010113          	addi	sp,sp,-32
   14acc:	00813823          	sd	s0,16(sp)
   14ad0:	00913423          	sd	s1,8(sp)
   14ad4:	00113c23          	sd	ra,24(sp)
   14ad8:	00050493          	mv	s1,a0
   14adc:	00058413          	mv	s0,a1
   14ae0:	00078663          	beqz	a5,14aec <__swsetup_r+0x28>
   14ae4:	0507a703          	lw	a4,80(a5) # 1050 <_ftext-0xefb0>
   14ae8:	0e070063          	beqz	a4,14bc8 <__swsetup_r+0x104>
   14aec:	01041703          	lh	a4,16(s0)
   14af0:	03071793          	slli	a5,a4,0x30
   14af4:	0307d793          	srli	a5,a5,0x30
   14af8:	0087f693          	andi	a3,a5,8
   14afc:	04068263          	beqz	a3,14b40 <__swsetup_r+0x7c>
   14b00:	01843683          	ld	a3,24(s0)
   14b04:	06068663          	beqz	a3,14b70 <__swsetup_r+0xac>
   14b08:	0017f713          	andi	a4,a5,1
   14b0c:	08071463          	bnez	a4,14b94 <__swsetup_r+0xd0>
   14b10:	0027f793          	andi	a5,a5,2
   14b14:	00000713          	li	a4,0
   14b18:	00079463          	bnez	a5,14b20 <__swsetup_r+0x5c>
   14b1c:	02042703          	lw	a4,32(s0)
   14b20:	00e42623          	sw	a4,12(s0)
   14b24:	00000513          	li	a0,0
   14b28:	08068263          	beqz	a3,14bac <__swsetup_r+0xe8>
   14b2c:	01813083          	ld	ra,24(sp)
   14b30:	01013403          	ld	s0,16(sp)
   14b34:	00813483          	ld	s1,8(sp)
   14b38:	02010113          	addi	sp,sp,32
   14b3c:	00008067          	ret
   14b40:	0107f693          	andi	a3,a5,16
   14b44:	0c068663          	beqz	a3,14c10 <__swsetup_r+0x14c>
   14b48:	0047f793          	andi	a5,a5,4
   14b4c:	08079463          	bnez	a5,14bd4 <__swsetup_r+0x110>
   14b50:	01843683          	ld	a3,24(s0)
   14b54:	00876793          	ori	a5,a4,8
   14b58:	0107979b          	slliw	a5,a5,0x10
   14b5c:	4107d79b          	sraiw	a5,a5,0x10
   14b60:	00f41823          	sh	a5,16(s0)
   14b64:	03079793          	slli	a5,a5,0x30
   14b68:	0307d793          	srli	a5,a5,0x30
   14b6c:	f8069ee3          	bnez	a3,14b08 <__swsetup_r+0x44>
   14b70:	2807f713          	andi	a4,a5,640
   14b74:	20000613          	li	a2,512
   14b78:	f8c708e3          	beq	a4,a2,14b08 <__swsetup_r+0x44>
   14b7c:	00040593          	mv	a1,s0
   14b80:	00048513          	mv	a0,s1
   14b84:	235020ef          	jal	175b8 <__smakebuf_r>
   14b88:	01045783          	lhu	a5,16(s0)
   14b8c:	01843683          	ld	a3,24(s0)
   14b90:	f79ff06f          	j	14b08 <__swsetup_r+0x44>
   14b94:	02042783          	lw	a5,32(s0)
   14b98:	00042623          	sw	zero,12(s0)
   14b9c:	00000513          	li	a0,0
   14ba0:	40f007bb          	negw	a5,a5
   14ba4:	02f42423          	sw	a5,40(s0)
   14ba8:	f80692e3          	bnez	a3,14b2c <__swsetup_r+0x68>
   14bac:	01041783          	lh	a5,16(s0)
   14bb0:	0807f713          	andi	a4,a5,128
   14bb4:	f6070ce3          	beqz	a4,14b2c <__swsetup_r+0x68>
   14bb8:	0407e793          	ori	a5,a5,64
   14bbc:	00f41823          	sh	a5,16(s0)
   14bc0:	fff00513          	li	a0,-1
   14bc4:	f69ff06f          	j	14b2c <__swsetup_r+0x68>
   14bc8:	00078513          	mv	a0,a5
   14bcc:	3fd010ef          	jal	167c8 <__sinit>
   14bd0:	f1dff06f          	j	14aec <__swsetup_r+0x28>
   14bd4:	05843583          	ld	a1,88(s0)
   14bd8:	00058e63          	beqz	a1,14bf4 <__swsetup_r+0x130>
   14bdc:	07440793          	addi	a5,s0,116
   14be0:	00f58863          	beq	a1,a5,14bf0 <__swsetup_r+0x12c>
   14be4:	00048513          	mv	a0,s1
   14be8:	7a5010ef          	jal	16b8c <_free_r>
   14bec:	01041703          	lh	a4,16(s0)
   14bf0:	04043c23          	sd	zero,88(s0)
   14bf4:	01843683          	ld	a3,24(s0)
   14bf8:	fdb77713          	andi	a4,a4,-37
   14bfc:	0107171b          	slliw	a4,a4,0x10
   14c00:	4107571b          	sraiw	a4,a4,0x10
   14c04:	00042423          	sw	zero,8(s0)
   14c08:	00d43023          	sd	a3,0(s0)
   14c0c:	f49ff06f          	j	14b54 <__swsetup_r+0x90>
   14c10:	00900793          	li	a5,9
   14c14:	00f4a023          	sw	a5,0(s1)
   14c18:	04076713          	ori	a4,a4,64
   14c1c:	00e41823          	sh	a4,16(s0)
   14c20:	fff00513          	li	a0,-1
   14c24:	f09ff06f          	j	14b2c <__swsetup_r+0x68>

0000000000014c28 <__register_exitproc>:
   14c28:	fd010113          	addi	sp,sp,-48
   14c2c:	02813023          	sd	s0,32(sp)
   14c30:	8101b403          	ld	s0,-2032(gp) # 24430 <_global_impure_ptr>
   14c34:	00913c23          	sd	s1,24(sp)
   14c38:	00050493          	mv	s1,a0
   14c3c:	1f843503          	ld	a0,504(s0)
   14c40:	01213823          	sd	s2,16(sp)
   14c44:	01313423          	sd	s3,8(sp)
   14c48:	01413023          	sd	s4,0(sp)
   14c4c:	02113423          	sd	ra,40(sp)
   14c50:	00058913          	mv	s2,a1
   14c54:	00060a13          	mv	s4,a2
   14c58:	00068993          	mv	s3,a3
   14c5c:	0c050463          	beqz	a0,14d24 <__register_exitproc+0xfc>
   14c60:	00852703          	lw	a4,8(a0)
   14c64:	01f00793          	li	a5,31
   14c68:	0017059b          	addiw	a1,a4,1
   14c6c:	02e7de63          	ble	a4,a5,14ca8 <__register_exitproc+0x80>
   14c70:	000117b7          	lui	a5,0x11
   14c74:	d4c78793          	addi	a5,a5,-692 # 10d4c <malloc>
   14c78:	0a078c63          	beqz	a5,14d30 <__register_exitproc+0x108>
   14c7c:	31800513          	li	a0,792
   14c80:	8ccfc0ef          	jal	10d4c <malloc>
   14c84:	0a050663          	beqz	a0,14d30 <__register_exitproc+0x108>
   14c88:	1f843783          	ld	a5,504(s0)
   14c8c:	00052423          	sw	zero,8(a0)
   14c90:	00100593          	li	a1,1
   14c94:	00f53023          	sd	a5,0(a0)
   14c98:	1ea43c23          	sd	a0,504(s0)
   14c9c:	30052823          	sw	zero,784(a0)
   14ca0:	30052a23          	sw	zero,788(a0)
   14ca4:	00000713          	li	a4,0
   14ca8:	00070793          	mv	a5,a4
   14cac:	02049e63          	bnez	s1,14ce8 <__register_exitproc+0xc0>
   14cb0:	00278793          	addi	a5,a5,2
   14cb4:	00379793          	slli	a5,a5,0x3
   14cb8:	00b52423          	sw	a1,8(a0)
   14cbc:	00f50533          	add	a0,a0,a5
   14cc0:	01253023          	sd	s2,0(a0)
   14cc4:	00000513          	li	a0,0
   14cc8:	02813083          	ld	ra,40(sp)
   14ccc:	02013403          	ld	s0,32(sp)
   14cd0:	01813483          	ld	s1,24(sp)
   14cd4:	01013903          	ld	s2,16(sp)
   14cd8:	00813983          	ld	s3,8(sp)
   14cdc:	00013a03          	ld	s4,0(sp)
   14ce0:	03010113          	addi	sp,sp,48
   14ce4:	00008067          	ret
   14ce8:	00371813          	slli	a6,a4,0x3
   14cec:	01050833          	add	a6,a0,a6
   14cf0:	11483823          	sd	s4,272(a6)
   14cf4:	31052883          	lw	a7,784(a0)
   14cf8:	00100613          	li	a2,1
   14cfc:	00e6173b          	sllw	a4,a2,a4
   14d00:	00e8e633          	or	a2,a7,a4
   14d04:	30c52823          	sw	a2,784(a0)
   14d08:	21383823          	sd	s3,528(a6)
   14d0c:	00200693          	li	a3,2
   14d10:	fad490e3          	bne	s1,a3,14cb0 <__register_exitproc+0x88>
   14d14:	31452683          	lw	a3,788(a0)
   14d18:	00e6e733          	or	a4,a3,a4
   14d1c:	30e52a23          	sw	a4,788(a0)
   14d20:	f91ff06f          	j	14cb0 <__register_exitproc+0x88>
   14d24:	20040513          	addi	a0,s0,512
   14d28:	1ea43c23          	sd	a0,504(s0)
   14d2c:	f35ff06f          	j	14c60 <__register_exitproc+0x38>
   14d30:	fff00513          	li	a0,-1
   14d34:	f95ff06f          	j	14cc8 <__register_exitproc+0xa0>

0000000000014d38 <__call_exitprocs>:
   14d38:	fa010113          	addi	sp,sp,-96
   14d3c:	03413823          	sd	s4,48(sp)
   14d40:	8101ba03          	ld	s4,-2032(gp) # 24430 <_global_impure_ptr>
   14d44:	03313c23          	sd	s3,56(sp)
   14d48:	000119b7          	lui	s3,0x11
   14d4c:	04913423          	sd	s1,72(sp)
   14d50:	05213023          	sd	s2,64(sp)
   14d54:	03513423          	sd	s5,40(sp)
   14d58:	01713c23          	sd	s7,24(sp)
   14d5c:	01813823          	sd	s8,16(sp)
   14d60:	04113c23          	sd	ra,88(sp)
   14d64:	04813823          	sd	s0,80(sp)
   14d68:	03613023          	sd	s6,32(sp)
   14d6c:	01913423          	sd	s9,8(sp)
   14d70:	01a13023          	sd	s10,0(sp)
   14d74:	00050913          	mv	s2,a0
   14d78:	00058b93          	mv	s7,a1
   14d7c:	1f8a0a93          	addi	s5,s4,504
   14d80:	00100493          	li	s1,1
   14d84:	fff00c13          	li	s8,-1
   14d88:	d5898993          	addi	s3,s3,-680 # 10d58 <free>
   14d8c:	1f8a3b03          	ld	s6,504(s4)
   14d90:	0c0b0463          	beqz	s6,14e58 <__call_exitprocs+0x120>
   14d94:	000a8d13          	mv	s10,s5
   14d98:	008b2403          	lw	s0,8(s6)
   14d9c:	fff4041b          	addiw	s0,s0,-1
   14da0:	02045263          	bgez	s0,14dc4 <__call_exitprocs+0x8c>
   14da4:	08c0006f          	j	14e30 <__call_exitprocs+0xf8>
   14da8:	02040793          	addi	a5,s0,32
   14dac:	00379793          	slli	a5,a5,0x3
   14db0:	00fb07b3          	add	a5,s6,a5
   14db4:	1107b783          	ld	a5,272(a5)
   14db8:	00fb8a63          	beq	s7,a5,14dcc <__call_exitprocs+0x94>
   14dbc:	fff4041b          	addiw	s0,s0,-1
   14dc0:	07840863          	beq	s0,s8,14e30 <__call_exitprocs+0xf8>
   14dc4:	00040713          	mv	a4,s0
   14dc8:	fe0b90e3          	bnez	s7,14da8 <__call_exitprocs+0x70>
   14dcc:	008b2783          	lw	a5,8(s6)
   14dd0:	00371713          	slli	a4,a4,0x3
   14dd4:	00eb0733          	add	a4,s6,a4
   14dd8:	fff7879b          	addiw	a5,a5,-1
   14ddc:	01073683          	ld	a3,16(a4) # ffffffffffffe010 <_end+0xfffffffffffd7218>
   14de0:	0a878c63          	beq	a5,s0,14e98 <__call_exitprocs+0x160>
   14de4:	00073823          	sd	zero,16(a4)
   14de8:	fc068ae3          	beqz	a3,14dbc <__call_exitprocs+0x84>
   14dec:	310b2783          	lw	a5,784(s6)
   14df0:	0084963b          	sllw	a2,s1,s0
   14df4:	008b2c83          	lw	s9,8(s6)
   14df8:	00f677b3          	and	a5,a2,a5
   14dfc:	08078a63          	beqz	a5,14e90 <__call_exitprocs+0x158>
   14e00:	314b2783          	lw	a5,788(s6)
   14e04:	00f67633          	and	a2,a2,a5
   14e08:	08061c63          	bnez	a2,14ea0 <__call_exitprocs+0x168>
   14e0c:	11073583          	ld	a1,272(a4)
   14e10:	00090513          	mv	a0,s2
   14e14:	000680e7          	jalr	a3
   14e18:	008b2783          	lw	a5,8(s6)
   14e1c:	f79798e3          	bne	a5,s9,14d8c <__call_exitprocs+0x54>
   14e20:	000d3783          	ld	a5,0(s10)
   14e24:	f76794e3          	bne	a5,s6,14d8c <__call_exitprocs+0x54>
   14e28:	fff4041b          	addiw	s0,s0,-1
   14e2c:	f9841ce3          	bne	s0,s8,14dc4 <__call_exitprocs+0x8c>
   14e30:	02098463          	beqz	s3,14e58 <__call_exitprocs+0x120>
   14e34:	008b2783          	lw	a5,8(s6)
   14e38:	06079a63          	bnez	a5,14eac <__call_exitprocs+0x174>
   14e3c:	000b3783          	ld	a5,0(s6)
   14e40:	08078063          	beqz	a5,14ec0 <__call_exitprocs+0x188>
   14e44:	000b0513          	mv	a0,s6
   14e48:	00fd3023          	sd	a5,0(s10)
   14e4c:	f0dfb0ef          	jal	10d58 <free>
   14e50:	000d3b03          	ld	s6,0(s10)
   14e54:	f40b12e3          	bnez	s6,14d98 <__call_exitprocs+0x60>
   14e58:	05813083          	ld	ra,88(sp)
   14e5c:	05013403          	ld	s0,80(sp)
   14e60:	04813483          	ld	s1,72(sp)
   14e64:	04013903          	ld	s2,64(sp)
   14e68:	03813983          	ld	s3,56(sp)
   14e6c:	03013a03          	ld	s4,48(sp)
   14e70:	02813a83          	ld	s5,40(sp)
   14e74:	02013b03          	ld	s6,32(sp)
   14e78:	01813b83          	ld	s7,24(sp)
   14e7c:	01013c03          	ld	s8,16(sp)
   14e80:	00813c83          	ld	s9,8(sp)
   14e84:	00013d03          	ld	s10,0(sp)
   14e88:	06010113          	addi	sp,sp,96
   14e8c:	00008067          	ret
   14e90:	000680e7          	jalr	a3
   14e94:	f85ff06f          	j	14e18 <__call_exitprocs+0xe0>
   14e98:	008b2423          	sw	s0,8(s6)
   14e9c:	f4dff06f          	j	14de8 <__call_exitprocs+0xb0>
   14ea0:	11073503          	ld	a0,272(a4)
   14ea4:	000680e7          	jalr	a3
   14ea8:	f71ff06f          	j	14e18 <__call_exitprocs+0xe0>
   14eac:	000b3783          	ld	a5,0(s6)
   14eb0:	000b0d13          	mv	s10,s6
   14eb4:	00078b13          	mv	s6,a5
   14eb8:	ee0b10e3          	bnez	s6,14d98 <__call_exitprocs+0x60>
   14ebc:	f9dff06f          	j	14e58 <__call_exitprocs+0x120>
   14ec0:	00000793          	li	a5,0
   14ec4:	fedff06f          	j	14eb0 <__call_exitprocs+0x178>

0000000000014ec8 <quorem>:
   14ec8:	fc010113          	addi	sp,sp,-64
   14ecc:	03213023          	sd	s2,32(sp)
   14ed0:	01452783          	lw	a5,20(a0)
   14ed4:	0145a903          	lw	s2,20(a1)
   14ed8:	02113c23          	sd	ra,56(sp)
   14edc:	02813823          	sd	s0,48(sp)
   14ee0:	02913423          	sd	s1,40(sp)
   14ee4:	01313c23          	sd	s3,24(sp)
   14ee8:	01413823          	sd	s4,16(sp)
   14eec:	01513423          	sd	s5,8(sp)
   14ef0:	1b27ce63          	blt	a5,s2,150ac <quorem+0x1e4>
   14ef4:	fff9091b          	addiw	s2,s2,-1
   14ef8:	00090f13          	mv	t5,s2
   14efc:	002f1f13          	slli	t5,t5,0x2
   14f00:	01858413          	addi	s0,a1,24
   14f04:	01e409b3          	add	s3,s0,t5
   14f08:	01850a13          	addi	s4,a0,24
   14f0c:	01ea0f33          	add	t5,s4,t5
   14f10:	0009a783          	lw	a5,0(s3)
   14f14:	000f2483          	lw	s1,0(t5)
   14f18:	0017879b          	addiw	a5,a5,1
   14f1c:	02f4d4bb          	divuw	s1,s1,a5
   14f20:	0a048e63          	beqz	s1,14fdc <quorem+0x114>
   14f24:	00010337          	lui	t1,0x10
   14f28:	00040e93          	mv	t4,s0
   14f2c:	000a0e13          	mv	t3,s4
   14f30:	00000613          	li	a2,0
   14f34:	00000713          	li	a4,0
   14f38:	fff3031b          	addiw	t1,t1,-1
   14f3c:	004e8e93          	addi	t4,t4,4
   14f40:	ffcea803          	lw	a6,-4(t4)
   14f44:	000e2683          	lw	a3,0(t3)
   14f48:	004e0e13          	addi	t3,t3,4
   14f4c:	006878b3          	and	a7,a6,t1
   14f50:	029888bb          	mulw	a7,a7,s1
   14f54:	0108581b          	srliw	a6,a6,0x10
   14f58:	0066f7b3          	and	a5,a3,t1
   14f5c:	0106d69b          	srliw	a3,a3,0x10
   14f60:	0298083b          	mulw	a6,a6,s1
   14f64:	00c888bb          	addw	a7,a7,a2
   14f68:	0108d61b          	srliw	a2,a7,0x10
   14f6c:	0068f8b3          	and	a7,a7,t1
   14f70:	4117073b          	subw	a4,a4,a7
   14f74:	00f707bb          	addw	a5,a4,a5
   14f78:	4107d71b          	sraiw	a4,a5,0x10
   14f7c:	0067f7b3          	and	a5,a5,t1
   14f80:	00c8063b          	addw	a2,a6,a2
   14f84:	00667833          	and	a6,a2,t1
   14f88:	410686bb          	subw	a3,a3,a6
   14f8c:	00e6873b          	addw	a4,a3,a4
   14f90:	0107169b          	slliw	a3,a4,0x10
   14f94:	00f6e6b3          	or	a3,a3,a5
   14f98:	fede2e23          	sw	a3,-4(t3)
   14f9c:	0106561b          	srliw	a2,a2,0x10
   14fa0:	4107571b          	sraiw	a4,a4,0x10
   14fa4:	f9d9fce3          	bleu	t4,s3,14f3c <quorem+0x74>
   14fa8:	000f2783          	lw	a5,0(t5)
   14fac:	02079863          	bnez	a5,14fdc <quorem+0x114>
   14fb0:	ffcf0793          	addi	a5,t5,-4
   14fb4:	02fa7263          	bleu	a5,s4,14fd8 <quorem+0x110>
   14fb8:	ffcf2703          	lw	a4,-4(t5)
   14fbc:	00070863          	beqz	a4,14fcc <quorem+0x104>
   14fc0:	0180006f          	j	14fd8 <quorem+0x110>
   14fc4:	0007a703          	lw	a4,0(a5)
   14fc8:	00071863          	bnez	a4,14fd8 <quorem+0x110>
   14fcc:	ffc78793          	addi	a5,a5,-4
   14fd0:	fff9091b          	addiw	s2,s2,-1
   14fd4:	fefa68e3          	bltu	s4,a5,14fc4 <quorem+0xfc>
   14fd8:	01252a23          	sw	s2,20(a0)
   14fdc:	00050a93          	mv	s5,a0
   14fe0:	6dc030ef          	jal	186bc <__mcmp>
   14fe4:	0a054063          	bltz	a0,15084 <quorem+0x1bc>
   14fe8:	000105b7          	lui	a1,0x10
   14fec:	0014849b          	addiw	s1,s1,1
   14ff0:	000a0613          	mv	a2,s4
   14ff4:	00000793          	li	a5,0
   14ff8:	fff5859b          	addiw	a1,a1,-1
   14ffc:	00440413          	addi	s0,s0,4
   15000:	ffc42683          	lw	a3,-4(s0)
   15004:	00062703          	lw	a4,0(a2) # 2000 <_ftext-0xe000>
   15008:	00460613          	addi	a2,a2,4
   1500c:	00b6f833          	and	a6,a3,a1
   15010:	410787bb          	subw	a5,a5,a6
   15014:	00b77833          	and	a6,a4,a1
   15018:	010787bb          	addw	a5,a5,a6
   1501c:	0106d69b          	srliw	a3,a3,0x10
   15020:	0107571b          	srliw	a4,a4,0x10
   15024:	40d7073b          	subw	a4,a4,a3
   15028:	4107d69b          	sraiw	a3,a5,0x10
   1502c:	00d706bb          	addw	a3,a4,a3
   15030:	0106981b          	slliw	a6,a3,0x10
   15034:	00b7f733          	and	a4,a5,a1
   15038:	00e86733          	or	a4,a6,a4
   1503c:	fee62e23          	sw	a4,-4(a2)
   15040:	4106d79b          	sraiw	a5,a3,0x10
   15044:	fa89fce3          	bleu	s0,s3,14ffc <quorem+0x134>
   15048:	00291713          	slli	a4,s2,0x2
   1504c:	00ea0733          	add	a4,s4,a4
   15050:	00072783          	lw	a5,0(a4)
   15054:	02079863          	bnez	a5,15084 <quorem+0x1bc>
   15058:	ffc70793          	addi	a5,a4,-4
   1505c:	02fa7263          	bleu	a5,s4,15080 <quorem+0x1b8>
   15060:	ffc72703          	lw	a4,-4(a4)
   15064:	00070863          	beqz	a4,15074 <quorem+0x1ac>
   15068:	0180006f          	j	15080 <quorem+0x1b8>
   1506c:	0007a703          	lw	a4,0(a5)
   15070:	00071863          	bnez	a4,15080 <quorem+0x1b8>
   15074:	ffc78793          	addi	a5,a5,-4
   15078:	fff9091b          	addiw	s2,s2,-1
   1507c:	fefa68e3          	bltu	s4,a5,1506c <quorem+0x1a4>
   15080:	012aaa23          	sw	s2,20(s5)
   15084:	00048513          	mv	a0,s1
   15088:	03813083          	ld	ra,56(sp)
   1508c:	03013403          	ld	s0,48(sp)
   15090:	02813483          	ld	s1,40(sp)
   15094:	02013903          	ld	s2,32(sp)
   15098:	01813983          	ld	s3,24(sp)
   1509c:	01013a03          	ld	s4,16(sp)
   150a0:	00813a83          	ld	s5,8(sp)
   150a4:	04010113          	addi	sp,sp,64
   150a8:	00008067          	ret
   150ac:	00000513          	li	a0,0
   150b0:	fd9ff06f          	j	15088 <quorem+0x1c0>

00000000000150b4 <_dtoa_r>:
   150b4:	e20585d3          	fmv.x.d	a1,fa1
   150b8:	06053883          	ld	a7,96(a0)
   150bc:	f3010113          	addi	sp,sp,-208
   150c0:	0c813023          	sd	s0,192(sp)
   150c4:	0a913c23          	sd	s1,184(sp)
   150c8:	0b313423          	sd	s3,168(sp)
   150cc:	09613823          	sd	s6,144(sp)
   150d0:	07913c23          	sd	s9,120(sp)
   150d4:	07a13823          	sd	s10,112(sp)
   150d8:	0c113423          	sd	ra,200(sp)
   150dc:	0b213823          	sd	s2,176(sp)
   150e0:	0b413023          	sd	s4,160(sp)
   150e4:	09513c23          	sd	s5,152(sp)
   150e8:	09713423          	sd	s7,136(sp)
   150ec:	09813023          	sd	s8,128(sp)
   150f0:	07b13423          	sd	s11,104(sp)
   150f4:	00e13023          	sd	a4,0(sp)
   150f8:	00050413          	mv	s0,a0
   150fc:	00060993          	mv	s3,a2
   15100:	00068c93          	mv	s9,a3
   15104:	00078493          	mv	s1,a5
   15108:	00080b13          	mv	s6,a6
   1510c:	00058d13          	mv	s10,a1
   15110:	02088263          	beqz	a7,15134 <_dtoa_r+0x80>
   15114:	06852603          	lw	a2,104(a0)
   15118:	00100693          	li	a3,1
   1511c:	00088593          	mv	a1,a7
   15120:	00c696bb          	sllw	a3,a3,a2
   15124:	00c8a423          	sw	a2,8(a7)
   15128:	00d8a623          	sw	a3,12(a7)
   1512c:	545020ef          	jal	17e70 <_Bfree>
   15130:	06043023          	sd	zero,96(s0)
   15134:	420d5913          	srai	s2,s10,0x20
   15138:	0c094063          	bltz	s2,151f8 <_dtoa_r+0x144>
   1513c:	0004a023          	sw	zero,0(s1)
   15140:	7ff007b7          	lui	a5,0x7ff00
   15144:	00f976b3          	and	a3,s2,a5
   15148:	06f68a63          	beq	a3,a5,151bc <_dtoa_r+0x108>
   1514c:	f20007d3          	fmv.d.x	fa5,zero
   15150:	f20d0753          	fmv.d.x	fa4,s10
   15154:	a2f727d3          	feq.d	a5,fa4,fa5
   15158:	0c078463          	beqz	a5,15220 <_dtoa_r+0x16c>
   1515c:	00013703          	ld	a4,0(sp)
   15160:	00100793          	li	a5,1
   15164:	00f72023          	sw	a5,0(a4)
   15168:	480b0a63          	beqz	s6,155fc <_dtoa_r+0x548>
   1516c:	000227b7          	lui	a5,0x22
   15170:	d3178793          	addi	a5,a5,-719 # 21d31 <zeroes.4123+0x6c9>
   15174:	00022537          	lui	a0,0x22
   15178:	00fb3023          	sd	a5,0(s6)
   1517c:	d3050513          	addi	a0,a0,-720 # 21d30 <zeroes.4123+0x6c8>
   15180:	0c813083          	ld	ra,200(sp)
   15184:	0c013403          	ld	s0,192(sp)
   15188:	0b813483          	ld	s1,184(sp)
   1518c:	0b013903          	ld	s2,176(sp)
   15190:	0a813983          	ld	s3,168(sp)
   15194:	0a013a03          	ld	s4,160(sp)
   15198:	09813a83          	ld	s5,152(sp)
   1519c:	09013b03          	ld	s6,144(sp)
   151a0:	08813b83          	ld	s7,136(sp)
   151a4:	08013c03          	ld	s8,128(sp)
   151a8:	07813c83          	ld	s9,120(sp)
   151ac:	07013d03          	ld	s10,112(sp)
   151b0:	06813d83          	ld	s11,104(sp)
   151b4:	0d010113          	addi	sp,sp,208
   151b8:	00008067          	ret
   151bc:	00013703          	ld	a4,0(sp)
   151c0:	000027b7          	lui	a5,0x2
   151c4:	70f7879b          	addiw	a5,a5,1807
   151c8:	00f72023          	sw	a5,0(a4)
   151cc:	00cd1793          	slli	a5,s10,0xc
   151d0:	3e079863          	bnez	a5,155c0 <_dtoa_r+0x50c>
   151d4:	00022537          	lui	a0,0x22
   151d8:	d4050513          	addi	a0,a0,-704 # 21d40 <zeroes.4123+0x6d8>
   151dc:	fa0b02e3          	beqz	s6,15180 <_dtoa_r+0xcc>
   151e0:	00354703          	lbu	a4,3(a0)
   151e4:	00350793          	addi	a5,a0,3
   151e8:	00070463          	beqz	a4,151f0 <_dtoa_r+0x13c>
   151ec:	00850793          	addi	a5,a0,8
   151f0:	00fb3023          	sd	a5,0(s6)
   151f4:	f8dff06f          	j	15180 <_dtoa_r+0xcc>
   151f8:	800007b7          	lui	a5,0x80000
   151fc:	fff7c793          	not	a5,a5
   15200:	020d1713          	slli	a4,s10,0x20
   15204:	00f97933          	and	s2,s2,a5
   15208:	02091793          	slli	a5,s2,0x20
   1520c:	02075713          	srli	a4,a4,0x20
   15210:	00100693          	li	a3,1
   15214:	00d4a023          	sw	a3,0(s1)
   15218:	00f76d33          	or	s10,a4,a5
   1521c:	f25ff06f          	j	15140 <_dtoa_r+0x8c>
   15220:	f20d05d3          	fmv.d.x	fa1,s10
   15224:	05810693          	addi	a3,sp,88
   15228:	05c10613          	addi	a2,sp,92
   1522c:	00040513          	mv	a0,s0
   15230:	0cd030ef          	jal	18afc <__d2b>
   15234:	02a13023          	sd	a0,32(sp)
   15238:	0149581b          	srliw	a6,s2,0x14
   1523c:	38081863          	bnez	a6,155cc <_dtoa_r+0x518>
   15240:	05812603          	lw	a2,88(sp)
   15244:	05c12803          	lw	a6,92(sp)
   15248:	02000793          	li	a5,32
   1524c:	0106083b          	addw	a6,a2,a6
   15250:	4328069b          	addiw	a3,a6,1074
   15254:	6ad7de63          	ble	a3,a5,15910 <_dtoa_r+0x85c>
   15258:	04000593          	li	a1,64
   1525c:	4128049b          	addiw	s1,a6,1042
   15260:	000d079b          	sext.w	a5,s10
   15264:	40d585bb          	subw	a1,a1,a3
   15268:	0097d7bb          	srlw	a5,a5,s1
   1526c:	00b914bb          	sllw	s1,s2,a1
   15270:	0097e4b3          	or	s1,a5,s1
   15274:	d21487d3          	fcvt.d.wu	fa5,s1
   15278:	fe1006b7          	lui	a3,0xfe100
   1527c:	fff8081b          	addiw	a6,a6,-1
   15280:	e20784d3          	fmv.x.d	s1,fa5
   15284:	00100913          	li	s2,1
   15288:	4204d793          	srai	a5,s1,0x20
   1528c:	00d787bb          	addw	a5,a5,a3
   15290:	02049493          	slli	s1,s1,0x20
   15294:	02079793          	slli	a5,a5,0x20
   15298:	0204d493          	srli	s1,s1,0x20
   1529c:	00f4e4b3          	or	s1,s1,a5
   152a0:	000247b7          	lui	a5,0x24
   152a4:	4887b787          	fld	fa5,1160(a5) # 24488 <mask+0x8>
   152a8:	f2048753          	fmv.d.x	fa4,s1
   152ac:	000247b7          	lui	a5,0x24
   152b0:	0af77653          	fsub.d	fa2,fa4,fa5
   152b4:	4987b787          	fld	fa5,1176(a5) # 24498 <mask+0x18>
   152b8:	000247b7          	lui	a5,0x24
   152bc:	4907b687          	fld	fa3,1168(a5) # 24490 <mask+0x10>
   152c0:	000247b7          	lui	a5,0x24
   152c4:	d2080753          	fcvt.d.w	fa4,a6
   152c8:	7ad677c3          	fmadd.d	fa5,fa2,fa3,fa5
   152cc:	4a07b687          	fld	fa3,1184(a5) # 244a0 <mask+0x20>
   152d0:	7ad777c3          	fmadd.d	fa5,fa4,fa3,fa5
   152d4:	f2000753          	fmv.d.x	fa4,zero
   152d8:	a2e797d3          	flt.d	a5,fa5,fa4
   152dc:	c2079bd3          	fcvt.w.d	s7,fa5,rtz
   152e0:	5e079e63          	bnez	a5,158dc <_dtoa_r+0x828>
   152e4:	00100793          	li	a5,1
   152e8:	02f12823          	sw	a5,48(sp)
   152ec:	01600793          	li	a5,22
   152f0:	0377e663          	bltu	a5,s7,1531c <_dtoa_r+0x268>
   152f4:	000217b7          	lui	a5,0x21
   152f8:	003b9693          	slli	a3,s7,0x3
   152fc:	e9878793          	addi	a5,a5,-360 # 20e98 <__mprec_tens>
   15300:	00f687b3          	add	a5,a3,a5
   15304:	0007b787          	fld	fa5,0(a5)
   15308:	f20d0753          	fmv.d.x	fa4,s10
   1530c:	a2f717d3          	flt.d	a5,fa4,fa5
   15310:	60078863          	beqz	a5,15920 <_dtoa_r+0x86c>
   15314:	fffb8b9b          	addiw	s7,s7,-1
   15318:	02012823          	sw	zero,48(sp)
   1531c:	4106083b          	subw	a6,a2,a6
   15320:	fff80d9b          	addiw	s11,a6,-1
   15324:	00000813          	li	a6,0
   15328:	2e0dc063          	bltz	s11,15608 <_dtoa_r+0x554>
   1532c:	5c0bc263          	bltz	s7,158f0 <_dtoa_r+0x83c>
   15330:	017d8dbb          	addw	s11,s11,s7
   15334:	03712423          	sw	s7,40(sp)
   15338:	00000c13          	li	s8,0
   1533c:	00900793          	li	a5,9
   15340:	2d37ea63          	bltu	a5,s3,15614 <_dtoa_r+0x560>
   15344:	00500793          	li	a5,5
   15348:	00100a13          	li	s4,1
   1534c:	0137d663          	ble	s3,a5,15358 <_dtoa_r+0x2a4>
   15350:	ffc9899b          	addiw	s3,s3,-4
   15354:	00000a13          	li	s4,0
   15358:	00300793          	li	a5,3
   1535c:	2af982e3          	beq	s3,a5,15e00 <_dtoa_r+0xd4c>
   15360:	1f37dce3          	ble	s3,a5,15d58 <_dtoa_r+0xca4>
   15364:	00400793          	li	a5,4
   15368:	0cf98ae3          	beq	s3,a5,15c3c <_dtoa_r+0xb88>
   1536c:	00100793          	li	a5,1
   15370:	00f12823          	sw	a5,16(sp)
   15374:	00500793          	li	a5,5
   15378:	1ef996e3          	bne	s3,a5,15d64 <_dtoa_r+0xcb0>
   1537c:	019b87bb          	addw	a5,s7,s9
   15380:	00178a9b          	addiw	s5,a5,1
   15384:	02f12a23          	sw	a5,52(sp)
   15388:	000a8513          	mv	a0,s5
   1538c:	000a8493          	mv	s1,s5
   15390:	1b505ee3          	blez	s5,15d4c <_dtoa_r+0xc98>
   15394:	06042423          	sw	zero,104(s0)
   15398:	01f00793          	li	a5,31
   1539c:	00000593          	li	a1,0
   153a0:	02a7f463          	bleu	a0,a5,153c8 <_dtoa_r+0x314>
   153a4:	00100613          	li	a2,1
   153a8:	00400693          	li	a3,4
   153ac:	0016969b          	slliw	a3,a3,0x1
   153b0:	00068793          	mv	a5,a3
   153b4:	01c78793          	addi	a5,a5,28
   153b8:	00060593          	mv	a1,a2
   153bc:	0016061b          	addiw	a2,a2,1
   153c0:	fef576e3          	bleu	a5,a0,153ac <_dtoa_r+0x2f8>
   153c4:	06b42423          	sw	a1,104(s0)
   153c8:	00040513          	mv	a0,s0
   153cc:	03013c23          	sd	a6,56(sp)
   153d0:	1f5020ef          	jal	17dc4 <_Balloc>
   153d4:	00a13423          	sd	a0,8(sp)
   153d8:	06a43023          	sd	a0,96(s0)
   153dc:	00e00793          	li	a5,14
   153e0:	03813803          	ld	a6,56(sp)
   153e4:	2697e463          	bltu	a5,s1,1564c <_dtoa_r+0x598>
   153e8:	260a0263          	beqz	s4,1564c <_dtoa_r+0x598>
   153ec:	03a13c23          	sd	s10,56(sp)
   153f0:	317054e3          	blez	s7,15ef8 <_dtoa_r+0xe44>
   153f4:	00fbf713          	andi	a4,s7,15
   153f8:	00371693          	slli	a3,a4,0x3
   153fc:	00021737          	lui	a4,0x21
   15400:	404bd79b          	sraiw	a5,s7,0x4
   15404:	e9870713          	addi	a4,a4,-360 # 20e98 <__mprec_tens>
   15408:	00e68733          	add	a4,a3,a4
   1540c:	0107f693          	andi	a3,a5,16
   15410:	00073687          	fld	fa3,0(a4)
   15414:	f20d07d3          	fmv.d.x	fa5,s10
   15418:	00200713          	li	a4,2
   1541c:	00068c63          	beqz	a3,15434 <_dtoa_r+0x380>
   15420:	00021737          	lui	a4,0x21
   15424:	fa873707          	fld	fa4,-88(a4) # 20fa8 <__mprec_bigtens+0x20>
   15428:	00f7f793          	andi	a5,a5,15
   1542c:	00300713          	li	a4,3
   15430:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
   15434:	02078663          	beqz	a5,15460 <_dtoa_r+0x3ac>
   15438:	000216b7          	lui	a3,0x21
   1543c:	f8868693          	addi	a3,a3,-120 # 20f88 <__mprec_bigtens>
   15440:	0017f613          	andi	a2,a5,1
   15444:	4017d79b          	sraiw	a5,a5,0x1
   15448:	00060863          	beqz	a2,15458 <_dtoa_r+0x3a4>
   1544c:	0006b707          	fld	fa4,0(a3)
   15450:	0017071b          	addiw	a4,a4,1
   15454:	12e6f6d3          	fmul.d	fa3,fa3,fa4
   15458:	00868693          	addi	a3,a3,8
   1545c:	fe0792e3          	bnez	a5,15440 <_dtoa_r+0x38c>
   15460:	1ad7f7d3          	fdiv.d	fa5,fa5,fa3
   15464:	03012783          	lw	a5,48(sp)
   15468:	00078a63          	beqz	a5,1547c <_dtoa_r+0x3c8>
   1546c:	000247b7          	lui	a5,0x24
   15470:	4a87b707          	fld	fa4,1192(a5) # 244a8 <mask+0x28>
   15474:	a2e797d3          	flt.d	a5,fa5,fa4
   15478:	440790e3          	bnez	a5,160b8 <_dtoa_r+0x1004>
   1547c:	000247b7          	lui	a5,0x24
   15480:	d20706d3          	fcvt.d.w	fa3,a4
   15484:	4b87b707          	fld	fa4,1208(a5) # 244b8 <mask+0x38>
   15488:	fcc006b7          	lui	a3,0xfcc00
   1548c:	72f6f743          	fmadd.d	fa4,fa3,fa5,fa4
   15490:	e2070753          	fmv.x.d	a4,fa4
   15494:	42075793          	srai	a5,a4,0x20
   15498:	00d787bb          	addw	a5,a5,a3
   1549c:	02071713          	slli	a4,a4,0x20
   154a0:	02079793          	slli	a5,a5,0x20
   154a4:	02075713          	srli	a4,a4,0x20
   154a8:	00f76733          	or	a4,a4,a5
   154ac:	180a86e3          	beqz	s5,15e38 <_dtoa_r+0xd84>
   154b0:	000b8693          	mv	a3,s7
   154b4:	000a8613          	mv	a2,s5
   154b8:	01012783          	lw	a5,16(sp)
   154bc:	300782e3          	beqz	a5,15fc0 <_dtoa_r+0xf0c>
   154c0:	fff6079b          	addiw	a5,a2,-1
   154c4:	000215b7          	lui	a1,0x21
   154c8:	e9858593          	addi	a1,a1,-360 # 20e98 <__mprec_tens>
   154cc:	00379793          	slli	a5,a5,0x3
   154d0:	00b787b3          	add	a5,a5,a1
   154d4:	000245b7          	lui	a1,0x24
   154d8:	0007b687          	fld	fa3,0(a5)
   154dc:	4c85b707          	fld	fa4,1224(a1) # 244c8 <mask+0x48>
   154e0:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   154e4:	00813503          	ld	a0,8(sp)
   154e8:	1ad77753          	fdiv.d	fa4,fa4,fa3
   154ec:	d20786d3          	fcvt.d.w	fa3,a5
   154f0:	0307879b          	addiw	a5,a5,48
   154f4:	0ff7f793          	andi	a5,a5,255
   154f8:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   154fc:	f20706d3          	fmv.d.x	fa3,a4
   15500:	00f50023          	sb	a5,0(a0)
   15504:	00150493          	addi	s1,a0,1
   15508:	0ad77753          	fsub.d	fa4,fa4,fa3
   1550c:	a2e79753          	flt.d	a4,fa5,fa4
   15510:	08071063          	bnez	a4,15590 <_dtoa_r+0x4dc>
   15514:	00024737          	lui	a4,0x24
   15518:	4a873587          	fld	fa1,1192(a4) # 244a8 <mask+0x28>
   1551c:	0af5f6d3          	fsub.d	fa3,fa1,fa5
   15520:	a2e69753          	flt.d	a4,fa3,fa4
   15524:	40071ae3          	bnez	a4,16138 <_dtoa_r+0x1084>
   15528:	00100793          	li	a5,1
   1552c:	1ac7d4e3          	ble	a2,a5,15ed4 <_dtoa_r+0xe20>
   15530:	000247b7          	lui	a5,0x24
   15534:	ffe6061b          	addiw	a2,a2,-2
   15538:	02061613          	slli	a2,a2,0x20
   1553c:	4b07b607          	fld	fa2,1200(a5) # 244b0 <mask+0x30>
   15540:	00813783          	ld	a5,8(sp)
   15544:	02065613          	srli	a2,a2,0x20
   15548:	00260613          	addi	a2,a2,2
   1554c:	00c78633          	add	a2,a5,a2
   15550:	0140006f          	j	15564 <_dtoa_r+0x4b0>
   15554:	0af5f6d3          	fsub.d	fa3,fa1,fa5
   15558:	a2e69753          	flt.d	a4,fa3,fa4
   1555c:	3c071ee3          	bnez	a4,16138 <_dtoa_r+0x1084>
   15560:	16960ae3          	beq	a2,s1,15ed4 <_dtoa_r+0xe20>
   15564:	12c7f7d3          	fmul.d	fa5,fa5,fa2
   15568:	12c77753          	fmul.d	fa4,fa4,fa2
   1556c:	00148493          	addi	s1,s1,1
   15570:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   15574:	d20786d3          	fcvt.d.w	fa3,a5
   15578:	0307879b          	addiw	a5,a5,48
   1557c:	0ff7f793          	andi	a5,a5,255
   15580:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   15584:	fef48fa3          	sb	a5,-1(s1)
   15588:	a2e79753          	flt.d	a4,fa5,fa4
   1558c:	fc0704e3          	beqz	a4,15554 <_dtoa_r+0x4a0>
   15590:	00068b93          	mv	s7,a3
   15594:	02013583          	ld	a1,32(sp)
   15598:	00040513          	mv	a0,s0
   1559c:	001b8b9b          	addiw	s7,s7,1
   155a0:	0d1020ef          	jal	17e70 <_Bfree>
   155a4:	00013783          	ld	a5,0(sp)
   155a8:	00048023          	sb	zero,0(s1)
   155ac:	0177a023          	sw	s7,0(a5)
   155b0:	0c0b0ce3          	beqz	s6,15e88 <_dtoa_r+0xdd4>
   155b4:	009b3023          	sd	s1,0(s6)
   155b8:	00813503          	ld	a0,8(sp)
   155bc:	bc5ff06f          	j	15180 <_dtoa_r+0xcc>
   155c0:	00022537          	lui	a0,0x22
   155c4:	d5050513          	addi	a0,a0,-688 # 21d50 <zeroes.4123+0x6e8>
   155c8:	c15ff06f          	j	151dc <_dtoa_r+0x128>
   155cc:	00cd1793          	slli	a5,s10,0xc
   155d0:	02c7d693          	srli	a3,a5,0x2c
   155d4:	3ff007b7          	lui	a5,0x3ff00
   155d8:	00f6e7b3          	or	a5,a3,a5
   155dc:	020d1493          	slli	s1,s10,0x20
   155e0:	02079793          	slli	a5,a5,0x20
   155e4:	0204d493          	srli	s1,s1,0x20
   155e8:	00f4e4b3          	or	s1,s1,a5
   155ec:	c018081b          	addiw	a6,a6,-1023
   155f0:	05812603          	lw	a2,88(sp)
   155f4:	00000913          	li	s2,0
   155f8:	ca9ff06f          	j	152a0 <_dtoa_r+0x1ec>
   155fc:	00022537          	lui	a0,0x22
   15600:	d3050513          	addi	a0,a0,-720 # 21d30 <zeroes.4123+0x6c8>
   15604:	b7dff06f          	j	15180 <_dtoa_r+0xcc>
   15608:	41b0083b          	negw	a6,s11
   1560c:	00000d93          	li	s11,0
   15610:	d1dff06f          	j	1532c <_dtoa_r+0x278>
   15614:	06042423          	sw	zero,104(s0)
   15618:	00000593          	li	a1,0
   1561c:	00040513          	mv	a0,s0
   15620:	03013c23          	sd	a6,56(sp)
   15624:	7a0020ef          	jal	17dc4 <_Balloc>
   15628:	03813803          	ld	a6,56(sp)
   1562c:	fff00a93          	li	s5,-1
   15630:	00100793          	li	a5,1
   15634:	00a13423          	sd	a0,8(sp)
   15638:	06a43023          	sd	a0,96(s0)
   1563c:	03512a23          	sw	s5,52(sp)
   15640:	00000993          	li	s3,0
   15644:	00000c93          	li	s9,0
   15648:	00f12823          	sw	a5,16(sp)
   1564c:	05c12783          	lw	a5,92(sp)
   15650:	0e07ca63          	bltz	a5,15744 <_dtoa_r+0x690>
   15654:	00e00693          	li	a3,14
   15658:	0f76c663          	blt	a3,s7,15744 <_dtoa_r+0x690>
   1565c:	000217b7          	lui	a5,0x21
   15660:	003b9693          	slli	a3,s7,0x3
   15664:	e9878793          	addi	a5,a5,-360 # 20e98 <__mprec_tens>
   15668:	00f687b3          	add	a5,a3,a5
   1566c:	0007b687          	fld	fa3,0(a5)
   15670:	5e0cc663          	bltz	s9,15c5c <_dtoa_r+0xba8>
   15674:	f20d0653          	fmv.d.x	fa2,s10
   15678:	00813703          	ld	a4,8(sp)
   1567c:	22d69553          	fneg.d	fa0,fa3
   15680:	1ad67753          	fdiv.d	fa4,fa2,fa3
   15684:	00170493          	addi	s1,a4,1
   15688:	c20717d3          	fcvt.w.d	a5,fa4,rtz
   1568c:	d20787d3          	fcvt.d.w	fa5,a5
   15690:	0307869b          	addiw	a3,a5,48
   15694:	00d70023          	sb	a3,0(a4)
   15698:	00100713          	li	a4,1
   1569c:	62f577c3          	fmadd.d	fa5,fa0,fa5,fa2
   156a0:	2aea88e3          	beq	s5,a4,16150 <_dtoa_r+0x109c>
   156a4:	000247b7          	lui	a5,0x24
   156a8:	4b07b587          	fld	fa1,1200(a5) # 244b0 <mask+0x30>
   156ac:	f2000653          	fmv.d.x	fa2,zero
   156b0:	12b7f7d3          	fmul.d	fa5,fa5,fa1
   156b4:	a2c7a7d3          	feq.d	a5,fa5,fa2
   156b8:	ec079ee3          	bnez	a5,15594 <_dtoa_r+0x4e0>
   156bc:	ffea869b          	addiw	a3,s5,-2
   156c0:	02069693          	slli	a3,a3,0x20
   156c4:	00813783          	ld	a5,8(sp)
   156c8:	0206d693          	srli	a3,a3,0x20
   156cc:	00268693          	addi	a3,a3,2 # fffffffffcc00002 <_end+0xfffffffffcbd920a>
   156d0:	00d786b3          	add	a3,a5,a3
   156d4:	0100006f          	j	156e4 <_dtoa_r+0x630>
   156d8:	12b7f7d3          	fmul.d	fa5,fa5,fa1
   156dc:	a2c7a7d3          	feq.d	a5,fa5,fa2
   156e0:	ea079ae3          	bnez	a5,15594 <_dtoa_r+0x4e0>
   156e4:	1ad7f753          	fdiv.d	fa4,fa5,fa3
   156e8:	00148493          	addi	s1,s1,1
   156ec:	c20717d3          	fcvt.w.d	a5,fa4,rtz
   156f0:	d2078753          	fcvt.d.w	fa4,a5
   156f4:	0307871b          	addiw	a4,a5,48
   156f8:	fee48fa3          	sb	a4,-1(s1)
   156fc:	7ae577c3          	fmadd.d	fa5,fa0,fa4,fa5
   15700:	fcd49ce3          	bne	s1,a3,156d8 <_dtoa_r+0x624>
   15704:	02f7f7d3          	fadd.d	fa5,fa5,fa5
   15708:	a2f69753          	flt.d	a4,fa3,fa5
   1570c:	7c070863          	beqz	a4,15edc <_dtoa_r+0xe28>
   15710:	fff6c783          	lbu	a5,-1(a3)
   15714:	00068493          	mv	s1,a3
   15718:	03900693          	li	a3,57
   1571c:	0140006f          	j	15730 <_dtoa_r+0x67c>
   15720:	00813783          	ld	a5,8(sp)
   15724:	02f70ce3          	beq	a4,a5,15f5c <_dtoa_r+0xea8>
   15728:	fff74783          	lbu	a5,-1(a4)
   1572c:	00070493          	mv	s1,a4
   15730:	fff48713          	addi	a4,s1,-1
   15734:	fed786e3          	beq	a5,a3,15720 <_dtoa_r+0x66c>
   15738:	0017879b          	addiw	a5,a5,1
   1573c:	00f70023          	sb	a5,0(a4)
   15740:	e55ff06f          	j	15594 <_dtoa_r+0x4e0>
   15744:	01012703          	lw	a4,16(sp)
   15748:	1a070c63          	beqz	a4,15900 <_dtoa_r+0x84c>
   1574c:	00100693          	li	a3,1
   15750:	5536d863          	ble	s3,a3,15ca0 <_dtoa_r+0xbec>
   15754:	fffa869b          	addiw	a3,s5,-1
   15758:	72dc4c63          	blt	s8,a3,15e90 <_dtoa_r+0xddc>
   1575c:	40dc06bb          	subw	a3,s8,a3
   15760:	00080493          	mv	s1,a6
   15764:	000a8793          	mv	a5,s5
   15768:	120ac2e3          	bltz	s5,1608c <_dtoa_r+0xfd8>
   1576c:	00f8083b          	addw	a6,a6,a5
   15770:	00100593          	li	a1,1
   15774:	00040513          	mv	a0,s0
   15778:	04d13423          	sd	a3,72(sp)
   1577c:	05013023          	sd	a6,64(sp)
   15780:	03013c23          	sd	a6,56(sp)
   15784:	00fd8dbb          	addw	s11,s11,a5
   15788:	275020ef          	jal	181fc <__i2b>
   1578c:	04013803          	ld	a6,64(sp)
   15790:	04813683          	ld	a3,72(sp)
   15794:	00050a13          	mv	s4,a0
   15798:	00048e63          	beqz	s1,157b4 <_dtoa_r+0x700>
   1579c:	01b05c63          	blez	s11,157b4 <_dtoa_r+0x700>
   157a0:	00048793          	mv	a5,s1
   157a4:	489dc463          	blt	s11,s1,15c2c <_dtoa_r+0xb78>
   157a8:	40f8083b          	subw	a6,a6,a5
   157ac:	40f484bb          	subw	s1,s1,a5
   157b0:	40fd8dbb          	subw	s11,s11,a5
   157b4:	02013903          	ld	s2,32(sp)
   157b8:	07805e63          	blez	s8,15834 <_dtoa_r+0x780>
   157bc:	01012783          	lw	a5,16(sp)
   157c0:	6a078463          	beqz	a5,15e68 <_dtoa_r+0xdb4>
   157c4:	04068a63          	beqz	a3,15818 <_dtoa_r+0x764>
   157c8:	00068613          	mv	a2,a3
   157cc:	000a0593          	mv	a1,s4
   157d0:	00040513          	mv	a0,s0
   157d4:	05013023          	sd	a6,64(sp)
   157d8:	02d13c23          	sd	a3,56(sp)
   157dc:	449020ef          	jal	18424 <__pow5mult>
   157e0:	02013603          	ld	a2,32(sp)
   157e4:	00050593          	mv	a1,a0
   157e8:	00050a13          	mv	s4,a0
   157ec:	00040513          	mv	a0,s0
   157f0:	241020ef          	jal	18230 <__multiply>
   157f4:	03813683          	ld	a3,56(sp)
   157f8:	02013583          	ld	a1,32(sp)
   157fc:	00050913          	mv	s2,a0
   15800:	00040513          	mv	a0,s0
   15804:	40dc0c3b          	subw	s8,s8,a3
   15808:	668020ef          	jal	17e70 <_Bfree>
   1580c:	04013803          	ld	a6,64(sp)
   15810:	020c0263          	beqz	s8,15834 <_dtoa_r+0x780>
   15814:	03213023          	sd	s2,32(sp)
   15818:	02013583          	ld	a1,32(sp)
   1581c:	000c0613          	mv	a2,s8
   15820:	00040513          	mv	a0,s0
   15824:	03013c23          	sd	a6,56(sp)
   15828:	3fd020ef          	jal	18424 <__pow5mult>
   1582c:	03813803          	ld	a6,56(sp)
   15830:	00050913          	mv	s2,a0
   15834:	00100593          	li	a1,1
   15838:	00040513          	mv	a0,s0
   1583c:	03013023          	sd	a6,32(sp)
   15840:	1bd020ef          	jal	181fc <__i2b>
   15844:	02812783          	lw	a5,40(sp)
   15848:	00050c13          	mv	s8,a0
   1584c:	02013803          	ld	a6,32(sp)
   15850:	0c078c63          	beqz	a5,15928 <_dtoa_r+0x874>
   15854:	00078613          	mv	a2,a5
   15858:	00050593          	mv	a1,a0
   1585c:	00040513          	mv	a0,s0
   15860:	3c5020ef          	jal	18424 <__pow5mult>
   15864:	00100793          	li	a5,1
   15868:	00050c13          	mv	s8,a0
   1586c:	02013803          	ld	a6,32(sp)
   15870:	3d37c263          	blt	a5,s3,15c34 <_dtoa_r+0xb80>
   15874:	00cd1793          	slli	a5,s10,0xc
   15878:	3a079e63          	bnez	a5,15c34 <_dtoa_r+0xb80>
   1587c:	420d5693          	srai	a3,s10,0x20
   15880:	7ff007b7          	lui	a5,0x7ff00
   15884:	00f6f7b3          	and	a5,a3,a5
   15888:	02012023          	sw	zero,32(sp)
   1588c:	00078a63          	beqz	a5,158a0 <_dtoa_r+0x7ec>
   15890:	00100793          	li	a5,1
   15894:	0018081b          	addiw	a6,a6,1
   15898:	001d8d9b          	addiw	s11,s11,1
   1589c:	02f12023          	sw	a5,32(sp)
   158a0:	02812783          	lw	a5,40(sp)
   158a4:	00100513          	li	a0,1
   158a8:	08078863          	beqz	a5,15938 <_dtoa_r+0x884>
   158ac:	014c2783          	lw	a5,20(s8)
   158b0:	03013423          	sd	a6,40(sp)
   158b4:	fff7879b          	addiw	a5,a5,-1
   158b8:	00478793          	addi	a5,a5,4 # 7ff00004 <_end+0x7fed920c>
   158bc:	00279793          	slli	a5,a5,0x2
   158c0:	00fc07b3          	add	a5,s8,a5
   158c4:	0087a503          	lw	a0,8(a5)
   158c8:	009020ef          	jal	180d0 <__hi0bits>
   158cc:	02000793          	li	a5,32
   158d0:	40a7853b          	subw	a0,a5,a0
   158d4:	02813803          	ld	a6,40(sp)
   158d8:	0600006f          	j	15938 <_dtoa_r+0x884>
   158dc:	d20b8753          	fcvt.d.w	fa4,s7
   158e0:	a2e7a7d3          	feq.d	a5,fa5,fa4
   158e4:	0017b793          	seqz	a5,a5
   158e8:	40fb8bbb          	subw	s7,s7,a5
   158ec:	9f9ff06f          	j	152e4 <_dtoa_r+0x230>
   158f0:	4178083b          	subw	a6,a6,s7
   158f4:	41700c3b          	negw	s8,s7
   158f8:	02012423          	sw	zero,40(sp)
   158fc:	a41ff06f          	j	1533c <_dtoa_r+0x288>
   15900:	000c0693          	mv	a3,s8
   15904:	00080493          	mv	s1,a6
   15908:	00000a13          	li	s4,0
   1590c:	e8dff06f          	j	15798 <_dtoa_r+0x6e4>
   15910:	000d049b          	sext.w	s1,s10
   15914:	40d787bb          	subw	a5,a5,a3
   15918:	00f494bb          	sllw	s1,s1,a5
   1591c:	959ff06f          	j	15274 <_dtoa_r+0x1c0>
   15920:	02012823          	sw	zero,48(sp)
   15924:	9f9ff06f          	j	1531c <_dtoa_r+0x268>
   15928:	00100793          	li	a5,1
   1592c:	0737d4e3          	ble	s3,a5,16194 <_dtoa_r+0x10e0>
   15930:	02012023          	sw	zero,32(sp)
   15934:	00078513          	mv	a0,a5
   15938:	01b507bb          	addw	a5,a0,s11
   1593c:	01f7f793          	andi	a5,a5,31
   15940:	1a078663          	beqz	a5,15aec <_dtoa_r+0xa38>
   15944:	02000693          	li	a3,32
   15948:	40f686bb          	subw	a3,a3,a5
   1594c:	00400613          	li	a2,4
   15950:	04d658e3          	ble	a3,a2,161a0 <_dtoa_r+0x10ec>
   15954:	01c00693          	li	a3,28
   15958:	40f687bb          	subw	a5,a3,a5
   1595c:	00f8083b          	addw	a6,a6,a5
   15960:	00f484bb          	addw	s1,s1,a5
   15964:	00fd8dbb          	addw	s11,s11,a5
   15968:	01005c63          	blez	a6,15980 <_dtoa_r+0x8cc>
   1596c:	00090593          	mv	a1,s2
   15970:	00080613          	mv	a2,a6
   15974:	00040513          	mv	a0,s0
   15978:	3e5020ef          	jal	1855c <__lshift>
   1597c:	00050913          	mv	s2,a0
   15980:	01b05c63          	blez	s11,15998 <_dtoa_r+0x8e4>
   15984:	000c0593          	mv	a1,s8
   15988:	000d8613          	mv	a2,s11
   1598c:	00040513          	mv	a0,s0
   15990:	3cd020ef          	jal	1855c <__lshift>
   15994:	00050c13          	mv	s8,a0
   15998:	03012783          	lw	a5,48(sp)
   1599c:	22079663          	bnez	a5,15bc8 <_dtoa_r+0xb14>
   159a0:	3f505e63          	blez	s5,15d9c <_dtoa_r+0xce8>
   159a4:	01012783          	lw	a5,16(sp)
   159a8:	14078c63          	beqz	a5,15b00 <_dtoa_r+0xa4c>
   159ac:	00905c63          	blez	s1,159c4 <_dtoa_r+0x910>
   159b0:	000a0593          	mv	a1,s4
   159b4:	00048613          	mv	a2,s1
   159b8:	00040513          	mv	a0,s0
   159bc:	3a1020ef          	jal	1855c <__lshift>
   159c0:	00050a13          	mv	s4,a0
   159c4:	02012783          	lw	a5,32(sp)
   159c8:	000a0d93          	mv	s11,s4
   159cc:	5a079463          	bnez	a5,15f74 <_dtoa_r+0xec0>
   159d0:	fffa849b          	addiw	s1,s5,-1
   159d4:	00813783          	ld	a5,8(sp)
   159d8:	02049493          	slli	s1,s1,0x20
   159dc:	0204d493          	srli	s1,s1,0x20
   159e0:	00148493          	addi	s1,s1,1
   159e4:	009784b3          	add	s1,a5,s1
   159e8:	00078c93          	mv	s9,a5
   159ec:	001d7793          	andi	a5,s10,1
   159f0:	00f13823          	sd	a5,16(sp)
   159f4:	000c0593          	mv	a1,s8
   159f8:	00090513          	mv	a0,s2
   159fc:	cccff0ef          	jal	14ec8 <quorem>
   15a00:	00050d13          	mv	s10,a0
   15a04:	02a12823          	sw	a0,48(sp)
   15a08:	000a0593          	mv	a1,s4
   15a0c:	00090513          	mv	a0,s2
   15a10:	4ad020ef          	jal	186bc <__mcmp>
   15a14:	00050a93          	mv	s5,a0
   15a18:	000d8613          	mv	a2,s11
   15a1c:	000c0593          	mv	a1,s8
   15a20:	00040513          	mv	a0,s0
   15a24:	4f9020ef          	jal	1871c <__mdiff>
   15a28:	01052683          	lw	a3,16(a0)
   15a2c:	00050793          	mv	a5,a0
   15a30:	030d0d1b          	addiw	s10,s10,48
   15a34:	00100713          	li	a4,1
   15a38:	00069e63          	bnez	a3,15a54 <_dtoa_r+0x9a0>
   15a3c:	00050593          	mv	a1,a0
   15a40:	02a13023          	sd	a0,32(sp)
   15a44:	00090513          	mv	a0,s2
   15a48:	475020ef          	jal	186bc <__mcmp>
   15a4c:	02013783          	ld	a5,32(sp)
   15a50:	00050713          	mv	a4,a0
   15a54:	00078593          	mv	a1,a5
   15a58:	00040513          	mv	a0,s0
   15a5c:	02e13023          	sd	a4,32(sp)
   15a60:	410020ef          	jal	17e70 <_Bfree>
   15a64:	02013703          	ld	a4,32(sp)
   15a68:	013767b3          	or	a5,a4,s3
   15a6c:	00079663          	bnez	a5,15a78 <_dtoa_r+0x9c4>
   15a70:	01012783          	lw	a5,16(sp)
   15a74:	24078063          	beqz	a5,15cb4 <_dtoa_r+0xc00>
   15a78:	260ac463          	bltz	s5,15ce0 <_dtoa_r+0xc2c>
   15a7c:	013aeab3          	or	s5,s5,s3
   15a80:	000a9663          	bnez	s5,15a8c <_dtoa_r+0x9d8>
   15a84:	01012783          	lw	a5,16(sp)
   15a88:	24078c63          	beqz	a5,15ce0 <_dtoa_r+0xc2c>
   15a8c:	5ee04263          	bgtz	a4,16070 <_dtoa_r+0xfbc>
   15a90:	001c8c93          	addi	s9,s9,1
   15a94:	ffac8fa3          	sb	s10,-1(s9)
   15a98:	5f948463          	beq	s1,s9,16080 <_dtoa_r+0xfcc>
   15a9c:	00090593          	mv	a1,s2
   15aa0:	00000693          	li	a3,0
   15aa4:	00a00613          	li	a2,10
   15aa8:	00040513          	mv	a0,s0
   15aac:	3e8020ef          	jal	17e94 <__multadd>
   15ab0:	00050913          	mv	s2,a0
   15ab4:	00000693          	li	a3,0
   15ab8:	00a00613          	li	a2,10
   15abc:	000a0593          	mv	a1,s4
   15ac0:	00040513          	mv	a0,s0
   15ac4:	27ba0463          	beq	s4,s11,15d2c <_dtoa_r+0xc78>
   15ac8:	3cc020ef          	jal	17e94 <__multadd>
   15acc:	000d8593          	mv	a1,s11
   15ad0:	00050a13          	mv	s4,a0
   15ad4:	00000693          	li	a3,0
   15ad8:	00a00613          	li	a2,10
   15adc:	00040513          	mv	a0,s0
   15ae0:	3b4020ef          	jal	17e94 <__multadd>
   15ae4:	00050d93          	mv	s11,a0
   15ae8:	f0dff06f          	j	159f4 <_dtoa_r+0x940>
   15aec:	01c00793          	li	a5,28
   15af0:	00f8083b          	addw	a6,a6,a5
   15af4:	00f484bb          	addw	s1,s1,a5
   15af8:	00fd8dbb          	addw	s11,s11,a5
   15afc:	e6dff06f          	j	15968 <_dtoa_r+0x8b4>
   15b00:	00813483          	ld	s1,8(sp)
   15b04:	00100993          	li	s3,1
   15b08:	0100006f          	j	15b18 <_dtoa_r+0xa64>
   15b0c:	388020ef          	jal	17e94 <__multadd>
   15b10:	00050913          	mv	s2,a0
   15b14:	0019899b          	addiw	s3,s3,1
   15b18:	000c0593          	mv	a1,s8
   15b1c:	00090513          	mv	a0,s2
   15b20:	ba8ff0ef          	jal	14ec8 <quorem>
   15b24:	03050d1b          	addiw	s10,a0,48
   15b28:	00148493          	addi	s1,s1,1
   15b2c:	ffa48fa3          	sb	s10,-1(s1)
   15b30:	00000693          	li	a3,0
   15b34:	00a00613          	li	a2,10
   15b38:	00090593          	mv	a1,s2
   15b3c:	00040513          	mv	a0,s0
   15b40:	fd59c6e3          	blt	s3,s5,15b0c <_dtoa_r+0xa58>
   15b44:	00000993          	li	s3,0
   15b48:	00090593          	mv	a1,s2
   15b4c:	00100613          	li	a2,1
   15b50:	00040513          	mv	a0,s0
   15b54:	209020ef          	jal	1855c <__lshift>
   15b58:	000c0593          	mv	a1,s8
   15b5c:	02a13023          	sd	a0,32(sp)
   15b60:	35d020ef          	jal	186bc <__mcmp>
   15b64:	34a05463          	blez	a0,15eac <_dtoa_r+0xdf8>
   15b68:	fff4c703          	lbu	a4,-1(s1)
   15b6c:	03900693          	li	a3,57
   15b70:	0140006f          	j	15b84 <_dtoa_r+0xad0>
   15b74:	00813703          	ld	a4,8(sp)
   15b78:	26e78a63          	beq	a5,a4,15dec <_dtoa_r+0xd38>
   15b7c:	fff7c703          	lbu	a4,-1(a5)
   15b80:	00078493          	mv	s1,a5
   15b84:	fff48793          	addi	a5,s1,-1
   15b88:	fed706e3          	beq	a4,a3,15b74 <_dtoa_r+0xac0>
   15b8c:	0017071b          	addiw	a4,a4,1
   15b90:	00e78023          	sb	a4,0(a5)
   15b94:	000c0593          	mv	a1,s8
   15b98:	00040513          	mv	a0,s0
   15b9c:	2d4020ef          	jal	17e70 <_Bfree>
   15ba0:	9e0a0ae3          	beqz	s4,15594 <_dtoa_r+0x4e0>
   15ba4:	00098a63          	beqz	s3,15bb8 <_dtoa_r+0xb04>
   15ba8:	01498863          	beq	s3,s4,15bb8 <_dtoa_r+0xb04>
   15bac:	00098593          	mv	a1,s3
   15bb0:	00040513          	mv	a0,s0
   15bb4:	2bc020ef          	jal	17e70 <_Bfree>
   15bb8:	000a0593          	mv	a1,s4
   15bbc:	00040513          	mv	a0,s0
   15bc0:	2b0020ef          	jal	17e70 <_Bfree>
   15bc4:	9d1ff06f          	j	15594 <_dtoa_r+0x4e0>
   15bc8:	000c0593          	mv	a1,s8
   15bcc:	00090513          	mv	a0,s2
   15bd0:	2ed020ef          	jal	186bc <__mcmp>
   15bd4:	dc0556e3          	bgez	a0,159a0 <_dtoa_r+0x8ec>
   15bd8:	00090593          	mv	a1,s2
   15bdc:	00000693          	li	a3,0
   15be0:	00a00613          	li	a2,10
   15be4:	00040513          	mv	a0,s0
   15be8:	2ac020ef          	jal	17e94 <__multadd>
   15bec:	01012783          	lw	a5,16(sp)
   15bf0:	00050913          	mv	s2,a0
   15bf4:	fffb8b9b          	addiw	s7,s7,-1
   15bf8:	56079063          	bnez	a5,16158 <_dtoa_r+0x10a4>
   15bfc:	03412783          	lw	a5,52(sp)
   15c00:	00078a93          	mv	s5,a5
   15c04:	eef04ee3          	bgtz	a5,15b00 <_dtoa_r+0xa4c>
   15c08:	00200793          	li	a5,2
   15c0c:	5937c063          	blt	a5,s3,1618c <_dtoa_r+0x10d8>
   15c10:	000c0593          	mv	a1,s8
   15c14:	ab4ff0ef          	jal	14ec8 <quorem>
   15c18:	00813783          	ld	a5,8(sp)
   15c1c:	03050d1b          	addiw	s10,a0,48
   15c20:	00178493          	addi	s1,a5,1
   15c24:	ffa48fa3          	sb	s10,-1(s1)
   15c28:	f1dff06f          	j	15b44 <_dtoa_r+0xa90>
   15c2c:	000d8793          	mv	a5,s11
   15c30:	b79ff06f          	j	157a8 <_dtoa_r+0x6f4>
   15c34:	02012023          	sw	zero,32(sp)
   15c38:	c75ff06f          	j	158ac <_dtoa_r+0x7f8>
   15c3c:	00100793          	li	a5,1
   15c40:	00f12823          	sw	a5,16(sp)
   15c44:	0f905c63          	blez	s9,15d3c <_dtoa_r+0xc88>
   15c48:	000c8513          	mv	a0,s9
   15c4c:	000c8493          	mv	s1,s9
   15c50:	03912a23          	sw	s9,52(sp)
   15c54:	000c8a93          	mv	s5,s9
   15c58:	f3cff06f          	j	15394 <_dtoa_r+0x2e0>
   15c5c:	a1504ce3          	bgtz	s5,15674 <_dtoa_r+0x5c0>
   15c60:	1e0a9e63          	bnez	s5,15e5c <_dtoa_r+0xda8>
   15c64:	000247b7          	lui	a5,0x24
   15c68:	4c07b787          	fld	fa5,1216(a5) # 244c0 <mask+0x40>
   15c6c:	00000c13          	li	s8,0
   15c70:	00000a13          	li	s4,0
   15c74:	12f6f6d3          	fmul.d	fa3,fa3,fa5
   15c78:	f20d07d3          	fmv.d.x	fa5,s10
   15c7c:	a2d78753          	fle.d	a4,fa5,fa3
   15c80:	14070a63          	beqz	a4,15dd4 <_dtoa_r+0xd20>
   15c84:	00813483          	ld	s1,8(sp)
   15c88:	fffccb93          	not	s7,s9
   15c8c:	000c0593          	mv	a1,s8
   15c90:	00040513          	mv	a0,s0
   15c94:	1dc020ef          	jal	17e70 <_Bfree>
   15c98:	8e0a0ee3          	beqz	s4,15594 <_dtoa_r+0x4e0>
   15c9c:	f1dff06f          	j	15bb8 <_dtoa_r+0xb04>
   15ca0:	3e090c63          	beqz	s2,16098 <_dtoa_r+0xfe4>
   15ca4:	4337879b          	addiw	a5,a5,1075
   15ca8:	000c0693          	mv	a3,s8
   15cac:	00080493          	mv	s1,a6
   15cb0:	abdff06f          	j	1576c <_dtoa_r+0x6b8>
   15cb4:	03900793          	li	a5,57
   15cb8:	04fd0a63          	beq	s10,a5,15d0c <_dtoa_r+0xc58>
   15cbc:	01505663          	blez	s5,15cc8 <_dtoa_r+0xc14>
   15cc0:	03012783          	lw	a5,48(sp)
   15cc4:	03178d1b          	addiw	s10,a5,49
   15cc8:	000a0993          	mv	s3,s4
   15ccc:	001c8493          	addi	s1,s9,1
   15cd0:	01ac8023          	sb	s10,0(s9)
   15cd4:	000d8a13          	mv	s4,s11
   15cd8:	03213023          	sd	s2,32(sp)
   15cdc:	eb9ff06f          	j	15b94 <_dtoa_r+0xae0>
   15ce0:	fee054e3          	blez	a4,15cc8 <_dtoa_r+0xc14>
   15ce4:	00090593          	mv	a1,s2
   15ce8:	00100613          	li	a2,1
   15cec:	00040513          	mv	a0,s0
   15cf0:	06d020ef          	jal	1855c <__lshift>
   15cf4:	000c0593          	mv	a1,s8
   15cf8:	00050913          	mv	s2,a0
   15cfc:	1c1020ef          	jal	186bc <__mcmp>
   15d00:	44a05063          	blez	a0,16140 <_dtoa_r+0x108c>
   15d04:	03900793          	li	a5,57
   15d08:	fafd1ce3          	bne	s10,a5,15cc0 <_dtoa_r+0xc0c>
   15d0c:	03900793          	li	a5,57
   15d10:	000a0993          	mv	s3,s4
   15d14:	001c8493          	addi	s1,s9,1
   15d18:	00fc8023          	sb	a5,0(s9)
   15d1c:	000d8a13          	mv	s4,s11
   15d20:	03213023          	sd	s2,32(sp)
   15d24:	03900713          	li	a4,57
   15d28:	e45ff06f          	j	15b6c <_dtoa_r+0xab8>
   15d2c:	168020ef          	jal	17e94 <__multadd>
   15d30:	00050a13          	mv	s4,a0
   15d34:	00050d93          	mv	s11,a0
   15d38:	cbdff06f          	j	159f4 <_dtoa_r+0x940>
   15d3c:	00100493          	li	s1,1
   15d40:	02912a23          	sw	s1,52(sp)
   15d44:	00048a93          	mv	s5,s1
   15d48:	00048c93          	mv	s9,s1
   15d4c:	06042423          	sw	zero,104(s0)
   15d50:	00000593          	li	a1,0
   15d54:	e74ff06f          	j	153c8 <_dtoa_r+0x314>
   15d58:	00012823          	sw	zero,16(sp)
   15d5c:	00200793          	li	a5,2
   15d60:	eef982e3          	beq	s3,a5,15c44 <_dtoa_r+0xb90>
   15d64:	06042423          	sw	zero,104(s0)
   15d68:	00000593          	li	a1,0
   15d6c:	00040513          	mv	a0,s0
   15d70:	03013c23          	sd	a6,56(sp)
   15d74:	050020ef          	jal	17dc4 <_Balloc>
   15d78:	fff00a93          	li	s5,-1
   15d7c:	00100793          	li	a5,1
   15d80:	00a13423          	sd	a0,8(sp)
   15d84:	06a43023          	sd	a0,96(s0)
   15d88:	03512a23          	sw	s5,52(sp)
   15d8c:	00000c93          	li	s9,0
   15d90:	00f12823          	sw	a5,16(sp)
   15d94:	03813803          	ld	a6,56(sp)
   15d98:	8b5ff06f          	j	1564c <_dtoa_r+0x598>
   15d9c:	00200793          	li	a5,2
   15da0:	c137d2e3          	ble	s3,a5,159a4 <_dtoa_r+0x8f0>
   15da4:	300a9663          	bnez	s5,160b0 <_dtoa_r+0xffc>
   15da8:	000c0593          	mv	a1,s8
   15dac:	00000693          	li	a3,0
   15db0:	00500613          	li	a2,5
   15db4:	00040513          	mv	a0,s0
   15db8:	0dc020ef          	jal	17e94 <__multadd>
   15dbc:	00050593          	mv	a1,a0
   15dc0:	00050c13          	mv	s8,a0
   15dc4:	00090513          	mv	a0,s2
   15dc8:	0f5020ef          	jal	186bc <__mcmp>
   15dcc:	03213023          	sd	s2,32(sp)
   15dd0:	eaa05ae3          	blez	a0,15c84 <_dtoa_r+0xbd0>
   15dd4:	00813703          	ld	a4,8(sp)
   15dd8:	03100793          	li	a5,49
   15ddc:	001b8b9b          	addiw	s7,s7,1
   15de0:	00170493          	addi	s1,a4,1
   15de4:	00f70023          	sb	a5,0(a4)
   15de8:	ea5ff06f          	j	15c8c <_dtoa_r+0xbd8>
   15dec:	00813703          	ld	a4,8(sp)
   15df0:	03100793          	li	a5,49
   15df4:	001b8b9b          	addiw	s7,s7,1
   15df8:	00f70023          	sb	a5,0(a4)
   15dfc:	d99ff06f          	j	15b94 <_dtoa_r+0xae0>
   15e00:	00012823          	sw	zero,16(sp)
   15e04:	d78ff06f          	j	1537c <_dtoa_r+0x2c8>
   15e08:	000247b7          	lui	a5,0x24
   15e0c:	d20706d3          	fcvt.d.w	fa3,a4
   15e10:	4b87b707          	fld	fa4,1208(a5) # 244b8 <mask+0x38>
   15e14:	fcc006b7          	lui	a3,0xfcc00
   15e18:	72d7f743          	fmadd.d	fa4,fa5,fa3,fa4
   15e1c:	e2070753          	fmv.x.d	a4,fa4
   15e20:	42075793          	srai	a5,a4,0x20
   15e24:	00d787bb          	addw	a5,a5,a3
   15e28:	02071713          	slli	a4,a4,0x20
   15e2c:	02079793          	slli	a5,a5,0x20
   15e30:	02075713          	srli	a4,a4,0x20
   15e34:	00f76733          	or	a4,a4,a5
   15e38:	000247b7          	lui	a5,0x24
   15e3c:	4c07b707          	fld	fa4,1216(a5) # 244c0 <mask+0x40>
   15e40:	f20706d3          	fmv.d.x	fa3,a4
   15e44:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
   15e48:	a2f697d3          	flt.d	a5,fa3,fa5
   15e4c:	16079463          	bnez	a5,15fb4 <_dtoa_r+0xf00>
   15e50:	22d69753          	fneg.d	fa4,fa3
   15e54:	a2e797d3          	flt.d	a5,fa5,fa4
   15e58:	06078e63          	beqz	a5,15ed4 <_dtoa_r+0xe20>
   15e5c:	00000c13          	li	s8,0
   15e60:	00000a13          	li	s4,0
   15e64:	e21ff06f          	j	15c84 <_dtoa_r+0xbd0>
   15e68:	00090593          	mv	a1,s2
   15e6c:	000c0613          	mv	a2,s8
   15e70:	00040513          	mv	a0,s0
   15e74:	03013023          	sd	a6,32(sp)
   15e78:	5ac020ef          	jal	18424 <__pow5mult>
   15e7c:	00050913          	mv	s2,a0
   15e80:	02013803          	ld	a6,32(sp)
   15e84:	9b1ff06f          	j	15834 <_dtoa_r+0x780>
   15e88:	00813503          	ld	a0,8(sp)
   15e8c:	af4ff06f          	j	15180 <_dtoa_r+0xcc>
   15e90:	02812783          	lw	a5,40(sp)
   15e94:	41868c3b          	subw	s8,a3,s8
   15e98:	018787bb          	addw	a5,a5,s8
   15e9c:	02f12423          	sw	a5,40(sp)
   15ea0:	00068c13          	mv	s8,a3
   15ea4:	00000693          	li	a3,0
   15ea8:	8b9ff06f          	j	15760 <_dtoa_r+0x6ac>
   15eac:	00051663          	bnez	a0,15eb8 <_dtoa_r+0xe04>
   15eb0:	001d7d13          	andi	s10,s10,1
   15eb4:	ca0d1ae3          	bnez	s10,15b68 <_dtoa_r+0xab4>
   15eb8:	03000693          	li	a3,48
   15ebc:	0080006f          	j	15ec4 <_dtoa_r+0xe10>
   15ec0:	00070493          	mv	s1,a4
   15ec4:	fff4c783          	lbu	a5,-1(s1)
   15ec8:	fff48713          	addi	a4,s1,-1
   15ecc:	fed78ae3          	beq	a5,a3,15ec0 <_dtoa_r+0xe0c>
   15ed0:	cc5ff06f          	j	15b94 <_dtoa_r+0xae0>
   15ed4:	03813d03          	ld	s10,56(sp)
   15ed8:	f74ff06f          	j	1564c <_dtoa_r+0x598>
   15edc:	a2f6a753          	feq.d	a4,fa3,fa5
   15ee0:	00068493          	mv	s1,a3
   15ee4:	ea070863          	beqz	a4,15594 <_dtoa_r+0x4e0>
   15ee8:	0017f793          	andi	a5,a5,1
   15eec:	ea078463          	beqz	a5,15594 <_dtoa_r+0x4e0>
   15ef0:	fff6c783          	lbu	a5,-1(a3) # fffffffffcbfffff <_end+0xfffffffffcbd9207>
   15ef4:	825ff06f          	j	15718 <_dtoa_r+0x664>
   15ef8:	417007bb          	negw	a5,s7
   15efc:	03813787          	fld	fa5,56(sp)
   15f00:	00200713          	li	a4,2
   15f04:	d6078063          	beqz	a5,15464 <_dtoa_r+0x3b0>
   15f08:	00f7f693          	andi	a3,a5,15
   15f0c:	00021637          	lui	a2,0x21
   15f10:	00369693          	slli	a3,a3,0x3
   15f14:	e9860613          	addi	a2,a2,-360 # 20e98 <__mprec_tens>
   15f18:	00c686b3          	add	a3,a3,a2
   15f1c:	0006b787          	fld	fa5,0(a3)
   15f20:	03813707          	fld	fa4,56(sp)
   15f24:	4047d79b          	sraiw	a5,a5,0x4
   15f28:	12f777d3          	fmul.d	fa5,fa4,fa5
   15f2c:	d2078c63          	beqz	a5,15464 <_dtoa_r+0x3b0>
   15f30:	000216b7          	lui	a3,0x21
   15f34:	f8868693          	addi	a3,a3,-120 # 20f88 <__mprec_bigtens>
   15f38:	0017f613          	andi	a2,a5,1
   15f3c:	4017d79b          	sraiw	a5,a5,0x1
   15f40:	00060863          	beqz	a2,15f50 <_dtoa_r+0xe9c>
   15f44:	0006b707          	fld	fa4,0(a3)
   15f48:	0017071b          	addiw	a4,a4,1
   15f4c:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   15f50:	00868693          	addi	a3,a3,8
   15f54:	fe0792e3          	bnez	a5,15f38 <_dtoa_r+0xe84>
   15f58:	d0cff06f          	j	15464 <_dtoa_r+0x3b0>
   15f5c:	00813683          	ld	a3,8(sp)
   15f60:	03000793          	li	a5,48
   15f64:	001b8b9b          	addiw	s7,s7,1
   15f68:	00f68023          	sb	a5,0(a3)
   15f6c:	fff4c783          	lbu	a5,-1(s1)
   15f70:	fc8ff06f          	j	15738 <_dtoa_r+0x684>
   15f74:	008a2583          	lw	a1,8(s4)
   15f78:	00040513          	mv	a0,s0
   15f7c:	649010ef          	jal	17dc4 <_Balloc>
   15f80:	014a2603          	lw	a2,20(s4)
   15f84:	00050493          	mv	s1,a0
   15f88:	010a0593          	addi	a1,s4,16
   15f8c:	00260613          	addi	a2,a2,2
   15f90:	00261613          	slli	a2,a2,0x2
   15f94:	01050513          	addi	a0,a0,16
   15f98:	311010ef          	jal	17aa8 <memcpy>
   15f9c:	00100613          	li	a2,1
   15fa0:	00048593          	mv	a1,s1
   15fa4:	00040513          	mv	a0,s0
   15fa8:	5b4020ef          	jal	1855c <__lshift>
   15fac:	00050d93          	mv	s11,a0
   15fb0:	a21ff06f          	j	159d0 <_dtoa_r+0x91c>
   15fb4:	00000c13          	li	s8,0
   15fb8:	00000a13          	li	s4,0
   15fbc:	e19ff06f          	j	15dd4 <_dtoa_r+0xd20>
   15fc0:	fff6079b          	addiw	a5,a2,-1
   15fc4:	00021537          	lui	a0,0x21
   15fc8:	c20795d3          	fcvt.w.d	a1,fa5,rtz
   15fcc:	00379793          	slli	a5,a5,0x3
   15fd0:	e9850513          	addi	a0,a0,-360 # 20e98 <__mprec_tens>
   15fd4:	00a787b3          	add	a5,a5,a0
   15fd8:	0007b707          	fld	fa4,0(a5)
   15fdc:	00813783          	ld	a5,8(sp)
   15fe0:	d20586d3          	fcvt.d.w	fa3,a1
   15fe4:	f2070653          	fmv.d.x	fa2,a4
   15fe8:	0305859b          	addiw	a1,a1,48
   15fec:	00b78023          	sb	a1,0(a5)
   15ff0:	00178493          	addi	s1,a5,1
   15ff4:	00100793          	li	a5,1
   15ff8:	12c77653          	fmul.d	fa2,fa4,fa2
   15ffc:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   16000:	04f60863          	beq	a2,a5,16050 <_dtoa_r+0xf9c>
   16004:	ffe6061b          	addiw	a2,a2,-2
   16008:	000247b7          	lui	a5,0x24
   1600c:	02061593          	slli	a1,a2,0x20
   16010:	4b07b687          	fld	fa3,1200(a5) # 244b0 <mask+0x30>
   16014:	00813783          	ld	a5,8(sp)
   16018:	0205d593          	srli	a1,a1,0x20
   1601c:	00258513          	addi	a0,a1,2
   16020:	00a78533          	add	a0,a5,a0
   16024:	00048613          	mv	a2,s1
   16028:	12d7f7d3          	fmul.d	fa5,fa5,fa3
   1602c:	00160613          	addi	a2,a2,1
   16030:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   16034:	d2078753          	fcvt.d.w	fa4,a5
   16038:	0307879b          	addiw	a5,a5,48
   1603c:	fef60fa3          	sb	a5,-1(a2)
   16040:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
   16044:	fea612e3          	bne	a2,a0,16028 <_dtoa_r+0xf74>
   16048:	00158593          	addi	a1,a1,1
   1604c:	00b484b3          	add	s1,s1,a1
   16050:	000247b7          	lui	a5,0x24
   16054:	4c87b707          	fld	fa4,1224(a5) # 244c8 <mask+0x48>
   16058:	02e676d3          	fadd.d	fa3,fa2,fa4
   1605c:	a2f697d3          	flt.d	a5,fa3,fa5
   16060:	0a078663          	beqz	a5,1610c <_dtoa_r+0x1058>
   16064:	fff4c783          	lbu	a5,-1(s1)
   16068:	00068b93          	mv	s7,a3
   1606c:	eacff06f          	j	15718 <_dtoa_r+0x664>
   16070:	03900793          	li	a5,57
   16074:	c8fd0ce3          	beq	s10,a5,15d0c <_dtoa_r+0xc58>
   16078:	001d0d1b          	addiw	s10,s10,1
   1607c:	c4dff06f          	j	15cc8 <_dtoa_r+0xc14>
   16080:	000a0993          	mv	s3,s4
   16084:	000d8a13          	mv	s4,s11
   16088:	ac1ff06f          	j	15b48 <_dtoa_r+0xa94>
   1608c:	415804bb          	subw	s1,a6,s5
   16090:	00000793          	li	a5,0
   16094:	ed8ff06f          	j	1576c <_dtoa_r+0x6b8>
   16098:	05812603          	lw	a2,88(sp)
   1609c:	03600793          	li	a5,54
   160a0:	000c0693          	mv	a3,s8
   160a4:	40c787bb          	subw	a5,a5,a2
   160a8:	00080493          	mv	s1,a6
   160ac:	ec0ff06f          	j	1576c <_dtoa_r+0x6b8>
   160b0:	03213023          	sd	s2,32(sp)
   160b4:	bd1ff06f          	j	15c84 <_dtoa_r+0xbd0>
   160b8:	d40a88e3          	beqz	s5,15e08 <_dtoa_r+0xd54>
   160bc:	03412603          	lw	a2,52(sp)
   160c0:	e0c05ae3          	blez	a2,15ed4 <_dtoa_r+0xe20>
   160c4:	000247b7          	lui	a5,0x24
   160c8:	4b07b707          	fld	fa4,1200(a5) # 244b0 <mask+0x30>
   160cc:	0017071b          	addiw	a4,a4,1
   160d0:	000247b7          	lui	a5,0x24
   160d4:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   160d8:	d20706d3          	fcvt.d.w	fa3,a4
   160dc:	4b87b707          	fld	fa4,1208(a5) # 244b8 <mask+0x38>
   160e0:	fcc005b7          	lui	a1,0xfcc00
   160e4:	fffb869b          	addiw	a3,s7,-1
   160e8:	72d7f743          	fmadd.d	fa4,fa5,fa3,fa4
   160ec:	e2070753          	fmv.x.d	a4,fa4
   160f0:	42075793          	srai	a5,a4,0x20
   160f4:	00b787bb          	addw	a5,a5,a1
   160f8:	02071713          	slli	a4,a4,0x20
   160fc:	02079793          	slli	a5,a5,0x20
   16100:	02075713          	srli	a4,a4,0x20
   16104:	00f76733          	or	a4,a4,a5
   16108:	bb0ff06f          	j	154b8 <_dtoa_r+0x404>
   1610c:	0ac77753          	fsub.d	fa4,fa4,fa2
   16110:	03000613          	li	a2,48
   16114:	a2e797d3          	flt.d	a5,fa5,fa4
   16118:	00079663          	bnez	a5,16124 <_dtoa_r+0x1070>
   1611c:	db9ff06f          	j	15ed4 <_dtoa_r+0xe20>
   16120:	00070493          	mv	s1,a4
   16124:	fff4c783          	lbu	a5,-1(s1)
   16128:	fff48713          	addi	a4,s1,-1
   1612c:	fec78ae3          	beq	a5,a2,16120 <_dtoa_r+0x106c>
   16130:	00068b93          	mv	s7,a3
   16134:	c60ff06f          	j	15594 <_dtoa_r+0x4e0>
   16138:	00068b93          	mv	s7,a3
   1613c:	ddcff06f          	j	15718 <_dtoa_r+0x664>
   16140:	b80514e3          	bnez	a0,15cc8 <_dtoa_r+0xc14>
   16144:	001d7793          	andi	a5,s10,1
   16148:	b80780e3          	beqz	a5,15cc8 <_dtoa_r+0xc14>
   1614c:	bb9ff06f          	j	15d04 <_dtoa_r+0xc50>
   16150:	00048693          	mv	a3,s1
   16154:	db0ff06f          	j	15704 <_dtoa_r+0x650>
   16158:	000a0593          	mv	a1,s4
   1615c:	00000693          	li	a3,0
   16160:	00a00613          	li	a2,10
   16164:	00040513          	mv	a0,s0
   16168:	52d010ef          	jal	17e94 <__multadd>
   1616c:	03412783          	lw	a5,52(sp)
   16170:	00050a13          	mv	s4,a0
   16174:	00078a93          	mv	s5,a5
   16178:	82f04ae3          	bgtz	a5,159ac <_dtoa_r+0x8f8>
   1617c:	00200793          	li	a5,2
   16180:	0137c663          	blt	a5,s3,1618c <_dtoa_r+0x10d8>
   16184:	03412a83          	lw	s5,52(sp)
   16188:	825ff06f          	j	159ac <_dtoa_r+0x8f8>
   1618c:	03412a83          	lw	s5,52(sp)
   16190:	c15ff06f          	j	15da4 <_dtoa_r+0xcf0>
   16194:	00cd1713          	slli	a4,s10,0xc
   16198:	ee070263          	beqz	a4,1587c <_dtoa_r+0x7c8>
   1619c:	f94ff06f          	j	15930 <_dtoa_r+0x87c>
   161a0:	fcc68463          	beq	a3,a2,15968 <_dtoa_r+0x8b4>
   161a4:	03c00693          	li	a3,60
   161a8:	40f687bb          	subw	a5,a3,a5
   161ac:	945ff06f          	j	15af0 <_dtoa_r+0xa3c>

00000000000161b0 <__sflush_r>:
   161b0:	01059683          	lh	a3,16(a1) # fffffffffcc00010 <_end+0xfffffffffcbd9218>
   161b4:	fd010113          	addi	sp,sp,-48
   161b8:	00913c23          	sd	s1,24(sp)
   161bc:	03069713          	slli	a4,a3,0x30
   161c0:	03075713          	srli	a4,a4,0x30
   161c4:	01313423          	sd	s3,8(sp)
   161c8:	02113423          	sd	ra,40(sp)
   161cc:	02813023          	sd	s0,32(sp)
   161d0:	01213823          	sd	s2,16(sp)
   161d4:	00877793          	andi	a5,a4,8
   161d8:	00058493          	mv	s1,a1
   161dc:	00050993          	mv	s3,a0
   161e0:	0e079863          	bnez	a5,162d0 <__sflush_r+0x120>
   161e4:	000017b7          	lui	a5,0x1
   161e8:	8007879b          	addiw	a5,a5,-2048
   161ec:	00f6e7b3          	or	a5,a3,a5
   161f0:	0107979b          	slliw	a5,a5,0x10
   161f4:	0085a703          	lw	a4,8(a1)
   161f8:	4107d79b          	sraiw	a5,a5,0x10
   161fc:	00f59823          	sh	a5,16(a1)
   16200:	1ae05863          	blez	a4,163b0 <__sflush_r+0x200>
   16204:	0484b703          	ld	a4,72(s1)
   16208:	0a070463          	beqz	a4,162b0 <__sflush_r+0x100>
   1620c:	03079793          	slli	a5,a5,0x30
   16210:	0307d793          	srli	a5,a5,0x30
   16214:	0009a403          	lw	s0,0(s3)
   16218:	03379693          	slli	a3,a5,0x33
   1621c:	0009a023          	sw	zero,0(s3)
   16220:	1806de63          	bgez	a3,163bc <__sflush_r+0x20c>
   16224:	0904b603          	ld	a2,144(s1)
   16228:	0047f793          	andi	a5,a5,4
   1622c:	00078e63          	beqz	a5,16248 <__sflush_r+0x98>
   16230:	0084a683          	lw	a3,8(s1)
   16234:	0584b783          	ld	a5,88(s1)
   16238:	40d60633          	sub	a2,a2,a3
   1623c:	00078663          	beqz	a5,16248 <__sflush_r+0x98>
   16240:	0704a783          	lw	a5,112(s1)
   16244:	40f60633          	sub	a2,a2,a5
   16248:	0304b583          	ld	a1,48(s1)
   1624c:	00000693          	li	a3,0
   16250:	00098513          	mv	a0,s3
   16254:	000700e7          	jalr	a4
   16258:	fff00793          	li	a5,-1
   1625c:	0ef50c63          	beq	a0,a5,16354 <__sflush_r+0x1a4>
   16260:	0104d683          	lhu	a3,16(s1)
   16264:	fffff7b7          	lui	a5,0xfffff
   16268:	7ff7879b          	addiw	a5,a5,2047
   1626c:	0184b703          	ld	a4,24(s1)
   16270:	00f6f7b3          	and	a5,a3,a5
   16274:	0107979b          	slliw	a5,a5,0x10
   16278:	4107d79b          	sraiw	a5,a5,0x10
   1627c:	00e4b023          	sd	a4,0(s1)
   16280:	00f49823          	sh	a5,16(s1)
   16284:	0004a423          	sw	zero,8(s1)
   16288:	03379713          	slli	a4,a5,0x33
   1628c:	10074e63          	bltz	a4,163a8 <__sflush_r+0x1f8>
   16290:	0584b583          	ld	a1,88(s1)
   16294:	0089a023          	sw	s0,0(s3)
   16298:	00058c63          	beqz	a1,162b0 <__sflush_r+0x100>
   1629c:	07448793          	addi	a5,s1,116
   162a0:	00f58663          	beq	a1,a5,162ac <__sflush_r+0xfc>
   162a4:	00098513          	mv	a0,s3
   162a8:	0e5000ef          	jal	16b8c <_free_r>
   162ac:	0404bc23          	sd	zero,88(s1)
   162b0:	00000513          	li	a0,0
   162b4:	02813083          	ld	ra,40(sp)
   162b8:	02013403          	ld	s0,32(sp)
   162bc:	01813483          	ld	s1,24(sp)
   162c0:	01013903          	ld	s2,16(sp)
   162c4:	00813983          	ld	s3,8(sp)
   162c8:	03010113          	addi	sp,sp,48
   162cc:	00008067          	ret
   162d0:	0185b903          	ld	s2,24(a1)
   162d4:	fc090ee3          	beqz	s2,162b0 <__sflush_r+0x100>
   162d8:	0005b403          	ld	s0,0(a1)
   162dc:	00377713          	andi	a4,a4,3
   162e0:	0125b023          	sd	s2,0(a1)
   162e4:	4124043b          	subw	s0,s0,s2
   162e8:	00000793          	li	a5,0
   162ec:	00071463          	bnez	a4,162f4 <__sflush_r+0x144>
   162f0:	0205a783          	lw	a5,32(a1)
   162f4:	00f4a623          	sw	a5,12(s1)
   162f8:	00804863          	bgtz	s0,16308 <__sflush_r+0x158>
   162fc:	fb5ff06f          	j	162b0 <__sflush_r+0x100>
   16300:	00a90933          	add	s2,s2,a0
   16304:	fa8056e3          	blez	s0,162b0 <__sflush_r+0x100>
   16308:	0404b783          	ld	a5,64(s1)
   1630c:	0304b583          	ld	a1,48(s1)
   16310:	00040693          	mv	a3,s0
   16314:	00090613          	mv	a2,s2
   16318:	00098513          	mv	a0,s3
   1631c:	000780e7          	jalr	a5
   16320:	40a4043b          	subw	s0,s0,a0
   16324:	fca04ee3          	bgtz	a0,16300 <__sflush_r+0x150>
   16328:	0104d783          	lhu	a5,16(s1)
   1632c:	02813083          	ld	ra,40(sp)
   16330:	fff00513          	li	a0,-1
   16334:	0407e793          	ori	a5,a5,64
   16338:	00f49823          	sh	a5,16(s1)
   1633c:	02013403          	ld	s0,32(sp)
   16340:	01813483          	ld	s1,24(sp)
   16344:	01013903          	ld	s2,16(sp)
   16348:	00813983          	ld	s3,8(sp)
   1634c:	03010113          	addi	sp,sp,48
   16350:	00008067          	ret
   16354:	0009a703          	lw	a4,0(s3)
   16358:	01d00793          	li	a5,29
   1635c:	fce7e6e3          	bltu	a5,a4,16328 <__sflush_r+0x178>
   16360:	204007b7          	lui	a5,0x20400
   16364:	00178793          	addi	a5,a5,1 # 20400001 <_end+0x203d9209>
   16368:	00e7d7b3          	srl	a5,a5,a4
   1636c:	0017f793          	andi	a5,a5,1
   16370:	fa078ce3          	beqz	a5,16328 <__sflush_r+0x178>
   16374:	0104d603          	lhu	a2,16(s1)
   16378:	fffff7b7          	lui	a5,0xfffff
   1637c:	7ff7879b          	addiw	a5,a5,2047
   16380:	0184b683          	ld	a3,24(s1)
   16384:	00f677b3          	and	a5,a2,a5
   16388:	0107979b          	slliw	a5,a5,0x10
   1638c:	4107d79b          	sraiw	a5,a5,0x10
   16390:	00d4b023          	sd	a3,0(s1)
   16394:	00f49823          	sh	a5,16(s1)
   16398:	0004a423          	sw	zero,8(s1)
   1639c:	03379693          	slli	a3,a5,0x33
   163a0:	ee06d8e3          	bgez	a3,16290 <__sflush_r+0xe0>
   163a4:	ee0716e3          	bnez	a4,16290 <__sflush_r+0xe0>
   163a8:	08a4b823          	sd	a0,144(s1)
   163ac:	ee5ff06f          	j	16290 <__sflush_r+0xe0>
   163b0:	0705a703          	lw	a4,112(a1)
   163b4:	e4e048e3          	bgtz	a4,16204 <__sflush_r+0x54>
   163b8:	ef9ff06f          	j	162b0 <__sflush_r+0x100>
   163bc:	0304b583          	ld	a1,48(s1)
   163c0:	00000613          	li	a2,0
   163c4:	00100693          	li	a3,1
   163c8:	00098513          	mv	a0,s3
   163cc:	000700e7          	jalr	a4
   163d0:	fff00793          	li	a5,-1
   163d4:	00050613          	mv	a2,a0
   163d8:	00f50863          	beq	a0,a5,163e8 <__sflush_r+0x238>
   163dc:	0104d783          	lhu	a5,16(s1)
   163e0:	0484b703          	ld	a4,72(s1)
   163e4:	e45ff06f          	j	16228 <__sflush_r+0x78>
   163e8:	0009a783          	lw	a5,0(s3)
   163ec:	fe0788e3          	beqz	a5,163dc <__sflush_r+0x22c>
   163f0:	01d00713          	li	a4,29
   163f4:	00e78663          	beq	a5,a4,16400 <__sflush_r+0x250>
   163f8:	01600713          	li	a4,22
   163fc:	00e79863          	bne	a5,a4,1640c <__sflush_r+0x25c>
   16400:	0089a023          	sw	s0,0(s3)
   16404:	00000513          	li	a0,0
   16408:	eadff06f          	j	162b4 <__sflush_r+0x104>
   1640c:	0104d783          	lhu	a5,16(s1)
   16410:	0407e793          	ori	a5,a5,64
   16414:	00f49823          	sh	a5,16(s1)
   16418:	e9dff06f          	j	162b4 <__sflush_r+0x104>

000000000001641c <_fflush_r>:
   1641c:	fe010113          	addi	sp,sp,-32
   16420:	00813823          	sd	s0,16(sp)
   16424:	00113c23          	sd	ra,24(sp)
   16428:	00050413          	mv	s0,a0
   1642c:	00050663          	beqz	a0,16438 <_fflush_r+0x1c>
   16430:	05052783          	lw	a5,80(a0)
   16434:	02078a63          	beqz	a5,16468 <_fflush_r+0x4c>
   16438:	01059783          	lh	a5,16(a1)
   1643c:	00079c63          	bnez	a5,16454 <_fflush_r+0x38>
   16440:	01813083          	ld	ra,24(sp)
   16444:	00000513          	li	a0,0
   16448:	01013403          	ld	s0,16(sp)
   1644c:	02010113          	addi	sp,sp,32
   16450:	00008067          	ret
   16454:	00040513          	mv	a0,s0
   16458:	01813083          	ld	ra,24(sp)
   1645c:	01013403          	ld	s0,16(sp)
   16460:	02010113          	addi	sp,sp,32
   16464:	d4dff06f          	j	161b0 <__sflush_r>
   16468:	00b13423          	sd	a1,8(sp)
   1646c:	35c000ef          	jal	167c8 <__sinit>
   16470:	00813583          	ld	a1,8(sp)
   16474:	fc5ff06f          	j	16438 <_fflush_r+0x1c>

0000000000016478 <fflush>:
   16478:	00050593          	mv	a1,a0
   1647c:	00050663          	beqz	a0,16488 <fflush+0x10>
   16480:	8181b503          	ld	a0,-2024(gp) # 24438 <_impure_ptr>
   16484:	f99ff06f          	j	1641c <_fflush_r>
   16488:	8101b503          	ld	a0,-2032(gp) # 24430 <_global_impure_ptr>
   1648c:	000165b7          	lui	a1,0x16
   16490:	41c58593          	addi	a1,a1,1052 # 1641c <_fflush_r>
   16494:	76d0006f          	j	17400 <_fwalk_reent>

0000000000016498 <__fp_unlock>:
   16498:	00000513          	li	a0,0
   1649c:	00008067          	ret

00000000000164a0 <_cleanup_r>:
   164a0:	0001e5b7          	lui	a1,0x1e
   164a4:	26458593          	addi	a1,a1,612 # 1e264 <_fclose_r>
   164a8:	7590006f          	j	17400 <_fwalk_reent>

00000000000164ac <__sinit.part.1>:
   164ac:	fc010113          	addi	sp,sp,-64
   164b0:	000167b7          	lui	a5,0x16
   164b4:	02113c23          	sd	ra,56(sp)
   164b8:	02813823          	sd	s0,48(sp)
   164bc:	02913423          	sd	s1,40(sp)
   164c0:	00853403          	ld	s0,8(a0)
   164c4:	03213023          	sd	s2,32(sp)
   164c8:	01313c23          	sd	s3,24(sp)
   164cc:	01413823          	sd	s4,16(sp)
   164d0:	01513423          	sd	s5,8(sp)
   164d4:	01613023          	sd	s6,0(sp)
   164d8:	4a078793          	addi	a5,a5,1184 # 164a0 <_cleanup_r>
   164dc:	04f53c23          	sd	a5,88(a0)
   164e0:	53850713          	addi	a4,a0,1336
   164e4:	00300793          	li	a5,3
   164e8:	52e53823          	sd	a4,1328(a0)
   164ec:	52f52423          	sw	a5,1320(a0)
   164f0:	52053023          	sd	zero,1312(a0)
   164f4:	00400793          	li	a5,4
   164f8:	00050913          	mv	s2,a0
   164fc:	00f41823          	sh	a5,16(s0)
   16500:	00800613          	li	a2,8
   16504:	00000593          	li	a1,0
   16508:	00043023          	sd	zero,0(s0)
   1650c:	00042423          	sw	zero,8(s0)
   16510:	00042623          	sw	zero,12(s0)
   16514:	0a042623          	sw	zero,172(s0)
   16518:	00041923          	sh	zero,18(s0)
   1651c:	00043c23          	sd	zero,24(s0)
   16520:	02042023          	sw	zero,32(s0)
   16524:	02042423          	sw	zero,40(s0)
   16528:	0a440513          	addi	a0,s0,164
   1652c:	7bc010ef          	jal	17ce8 <memset>
   16530:	0001ab37          	lui	s6,0x1a
   16534:	01093483          	ld	s1,16(s2)
   16538:	0001aab7          	lui	s5,0x1a
   1653c:	0001aa37          	lui	s4,0x1a
   16540:	0001a9b7          	lui	s3,0x1a
   16544:	830b0b13          	addi	s6,s6,-2000 # 19830 <__sread>
   16548:	89ca8a93          	addi	s5,s5,-1892 # 1989c <__swrite>
   1654c:	90ca0a13          	addi	s4,s4,-1780 # 1990c <__sseek>
   16550:	97898993          	addi	s3,s3,-1672 # 19978 <__sclose>
   16554:	03643c23          	sd	s6,56(s0)
   16558:	05543023          	sd	s5,64(s0)
   1655c:	05443423          	sd	s4,72(s0)
   16560:	05343823          	sd	s3,80(s0)
   16564:	02843823          	sd	s0,48(s0)
   16568:	00900793          	li	a5,9
   1656c:	00f49823          	sh	a5,16(s1)
   16570:	00100793          	li	a5,1
   16574:	00f49923          	sh	a5,18(s1)
   16578:	00800613          	li	a2,8
   1657c:	00000593          	li	a1,0
   16580:	0004b023          	sd	zero,0(s1)
   16584:	0004a423          	sw	zero,8(s1)
   16588:	0004a623          	sw	zero,12(s1)
   1658c:	0a04a623          	sw	zero,172(s1)
   16590:	0004bc23          	sd	zero,24(s1)
   16594:	0204a023          	sw	zero,32(s1)
   16598:	0204a423          	sw	zero,40(s1)
   1659c:	0a448513          	addi	a0,s1,164
   165a0:	748010ef          	jal	17ce8 <memset>
   165a4:	01893403          	ld	s0,24(s2)
   165a8:	01200793          	li	a5,18
   165ac:	0364bc23          	sd	s6,56(s1)
   165b0:	0554b023          	sd	s5,64(s1)
   165b4:	0544b423          	sd	s4,72(s1)
   165b8:	0534b823          	sd	s3,80(s1)
   165bc:	0294b823          	sd	s1,48(s1)
   165c0:	00f41823          	sh	a5,16(s0)
   165c4:	00200793          	li	a5,2
   165c8:	00f41923          	sh	a5,18(s0)
   165cc:	00043023          	sd	zero,0(s0)
   165d0:	00042423          	sw	zero,8(s0)
   165d4:	00042623          	sw	zero,12(s0)
   165d8:	0a042623          	sw	zero,172(s0)
   165dc:	00043c23          	sd	zero,24(s0)
   165e0:	02042023          	sw	zero,32(s0)
   165e4:	02042423          	sw	zero,40(s0)
   165e8:	0a440513          	addi	a0,s0,164
   165ec:	00800613          	li	a2,8
   165f0:	00000593          	li	a1,0
   165f4:	6f4010ef          	jal	17ce8 <memset>
   165f8:	03813083          	ld	ra,56(sp)
   165fc:	03643c23          	sd	s6,56(s0)
   16600:	05543023          	sd	s5,64(s0)
   16604:	05443423          	sd	s4,72(s0)
   16608:	05343823          	sd	s3,80(s0)
   1660c:	02843823          	sd	s0,48(s0)
   16610:	00100793          	li	a5,1
   16614:	04f92823          	sw	a5,80(s2)
   16618:	03013403          	ld	s0,48(sp)
   1661c:	02813483          	ld	s1,40(sp)
   16620:	02013903          	ld	s2,32(sp)
   16624:	01813983          	ld	s3,24(sp)
   16628:	01013a03          	ld	s4,16(sp)
   1662c:	00813a83          	ld	s5,8(sp)
   16630:	00013b03          	ld	s6,0(sp)
   16634:	04010113          	addi	sp,sp,64
   16638:	00008067          	ret

000000000001663c <__fp_lock>:
   1663c:	00000513          	li	a0,0
   16640:	00008067          	ret

0000000000016644 <__sfmoreglue>:
   16644:	fe010113          	addi	sp,sp,-32
   16648:	fff5879b          	addiw	a5,a1,-1
   1664c:	00913423          	sd	s1,8(sp)
   16650:	0b000493          	li	s1,176
   16654:	029784b3          	mul	s1,a5,s1
   16658:	01213023          	sd	s2,0(sp)
   1665c:	00058913          	mv	s2,a1
   16660:	00813823          	sd	s0,16(sp)
   16664:	00113c23          	sd	ra,24(sp)
   16668:	0c848593          	addi	a1,s1,200
   1666c:	ef8fa0ef          	jal	10d64 <_malloc_r>
   16670:	00050413          	mv	s0,a0
   16674:	02050063          	beqz	a0,16694 <__sfmoreglue+0x50>
   16678:	01850513          	addi	a0,a0,24
   1667c:	00043023          	sd	zero,0(s0)
   16680:	01242423          	sw	s2,8(s0)
   16684:	00a43823          	sd	a0,16(s0)
   16688:	0b048613          	addi	a2,s1,176
   1668c:	00000593          	li	a1,0
   16690:	658010ef          	jal	17ce8 <memset>
   16694:	01813083          	ld	ra,24(sp)
   16698:	00040513          	mv	a0,s0
   1669c:	00813483          	ld	s1,8(sp)
   166a0:	01013403          	ld	s0,16(sp)
   166a4:	00013903          	ld	s2,0(sp)
   166a8:	02010113          	addi	sp,sp,32
   166ac:	00008067          	ret

00000000000166b0 <__sfp>:
   166b0:	fd010113          	addi	sp,sp,-48
   166b4:	01213823          	sd	s2,16(sp)
   166b8:	8101b903          	ld	s2,-2032(gp) # 24430 <_global_impure_ptr>
   166bc:	01313423          	sd	s3,8(sp)
   166c0:	02113423          	sd	ra,40(sp)
   166c4:	05092783          	lw	a5,80(s2)
   166c8:	02813023          	sd	s0,32(sp)
   166cc:	00913c23          	sd	s1,24(sp)
   166d0:	00050993          	mv	s3,a0
   166d4:	00079663          	bnez	a5,166e0 <__sfp+0x30>
   166d8:	00090513          	mv	a0,s2
   166dc:	dd1ff0ef          	jal	164ac <__sinit.part.1>
   166e0:	52090913          	addi	s2,s2,1312
   166e4:	fff00493          	li	s1,-1
   166e8:	00892783          	lw	a5,8(s2)
   166ec:	01093403          	ld	s0,16(s2)
   166f0:	fff7879b          	addiw	a5,a5,-1
   166f4:	0007da63          	bgez	a5,16708 <__sfp+0x58>
   166f8:	0840006f          	j	1677c <__sfp+0xcc>
   166fc:	fff7879b          	addiw	a5,a5,-1
   16700:	0b040413          	addi	s0,s0,176
   16704:	06978c63          	beq	a5,s1,1677c <__sfp+0xcc>
   16708:	01041703          	lh	a4,16(s0)
   1670c:	fe0718e3          	bnez	a4,166fc <__sfp+0x4c>
   16710:	fff00793          	li	a5,-1
   16714:	00f41923          	sh	a5,18(s0)
   16718:	00100793          	li	a5,1
   1671c:	00f41823          	sh	a5,16(s0)
   16720:	0a042623          	sw	zero,172(s0)
   16724:	00043023          	sd	zero,0(s0)
   16728:	00042623          	sw	zero,12(s0)
   1672c:	00042423          	sw	zero,8(s0)
   16730:	00043c23          	sd	zero,24(s0)
   16734:	02042023          	sw	zero,32(s0)
   16738:	02042423          	sw	zero,40(s0)
   1673c:	00800613          	li	a2,8
   16740:	00000593          	li	a1,0
   16744:	0a440513          	addi	a0,s0,164
   16748:	5a0010ef          	jal	17ce8 <memset>
   1674c:	00040513          	mv	a0,s0
   16750:	04043c23          	sd	zero,88(s0)
   16754:	06042023          	sw	zero,96(s0)
   16758:	06043c23          	sd	zero,120(s0)
   1675c:	08042023          	sw	zero,128(s0)
   16760:	02813083          	ld	ra,40(sp)
   16764:	02013403          	ld	s0,32(sp)
   16768:	01813483          	ld	s1,24(sp)
   1676c:	01013903          	ld	s2,16(sp)
   16770:	00813983          	ld	s3,8(sp)
   16774:	03010113          	addi	sp,sp,48
   16778:	00008067          	ret
   1677c:	00093783          	ld	a5,0(s2)
   16780:	00078663          	beqz	a5,1678c <__sfp+0xdc>
   16784:	00078913          	mv	s2,a5
   16788:	f61ff06f          	j	166e8 <__sfp+0x38>
   1678c:	00400593          	li	a1,4
   16790:	00098513          	mv	a0,s3
   16794:	eb1ff0ef          	jal	16644 <__sfmoreglue>
   16798:	00a93023          	sd	a0,0(s2)
   1679c:	00050663          	beqz	a0,167a8 <__sfp+0xf8>
   167a0:	00050913          	mv	s2,a0
   167a4:	f45ff06f          	j	166e8 <__sfp+0x38>
   167a8:	00c00793          	li	a5,12
   167ac:	00f9a023          	sw	a5,0(s3)
   167b0:	00000513          	li	a0,0
   167b4:	fadff06f          	j	16760 <__sfp+0xb0>

00000000000167b8 <_cleanup>:
   167b8:	8101b503          	ld	a0,-2032(gp) # 24430 <_global_impure_ptr>
   167bc:	0001e5b7          	lui	a1,0x1e
   167c0:	26458593          	addi	a1,a1,612 # 1e264 <_fclose_r>
   167c4:	43d0006f          	j	17400 <_fwalk_reent>

00000000000167c8 <__sinit>:
   167c8:	05052783          	lw	a5,80(a0)
   167cc:	00078463          	beqz	a5,167d4 <__sinit+0xc>
   167d0:	00008067          	ret
   167d4:	cd9ff06f          	j	164ac <__sinit.part.1>

00000000000167d8 <__sfp_lock_acquire>:
   167d8:	00008067          	ret

00000000000167dc <__sfp_lock_release>:
   167dc:	00008067          	ret

00000000000167e0 <__sinit_lock_acquire>:
   167e0:	00008067          	ret

00000000000167e4 <__sinit_lock_release>:
   167e4:	00008067          	ret

00000000000167e8 <__fp_lock_all>:
   167e8:	8181b503          	ld	a0,-2024(gp) # 24438 <_impure_ptr>
   167ec:	000165b7          	lui	a1,0x16
   167f0:	63c58593          	addi	a1,a1,1596 # 1663c <__fp_lock>
   167f4:	35d0006f          	j	17350 <_fwalk>

00000000000167f8 <__fp_unlock_all>:
   167f8:	8181b503          	ld	a0,-2024(gp) # 24438 <_impure_ptr>
   167fc:	000165b7          	lui	a1,0x16
   16800:	49858593          	addi	a1,a1,1176 # 16498 <__fp_unlock>
   16804:	34d0006f          	j	17350 <_fwalk>

0000000000016808 <_fread_r>:
   16808:	fa010113          	addi	sp,sp,-96
   1680c:	03613023          	sd	s6,32(sp)
   16810:	02c68b33          	mul	s6,a3,a2
   16814:	04113c23          	sd	ra,88(sp)
   16818:	04813823          	sd	s0,80(sp)
   1681c:	04913423          	sd	s1,72(sp)
   16820:	05213023          	sd	s2,64(sp)
   16824:	03313c23          	sd	s3,56(sp)
   16828:	03413823          	sd	s4,48(sp)
   1682c:	03513423          	sd	s5,40(sp)
   16830:	01713c23          	sd	s7,24(sp)
   16834:	01813823          	sd	s8,16(sp)
   16838:	01913423          	sd	s9,8(sp)
   1683c:	01a13023          	sd	s10,0(sp)
   16840:	1c0b0863          	beqz	s6,16a10 <_fread_r+0x208>
   16844:	00060b93          	mv	s7,a2
   16848:	00068a93          	mv	s5,a3
   1684c:	00050a13          	mv	s4,a0
   16850:	00058913          	mv	s2,a1
   16854:	00070413          	mv	s0,a4
   16858:	00050663          	beqz	a0,16864 <_fread_r+0x5c>
   1685c:	05052783          	lw	a5,80(a0)
   16860:	1c078a63          	beqz	a5,16a34 <_fread_r+0x22c>
   16864:	01041683          	lh	a3,16(s0)
   16868:	03069793          	slli	a5,a3,0x30
   1686c:	0307d793          	srli	a5,a5,0x30
   16870:	03279713          	slli	a4,a5,0x32
   16874:	02074a63          	bltz	a4,168a8 <_fread_r+0xa0>
   16878:	000027b7          	lui	a5,0x2
   1687c:	0ac42603          	lw	a2,172(s0)
   16880:	00f6e7b3          	or	a5,a3,a5
   16884:	0107979b          	slliw	a5,a5,0x10
   16888:	ffffe737          	lui	a4,0xffffe
   1688c:	4107d79b          	sraiw	a5,a5,0x10
   16890:	fff7071b          	addiw	a4,a4,-1
   16894:	00e67733          	and	a4,a2,a4
   16898:	00f41823          	sh	a5,16(s0)
   1689c:	03079793          	slli	a5,a5,0x30
   168a0:	0ae42623          	sw	a4,172(s0)
   168a4:	0307d793          	srli	a5,a5,0x30
   168a8:	00842483          	lw	s1,8(s0)
   168ac:	00048713          	mv	a4,s1
   168b0:	1604c463          	bltz	s1,16a18 <_fread_r+0x210>
   168b4:	0027f793          	andi	a5,a5,2
   168b8:	000b0993          	mv	s3,s6
   168bc:	0e078463          	beqz	a5,169a4 <_fread_r+0x19c>
   168c0:	000b0493          	mv	s1,s6
   168c4:	01677463          	bleu	s6,a4,168cc <_fread_r+0xc4>
   168c8:	00070493          	mv	s1,a4
   168cc:	00043583          	ld	a1,0(s0)
   168d0:	00048613          	mv	a2,s1
   168d4:	00090513          	mv	a0,s2
   168d8:	1d0010ef          	jal	17aa8 <memcpy>
   168dc:	00842703          	lw	a4,8(s0)
   168e0:	00043c03          	ld	s8,0(s0)
   168e4:	0004879b          	sext.w	a5,s1
   168e8:	05843583          	ld	a1,88(s0)
   168ec:	009c0c33          	add	s8,s8,s1
   168f0:	40f707bb          	subw	a5,a4,a5
   168f4:	01843023          	sd	s8,0(s0)
   168f8:	00f42423          	sw	a5,8(s0)
   168fc:	409b09b3          	sub	s3,s6,s1
   16900:	14058863          	beqz	a1,16a50 <_fread_r+0x248>
   16904:	14098863          	beqz	s3,16a54 <_fread_r+0x24c>
   16908:	07440793          	addi	a5,s0,116
   1690c:	00f58863          	beq	a1,a5,1691c <_fread_r+0x114>
   16910:	000a0513          	mv	a0,s4
   16914:	278000ef          	jal	16b8c <_free_r>
   16918:	00043c03          	ld	s8,0(s0)
   1691c:	04043c23          	sd	zero,88(s0)
   16920:	01843d03          	ld	s10,24(s0)
   16924:	02042c83          	lw	s9,32(s0)
   16928:	00990933          	add	s2,s2,s1
   1692c:	0080006f          	j	16934 <_fread_r+0x12c>
   16930:	12098263          	beqz	s3,16a54 <_fread_r+0x24c>
   16934:	01243c23          	sd	s2,24(s0)
   16938:	03342023          	sw	s3,32(s0)
   1693c:	01243023          	sd	s2,0(s0)
   16940:	00040593          	mv	a1,s0
   16944:	000a0513          	mv	a0,s4
   16948:	279020ef          	jal	193c0 <__srefill_r>
   1694c:	00842783          	lw	a5,8(s0)
   16950:	01a43c23          	sd	s10,24(s0)
   16954:	03942023          	sw	s9,32(s0)
   16958:	01843023          	sd	s8,0(s0)
   1695c:	00042423          	sw	zero,8(s0)
   16960:	40f989b3          	sub	s3,s3,a5
   16964:	00f90933          	add	s2,s2,a5
   16968:	fc0504e3          	beqz	a0,16930 <_fread_r+0x128>
   1696c:	413b09b3          	sub	s3,s6,s3
   16970:	0379d533          	divu	a0,s3,s7
   16974:	0640006f          	j	169d8 <_fread_r+0x1d0>
   16978:	130010ef          	jal	17aa8 <memcpy>
   1697c:	00043783          	ld	a5,0(s0)
   16980:	00990933          	add	s2,s2,s1
   16984:	409989b3          	sub	s3,s3,s1
   16988:	009784b3          	add	s1,a5,s1
   1698c:	00040593          	mv	a1,s0
   16990:	000a0513          	mv	a0,s4
   16994:	00943023          	sd	s1,0(s0)
   16998:	229020ef          	jal	193c0 <__srefill_r>
   1699c:	fc0518e3          	bnez	a0,1696c <_fread_r+0x164>
   169a0:	00842483          	lw	s1,8(s0)
   169a4:	00048613          	mv	a2,s1
   169a8:	00090513          	mv	a0,s2
   169ac:	00043583          	ld	a1,0(s0)
   169b0:	fd34e4e3          	bltu	s1,s3,16978 <_fread_r+0x170>
   169b4:	00098613          	mv	a2,s3
   169b8:	0f0010ef          	jal	17aa8 <memcpy>
   169bc:	00842703          	lw	a4,8(s0)
   169c0:	00043783          	ld	a5,0(s0)
   169c4:	000a8513          	mv	a0,s5
   169c8:	4137073b          	subw	a4,a4,s3
   169cc:	013789b3          	add	s3,a5,s3
   169d0:	00e42423          	sw	a4,8(s0)
   169d4:	01343023          	sd	s3,0(s0)
   169d8:	05813083          	ld	ra,88(sp)
   169dc:	05013403          	ld	s0,80(sp)
   169e0:	04813483          	ld	s1,72(sp)
   169e4:	04013903          	ld	s2,64(sp)
   169e8:	03813983          	ld	s3,56(sp)
   169ec:	03013a03          	ld	s4,48(sp)
   169f0:	02813a83          	ld	s5,40(sp)
   169f4:	02013b03          	ld	s6,32(sp)
   169f8:	01813b83          	ld	s7,24(sp)
   169fc:	01013c03          	ld	s8,16(sp)
   16a00:	00813c83          	ld	s9,8(sp)
   16a04:	00013d03          	ld	s10,0(sp)
   16a08:	06010113          	addi	sp,sp,96
   16a0c:	00008067          	ret
   16a10:	00000513          	li	a0,0
   16a14:	fc5ff06f          	j	169d8 <_fread_r+0x1d0>
   16a18:	00042423          	sw	zero,8(s0)
   16a1c:	0027f793          	andi	a5,a5,2
   16a20:	00000713          	li	a4,0
   16a24:	00000493          	li	s1,0
   16a28:	000b0993          	mv	s3,s6
   16a2c:	f6078ce3          	beqz	a5,169a4 <_fread_r+0x19c>
   16a30:	e91ff06f          	j	168c0 <_fread_r+0xb8>
   16a34:	d95ff0ef          	jal	167c8 <__sinit>
   16a38:	01041683          	lh	a3,16(s0)
   16a3c:	03069793          	slli	a5,a3,0x30
   16a40:	0307d793          	srli	a5,a5,0x30
   16a44:	03279713          	slli	a4,a5,0x32
   16a48:	e60740e3          	bltz	a4,168a8 <_fread_r+0xa0>
   16a4c:	e2dff06f          	j	16878 <_fread_r+0x70>
   16a50:	ec0998e3          	bnez	s3,16920 <_fread_r+0x118>
   16a54:	000a8513          	mv	a0,s5
   16a58:	f81ff06f          	j	169d8 <_fread_r+0x1d0>

0000000000016a5c <fread>:
   16a5c:	00068713          	mv	a4,a3
   16a60:	00060693          	mv	a3,a2
   16a64:	00058613          	mv	a2,a1
   16a68:	00050593          	mv	a1,a0
   16a6c:	8181b503          	ld	a0,-2024(gp) # 24438 <_impure_ptr>
   16a70:	d99ff06f          	j	16808 <_fread_r>

0000000000016a74 <_malloc_trim_r>:
   16a74:	fd010113          	addi	sp,sp,-48
   16a78:	01213823          	sd	s2,16(sp)
   16a7c:	00024937          	lui	s2,0x24
   16a80:	02813023          	sd	s0,32(sp)
   16a84:	00913c23          	sd	s1,24(sp)
   16a88:	00058413          	mv	s0,a1
   16a8c:	01313423          	sd	s3,8(sp)
   16a90:	02113423          	sd	ra,40(sp)
   16a94:	00050993          	mv	s3,a0
   16a98:	b6890913          	addi	s2,s2,-1176 # 23b68 <__malloc_av_>
   16a9c:	a39fa0ef          	jal	114d4 <__malloc_lock>
   16aa0:	01093703          	ld	a4,16(s2)
   16aa4:	000017b7          	lui	a5,0x1
   16aa8:	fdf78593          	addi	a1,a5,-33 # fdf <_ftext-0xf021>
   16aac:	00873483          	ld	s1,8(a4) # ffffffffffffe008 <_end+0xfffffffffffd7210>
   16ab0:	ffc4f493          	andi	s1,s1,-4
   16ab4:	40848433          	sub	s0,s1,s0
   16ab8:	00b40433          	add	s0,s0,a1
   16abc:	00c45413          	srli	s0,s0,0xc
   16ac0:	fff40413          	addi	s0,s0,-1
   16ac4:	00c41413          	slli	s0,s0,0xc
   16ac8:	00f44c63          	blt	s0,a5,16ae0 <_malloc_trim_r+0x6c>
   16acc:	00000513          	li	a0,0
   16ad0:	3c9090ef          	jal	20698 <sbrk>
   16ad4:	01093783          	ld	a5,16(s2)
   16ad8:	009787b3          	add	a5,a5,s1
   16adc:	02f50663          	beq	a0,a5,16b08 <_malloc_trim_r+0x94>
   16ae0:	00098513          	mv	a0,s3
   16ae4:	9f5fa0ef          	jal	114d8 <__malloc_unlock>
   16ae8:	02813083          	ld	ra,40(sp)
   16aec:	00000513          	li	a0,0
   16af0:	02013403          	ld	s0,32(sp)
   16af4:	01813483          	ld	s1,24(sp)
   16af8:	01013903          	ld	s2,16(sp)
   16afc:	00813983          	ld	s3,8(sp)
   16b00:	03010113          	addi	sp,sp,48
   16b04:	00008067          	ret
   16b08:	40800533          	neg	a0,s0
   16b0c:	38d090ef          	jal	20698 <sbrk>
   16b10:	fff00793          	li	a5,-1
   16b14:	04f50463          	beq	a0,a5,16b5c <_malloc_trim_r+0xe8>
   16b18:	9681a783          	lw	a5,-1688(gp) # 24588 <__malloc_current_mallinfo>
   16b1c:	01093683          	ld	a3,16(s2)
   16b20:	408484b3          	sub	s1,s1,s0
   16b24:	0014e493          	ori	s1,s1,1
   16b28:	4087843b          	subw	s0,a5,s0
   16b2c:	00098513          	mv	a0,s3
   16b30:	0096b423          	sd	s1,8(a3)
   16b34:	9681a423          	sw	s0,-1688(gp) # 24588 <__malloc_current_mallinfo>
   16b38:	9a1fa0ef          	jal	114d8 <__malloc_unlock>
   16b3c:	02813083          	ld	ra,40(sp)
   16b40:	00100513          	li	a0,1
   16b44:	02013403          	ld	s0,32(sp)
   16b48:	01813483          	ld	s1,24(sp)
   16b4c:	01013903          	ld	s2,16(sp)
   16b50:	00813983          	ld	s3,8(sp)
   16b54:	03010113          	addi	sp,sp,48
   16b58:	00008067          	ret
   16b5c:	00000513          	li	a0,0
   16b60:	339090ef          	jal	20698 <sbrk>
   16b64:	01093703          	ld	a4,16(s2)
   16b68:	01f00693          	li	a3,31
   16b6c:	40e507b3          	sub	a5,a0,a4
   16b70:	f6f6d8e3          	ble	a5,a3,16ae0 <_malloc_trim_r+0x6c>
   16b74:	8201b683          	ld	a3,-2016(gp) # 24440 <__malloc_sbrk_base>
   16b78:	0017e793          	ori	a5,a5,1
   16b7c:	00f73423          	sd	a5,8(a4)
   16b80:	40d50533          	sub	a0,a0,a3
   16b84:	96a1a423          	sw	a0,-1688(gp) # 24588 <__malloc_current_mallinfo>
   16b88:	f59ff06f          	j	16ae0 <_malloc_trim_r+0x6c>

0000000000016b8c <_free_r>:
   16b8c:	10058263          	beqz	a1,16c90 <_free_r+0x104>
   16b90:	fe010113          	addi	sp,sp,-32
   16b94:	00813823          	sd	s0,16(sp)
   16b98:	00913423          	sd	s1,8(sp)
   16b9c:	00058413          	mv	s0,a1
   16ba0:	00050493          	mv	s1,a0
   16ba4:	00113c23          	sd	ra,24(sp)
   16ba8:	92dfa0ef          	jal	114d4 <__malloc_lock>
   16bac:	ff843503          	ld	a0,-8(s0)
   16bb0:	ff040693          	addi	a3,s0,-16
   16bb4:	000245b7          	lui	a1,0x24
   16bb8:	ffe57793          	andi	a5,a0,-2
   16bbc:	00f68633          	add	a2,a3,a5
   16bc0:	b6858593          	addi	a1,a1,-1176 # 23b68 <__malloc_av_>
   16bc4:	00863703          	ld	a4,8(a2)
   16bc8:	0105b803          	ld	a6,16(a1)
   16bcc:	ffc77713          	andi	a4,a4,-4
   16bd0:	17060663          	beq	a2,a6,16d3c <_free_r+0x1b0>
   16bd4:	00e63423          	sd	a4,8(a2)
   16bd8:	00157513          	andi	a0,a0,1
   16bdc:	02051663          	bnez	a0,16c08 <_free_r+0x7c>
   16be0:	ff043503          	ld	a0,-16(s0)
   16be4:	40a686b3          	sub	a3,a3,a0
   16be8:	0106b803          	ld	a6,16(a3)
   16bec:	00a787b3          	add	a5,a5,a0
   16bf0:	00024537          	lui	a0,0x24
   16bf4:	b7850513          	addi	a0,a0,-1160 # 23b78 <__malloc_av_+0x10>
   16bf8:	18a80863          	beq	a6,a0,16d88 <_free_r+0x1fc>
   16bfc:	0186b503          	ld	a0,24(a3)
   16c00:	00a83c23          	sd	a0,24(a6)
   16c04:	01053823          	sd	a6,16(a0)
   16c08:	00e60533          	add	a0,a2,a4
   16c0c:	00853503          	ld	a0,8(a0)
   16c10:	00157513          	andi	a0,a0,1
   16c14:	0e050a63          	beqz	a0,16d08 <_free_r+0x17c>
   16c18:	0017e713          	ori	a4,a5,1
   16c1c:	00e6b423          	sd	a4,8(a3)
   16c20:	00f68733          	add	a4,a3,a5
   16c24:	00f73023          	sd	a5,0(a4)
   16c28:	1ff00713          	li	a4,511
   16c2c:	06f76463          	bltu	a4,a5,16c94 <_free_r+0x108>
   16c30:	0037d793          	srli	a5,a5,0x3
   16c34:	0007879b          	sext.w	a5,a5
   16c38:	0017871b          	addiw	a4,a5,1
   16c3c:	0017171b          	slliw	a4,a4,0x1
   16c40:	00371713          	slli	a4,a4,0x3
   16c44:	0085b603          	ld	a2,8(a1)
   16c48:	00e58733          	add	a4,a1,a4
   16c4c:	00073803          	ld	a6,0(a4)
   16c50:	4027d79b          	sraiw	a5,a5,0x2
   16c54:	00100513          	li	a0,1
   16c58:	00f517b3          	sll	a5,a0,a5
   16c5c:	00c7e7b3          	or	a5,a5,a2
   16c60:	ff070613          	addi	a2,a4,-16
   16c64:	00c6bc23          	sd	a2,24(a3)
   16c68:	0106b823          	sd	a6,16(a3)
   16c6c:	00f5b423          	sd	a5,8(a1)
   16c70:	00d73023          	sd	a3,0(a4)
   16c74:	00d83c23          	sd	a3,24(a6)
   16c78:	00048513          	mv	a0,s1
   16c7c:	01813083          	ld	ra,24(sp)
   16c80:	01013403          	ld	s0,16(sp)
   16c84:	00813483          	ld	s1,8(sp)
   16c88:	02010113          	addi	sp,sp,32
   16c8c:	84dfa06f          	j	114d8 <__malloc_unlock>
   16c90:	00008067          	ret
   16c94:	0097d713          	srli	a4,a5,0x9
   16c98:	00400613          	li	a2,4
   16c9c:	12e66263          	bltu	a2,a4,16dc0 <_free_r+0x234>
   16ca0:	0067d713          	srli	a4,a5,0x6
   16ca4:	0007071b          	sext.w	a4,a4
   16ca8:	0397051b          	addiw	a0,a4,57
   16cac:	0387061b          	addiw	a2,a4,56
   16cb0:	0015151b          	slliw	a0,a0,0x1
   16cb4:	00351513          	slli	a0,a0,0x3
   16cb8:	00a58533          	add	a0,a1,a0
   16cbc:	00053703          	ld	a4,0(a0)
   16cc0:	ff050513          	addi	a0,a0,-16
   16cc4:	10e50c63          	beq	a0,a4,16ddc <_free_r+0x250>
   16cc8:	00873603          	ld	a2,8(a4)
   16ccc:	ffc67613          	andi	a2,a2,-4
   16cd0:	00c7f663          	bleu	a2,a5,16cdc <_free_r+0x150>
   16cd4:	01073703          	ld	a4,16(a4)
   16cd8:	fee518e3          	bne	a0,a4,16cc8 <_free_r+0x13c>
   16cdc:	01873503          	ld	a0,24(a4)
   16ce0:	00a6bc23          	sd	a0,24(a3)
   16ce4:	00e6b823          	sd	a4,16(a3)
   16ce8:	00d53823          	sd	a3,16(a0)
   16cec:	01813083          	ld	ra,24(sp)
   16cf0:	00048513          	mv	a0,s1
   16cf4:	01013403          	ld	s0,16(sp)
   16cf8:	00813483          	ld	s1,8(sp)
   16cfc:	00d73c23          	sd	a3,24(a4)
   16d00:	02010113          	addi	sp,sp,32
   16d04:	fd4fa06f          	j	114d8 <__malloc_unlock>
   16d08:	01063503          	ld	a0,16(a2)
   16d0c:	00e787b3          	add	a5,a5,a4
   16d10:	00024737          	lui	a4,0x24
   16d14:	b7870713          	addi	a4,a4,-1160 # 23b78 <__malloc_av_+0x10>
   16d18:	0ee50263          	beq	a0,a4,16dfc <_free_r+0x270>
   16d1c:	01863803          	ld	a6,24(a2)
   16d20:	0017e613          	ori	a2,a5,1
   16d24:	00f68733          	add	a4,a3,a5
   16d28:	01053c23          	sd	a6,24(a0)
   16d2c:	00a83823          	sd	a0,16(a6)
   16d30:	00c6b423          	sd	a2,8(a3)
   16d34:	00f73023          	sd	a5,0(a4)
   16d38:	ef1ff06f          	j	16c28 <_free_r+0x9c>
   16d3c:	00157513          	andi	a0,a0,1
   16d40:	00e787b3          	add	a5,a5,a4
   16d44:	02051063          	bnez	a0,16d64 <_free_r+0x1d8>
   16d48:	ff043503          	ld	a0,-16(s0)
   16d4c:	40a686b3          	sub	a3,a3,a0
   16d50:	0186b703          	ld	a4,24(a3)
   16d54:	0106b603          	ld	a2,16(a3)
   16d58:	00a787b3          	add	a5,a5,a0
   16d5c:	00e63c23          	sd	a4,24(a2)
   16d60:	00c73823          	sd	a2,16(a4)
   16d64:	0017e613          	ori	a2,a5,1
   16d68:	8281b703          	ld	a4,-2008(gp) # 24448 <__malloc_trim_threshold>
   16d6c:	00c6b423          	sd	a2,8(a3)
   16d70:	00d5b823          	sd	a3,16(a1)
   16d74:	f0e7e2e3          	bltu	a5,a4,16c78 <_free_r+0xec>
   16d78:	9101b583          	ld	a1,-1776(gp) # 24530 <__malloc_top_pad>
   16d7c:	00048513          	mv	a0,s1
   16d80:	cf5ff0ef          	jal	16a74 <_malloc_trim_r>
   16d84:	ef5ff06f          	j	16c78 <_free_r+0xec>
   16d88:	00e605b3          	add	a1,a2,a4
   16d8c:	0085b583          	ld	a1,8(a1)
   16d90:	0015f593          	andi	a1,a1,1
   16d94:	0e059a63          	bnez	a1,16e88 <_free_r+0x2fc>
   16d98:	01063583          	ld	a1,16(a2)
   16d9c:	01863603          	ld	a2,24(a2)
   16da0:	00f707b3          	add	a5,a4,a5
   16da4:	0017e713          	ori	a4,a5,1
   16da8:	00c5bc23          	sd	a2,24(a1)
   16dac:	00b63823          	sd	a1,16(a2)
   16db0:	00e6b423          	sd	a4,8(a3)
   16db4:	00f686b3          	add	a3,a3,a5
   16db8:	00f6b023          	sd	a5,0(a3)
   16dbc:	ebdff06f          	j	16c78 <_free_r+0xec>
   16dc0:	01400613          	li	a2,20
   16dc4:	04e66e63          	bltu	a2,a4,16e20 <_free_r+0x294>
   16dc8:	0007071b          	sext.w	a4,a4
   16dcc:	05c7051b          	addiw	a0,a4,92
   16dd0:	05b7061b          	addiw	a2,a4,91
   16dd4:	0015151b          	slliw	a0,a0,0x1
   16dd8:	eddff06f          	j	16cb4 <_free_r+0x128>
   16ddc:	0085b783          	ld	a5,8(a1)
   16de0:	4026571b          	sraiw	a4,a2,0x2
   16de4:	00100613          	li	a2,1
   16de8:	00e61733          	sll	a4,a2,a4
   16dec:	00f767b3          	or	a5,a4,a5
   16df0:	00f5b423          	sd	a5,8(a1)
   16df4:	00050713          	mv	a4,a0
   16df8:	ee9ff06f          	j	16ce0 <_free_r+0x154>
   16dfc:	02d5b423          	sd	a3,40(a1)
   16e00:	02d5b023          	sd	a3,32(a1)
   16e04:	0017e713          	ori	a4,a5,1
   16e08:	00a6bc23          	sd	a0,24(a3)
   16e0c:	00a6b823          	sd	a0,16(a3)
   16e10:	00e6b423          	sd	a4,8(a3)
   16e14:	00f686b3          	add	a3,a3,a5
   16e18:	00f6b023          	sd	a5,0(a3)
   16e1c:	e5dff06f          	j	16c78 <_free_r+0xec>
   16e20:	05400613          	li	a2,84
   16e24:	00e66e63          	bltu	a2,a4,16e40 <_free_r+0x2b4>
   16e28:	00c7d713          	srli	a4,a5,0xc
   16e2c:	0007071b          	sext.w	a4,a4
   16e30:	06f7051b          	addiw	a0,a4,111
   16e34:	06e7061b          	addiw	a2,a4,110
   16e38:	0015151b          	slliw	a0,a0,0x1
   16e3c:	e79ff06f          	j	16cb4 <_free_r+0x128>
   16e40:	15400613          	li	a2,340
   16e44:	00e66e63          	bltu	a2,a4,16e60 <_free_r+0x2d4>
   16e48:	00f7d713          	srli	a4,a5,0xf
   16e4c:	0007071b          	sext.w	a4,a4
   16e50:	0787051b          	addiw	a0,a4,120
   16e54:	0777061b          	addiw	a2,a4,119
   16e58:	0015151b          	slliw	a0,a0,0x1
   16e5c:	e59ff06f          	j	16cb4 <_free_r+0x128>
   16e60:	55400813          	li	a6,1364
   16e64:	0fe00513          	li	a0,254
   16e68:	07e00613          	li	a2,126
   16e6c:	e4e864e3          	bltu	a6,a4,16cb4 <_free_r+0x128>
   16e70:	0127d713          	srli	a4,a5,0x12
   16e74:	0007071b          	sext.w	a4,a4
   16e78:	07d7051b          	addiw	a0,a4,125
   16e7c:	07c7061b          	addiw	a2,a4,124
   16e80:	0015151b          	slliw	a0,a0,0x1
   16e84:	e31ff06f          	j	16cb4 <_free_r+0x128>
   16e88:	0017e713          	ori	a4,a5,1
   16e8c:	00e6b423          	sd	a4,8(a3)
   16e90:	00f686b3          	add	a3,a3,a5
   16e94:	00f6b023          	sd	a5,0(a3)
   16e98:	de1ff06f          	j	16c78 <_free_r+0xec>

0000000000016e9c <__sfvwrite_r>:
   16e9c:	01063783          	ld	a5,16(a2)
   16ea0:	26078a63          	beqz	a5,17114 <__sfvwrite_r+0x278>
   16ea4:	0105d703          	lhu	a4,16(a1)
   16ea8:	f9010113          	addi	sp,sp,-112
   16eac:	06813023          	sd	s0,96(sp)
   16eb0:	03513c23          	sd	s5,56(sp)
   16eb4:	03613823          	sd	s6,48(sp)
   16eb8:	06113423          	sd	ra,104(sp)
   16ebc:	04913c23          	sd	s1,88(sp)
   16ec0:	05213823          	sd	s2,80(sp)
   16ec4:	05313423          	sd	s3,72(sp)
   16ec8:	05413023          	sd	s4,64(sp)
   16ecc:	03713423          	sd	s7,40(sp)
   16ed0:	03813023          	sd	s8,32(sp)
   16ed4:	01913c23          	sd	s9,24(sp)
   16ed8:	01a13823          	sd	s10,16(sp)
   16edc:	01b13423          	sd	s11,8(sp)
   16ee0:	00877793          	andi	a5,a4,8
   16ee4:	00058413          	mv	s0,a1
   16ee8:	00050b13          	mv	s6,a0
   16eec:	00060a93          	mv	s5,a2
   16ef0:	0a078863          	beqz	a5,16fa0 <__sfvwrite_r+0x104>
   16ef4:	0185b783          	ld	a5,24(a1)
   16ef8:	0a078463          	beqz	a5,16fa0 <__sfvwrite_r+0x104>
   16efc:	00277793          	andi	a5,a4,2
   16f00:	000ab483          	ld	s1,0(s5)
   16f04:	0c078063          	beqz	a5,16fc4 <__sfvwrite_r+0x128>
   16f08:	80000a37          	lui	s4,0x80000
   16f0c:	00000993          	li	s3,0
   16f10:	00000913          	li	s2,0
   16f14:	c00a4a13          	xori	s4,s4,-1024
   16f18:	00098613          	mv	a2,s3
   16f1c:	000b0513          	mv	a0,s6
   16f20:	1e090263          	beqz	s2,17104 <__sfvwrite_r+0x268>
   16f24:	00090693          	mv	a3,s2
   16f28:	012a7463          	bleu	s2,s4,16f30 <__sfvwrite_r+0x94>
   16f2c:	000a0693          	mv	a3,s4
   16f30:	04043783          	ld	a5,64(s0)
   16f34:	03043583          	ld	a1,48(s0)
   16f38:	0006869b          	sext.w	a3,a3
   16f3c:	000780e7          	jalr	a5
   16f40:	22a05063          	blez	a0,17160 <__sfvwrite_r+0x2c4>
   16f44:	010ab783          	ld	a5,16(s5)
   16f48:	00a989b3          	add	s3,s3,a0
   16f4c:	40a90933          	sub	s2,s2,a0
   16f50:	40a78533          	sub	a0,a5,a0
   16f54:	00aab823          	sd	a0,16(s5)
   16f58:	fc0510e3          	bnez	a0,16f18 <__sfvwrite_r+0x7c>
   16f5c:	00000793          	li	a5,0
   16f60:	06813083          	ld	ra,104(sp)
   16f64:	00078513          	mv	a0,a5
   16f68:	06013403          	ld	s0,96(sp)
   16f6c:	05813483          	ld	s1,88(sp)
   16f70:	05013903          	ld	s2,80(sp)
   16f74:	04813983          	ld	s3,72(sp)
   16f78:	04013a03          	ld	s4,64(sp)
   16f7c:	03813a83          	ld	s5,56(sp)
   16f80:	03013b03          	ld	s6,48(sp)
   16f84:	02813b83          	ld	s7,40(sp)
   16f88:	02013c03          	ld	s8,32(sp)
   16f8c:	01813c83          	ld	s9,24(sp)
   16f90:	01013d03          	ld	s10,16(sp)
   16f94:	00813d83          	ld	s11,8(sp)
   16f98:	07010113          	addi	sp,sp,112
   16f9c:	00008067          	ret
   16fa0:	00040593          	mv	a1,s0
   16fa4:	000b0513          	mv	a0,s6
   16fa8:	b1dfd0ef          	jal	14ac4 <__swsetup_r>
   16fac:	fff00793          	li	a5,-1
   16fb0:	fa0518e3          	bnez	a0,16f60 <__sfvwrite_r+0xc4>
   16fb4:	01045703          	lhu	a4,16(s0)
   16fb8:	000ab483          	ld	s1,0(s5)
   16fbc:	00277793          	andi	a5,a4,2
   16fc0:	f40794e3          	bnez	a5,16f08 <__sfvwrite_r+0x6c>
   16fc4:	00177793          	andi	a5,a4,1
   16fc8:	1a079663          	bnez	a5,17174 <__sfvwrite_r+0x2d8>
   16fcc:	80000bb7          	lui	s7,0x80000
   16fd0:	ffebcc13          	xori	s8,s7,-2
   16fd4:	00000c93          	li	s9,0
   16fd8:	00000913          	li	s2,0
   16fdc:	fffbcb93          	not	s7,s7
   16fe0:	10090a63          	beqz	s2,170f4 <__sfvwrite_r+0x258>
   16fe4:	00c42983          	lw	s3,12(s0)
   16fe8:	20077793          	andi	a5,a4,512
   16fec:	00098a13          	mv	s4,s3
   16ff0:	26078863          	beqz	a5,17260 <__sfvwrite_r+0x3c4>
   16ff4:	2b396a63          	bltu	s2,s3,172a8 <__sfvwrite_r+0x40c>
   16ff8:	48077793          	andi	a5,a4,1152
   16ffc:	2a078663          	beqz	a5,172a8 <__sfvwrite_r+0x40c>
   17000:	02042a03          	lw	s4,32(s0)
   17004:	01843583          	ld	a1,24(s0)
   17008:	00043d03          	ld	s10,0(s0)
   1700c:	001a179b          	slliw	a5,s4,0x1
   17010:	01478a3b          	addw	s4,a5,s4
   17014:	01fa579b          	srliw	a5,s4,0x1f
   17018:	40bd0d3b          	subw	s10,s10,a1
   1701c:	01478a3b          	addw	s4,a5,s4
   17020:	000d0993          	mv	s3,s10
   17024:	401a5a1b          	sraiw	s4,s4,0x1
   17028:	00198793          	addi	a5,s3,1
   1702c:	000a0613          	mv	a2,s4
   17030:	012787b3          	add	a5,a5,s2
   17034:	00f67863          	bleu	a5,a2,17044 <__sfvwrite_r+0x1a8>
   17038:	001d0a1b          	addiw	s4,s10,1
   1703c:	01490a3b          	addw	s4,s2,s4
   17040:	000a0613          	mv	a2,s4
   17044:	40077713          	andi	a4,a4,1024
   17048:	2a070a63          	beqz	a4,172fc <__sfvwrite_r+0x460>
   1704c:	00060593          	mv	a1,a2
   17050:	000b0513          	mv	a0,s6
   17054:	d11f90ef          	jal	10d64 <_malloc_r>
   17058:	00050d93          	mv	s11,a0
   1705c:	2e050263          	beqz	a0,17340 <__sfvwrite_r+0x4a4>
   17060:	01843583          	ld	a1,24(s0)
   17064:	00098613          	mv	a2,s3
   17068:	241000ef          	jal	17aa8 <memcpy>
   1706c:	01045783          	lhu	a5,16(s0)
   17070:	b7f7f793          	andi	a5,a5,-1153
   17074:	0807e793          	ori	a5,a5,128
   17078:	00f41823          	sh	a5,16(s0)
   1707c:	41aa0d3b          	subw	s10,s4,s10
   17080:	013d8533          	add	a0,s11,s3
   17084:	03442023          	sw	s4,32(s0)
   17088:	01b43c23          	sd	s11,24(s0)
   1708c:	00a43023          	sd	a0,0(s0)
   17090:	00090a13          	mv	s4,s2
   17094:	01a42623          	sw	s10,12(s0)
   17098:	000a0d13          	mv	s10,s4
   1709c:	00090993          	mv	s3,s2
   170a0:	01497863          	bleu	s4,s2,170b0 <__sfvwrite_r+0x214>
   170a4:	00090d13          	mv	s10,s2
   170a8:	00090993          	mv	s3,s2
   170ac:	00090a13          	mv	s4,s2
   170b0:	000d0613          	mv	a2,s10
   170b4:	000c8593          	mv	a1,s9
   170b8:	311000ef          	jal	17bc8 <memmove>
   170bc:	00c42783          	lw	a5,12(s0)
   170c0:	00043603          	ld	a2,0(s0)
   170c4:	41478a3b          	subw	s4,a5,s4
   170c8:	01a60633          	add	a2,a2,s10
   170cc:	01442623          	sw	s4,12(s0)
   170d0:	00c43023          	sd	a2,0(s0)
   170d4:	010ab503          	ld	a0,16(s5)
   170d8:	013c8cb3          	add	s9,s9,s3
   170dc:	41390933          	sub	s2,s2,s3
   170e0:	413509b3          	sub	s3,a0,s3
   170e4:	013ab823          	sd	s3,16(s5)
   170e8:	e6098ae3          	beqz	s3,16f5c <__sfvwrite_r+0xc0>
   170ec:	01045703          	lhu	a4,16(s0)
   170f0:	ee091ae3          	bnez	s2,16fe4 <__sfvwrite_r+0x148>
   170f4:	0004bc83          	ld	s9,0(s1)
   170f8:	0084b903          	ld	s2,8(s1)
   170fc:	01048493          	addi	s1,s1,16
   17100:	ee1ff06f          	j	16fe0 <__sfvwrite_r+0x144>
   17104:	0004b983          	ld	s3,0(s1)
   17108:	0084b903          	ld	s2,8(s1)
   1710c:	01048493          	addi	s1,s1,16
   17110:	e09ff06f          	j	16f18 <__sfvwrite_r+0x7c>
   17114:	00000793          	li	a5,0
   17118:	00078513          	mv	a0,a5
   1711c:	00008067          	ret
   17120:	01397463          	bleu	s3,s2,17128 <__sfvwrite_r+0x28c>
   17124:	00090993          	mv	s3,s2
   17128:	00098613          	mv	a2,s3
   1712c:	000c8593          	mv	a1,s9
   17130:	299000ef          	jal	17bc8 <memmove>
   17134:	00c42783          	lw	a5,12(s0)
   17138:	00043703          	ld	a4,0(s0)
   1713c:	413787bb          	subw	a5,a5,s3
   17140:	01370733          	add	a4,a4,s3
   17144:	00f42623          	sw	a5,12(s0)
   17148:	00e43023          	sd	a4,0(s0)
   1714c:	f80794e3          	bnez	a5,170d4 <__sfvwrite_r+0x238>
   17150:	00040593          	mv	a1,s0
   17154:	000b0513          	mv	a0,s6
   17158:	ac4ff0ef          	jal	1641c <_fflush_r>
   1715c:	f6050ce3          	beqz	a0,170d4 <__sfvwrite_r+0x238>
   17160:	01041783          	lh	a5,16(s0)
   17164:	0407e793          	ori	a5,a5,64
   17168:	00f41823          	sh	a5,16(s0)
   1716c:	fff00793          	li	a5,-1
   17170:	df1ff06f          	j	16f60 <__sfvwrite_r+0xc4>
   17174:	00000a13          	li	s4,0
   17178:	00000c13          	li	s8,0
   1717c:	00000d13          	li	s10,0
   17180:	00000913          	li	s2,0
   17184:	06090e63          	beqz	s2,17200 <__sfvwrite_r+0x364>
   17188:	140c0863          	beqz	s8,172d8 <__sfvwrite_r+0x43c>
   1718c:	000a0993          	mv	s3,s4
   17190:	01497463          	bleu	s4,s2,17198 <__sfvwrite_r+0x2fc>
   17194:	00090993          	mv	s3,s2
   17198:	00043503          	ld	a0,0(s0)
   1719c:	01843783          	ld	a5,24(s0)
   171a0:	00098b93          	mv	s7,s3
   171a4:	02042683          	lw	a3,32(s0)
   171a8:	00a7fa63          	bleu	a0,a5,171bc <__sfvwrite_r+0x320>
   171ac:	00c42c83          	lw	s9,12(s0)
   171b0:	01968cbb          	addw	s9,a3,s9
   171b4:	000c8d93          	mv	s11,s9
   171b8:	053dce63          	blt	s11,s3,17214 <__sfvwrite_r+0x378>
   171bc:	0ed9ca63          	blt	s3,a3,172b0 <__sfvwrite_r+0x414>
   171c0:	04043783          	ld	a5,64(s0)
   171c4:	03043583          	ld	a1,48(s0)
   171c8:	000d0613          	mv	a2,s10
   171cc:	000b0513          	mv	a0,s6
   171d0:	000780e7          	jalr	a5
   171d4:	00050b93          	mv	s7,a0
   171d8:	f8a054e3          	blez	a0,17160 <__sfvwrite_r+0x2c4>
   171dc:	417a0a3b          	subw	s4,s4,s7
   171e0:	060a0463          	beqz	s4,17248 <__sfvwrite_r+0x3ac>
   171e4:	010ab783          	ld	a5,16(s5)
   171e8:	017d0d33          	add	s10,s10,s7
   171ec:	41790933          	sub	s2,s2,s7
   171f0:	41778bb3          	sub	s7,a5,s7
   171f4:	017ab823          	sd	s7,16(s5)
   171f8:	d60b82e3          	beqz	s7,16f5c <__sfvwrite_r+0xc0>
   171fc:	f80916e3          	bnez	s2,17188 <__sfvwrite_r+0x2ec>
   17200:	0004bd03          	ld	s10,0(s1)
   17204:	0084b903          	ld	s2,8(s1)
   17208:	00000c13          	li	s8,0
   1720c:	01048493          	addi	s1,s1,16
   17210:	f75ff06f          	j	17184 <__sfvwrite_r+0x2e8>
   17214:	000d0593          	mv	a1,s10
   17218:	000c8613          	mv	a2,s9
   1721c:	1ad000ef          	jal	17bc8 <memmove>
   17220:	00043783          	ld	a5,0(s0)
   17224:	00040593          	mv	a1,s0
   17228:	000b0513          	mv	a0,s6
   1722c:	01b78db3          	add	s11,a5,s11
   17230:	01b43023          	sd	s11,0(s0)
   17234:	9e8ff0ef          	jal	1641c <_fflush_r>
   17238:	f20514e3          	bnez	a0,17160 <__sfvwrite_r+0x2c4>
   1723c:	000c8b93          	mv	s7,s9
   17240:	417a0a3b          	subw	s4,s4,s7
   17244:	fa0a10e3          	bnez	s4,171e4 <__sfvwrite_r+0x348>
   17248:	00040593          	mv	a1,s0
   1724c:	000b0513          	mv	a0,s6
   17250:	9ccff0ef          	jal	1641c <_fflush_r>
   17254:	f00516e3          	bnez	a0,17160 <__sfvwrite_r+0x2c4>
   17258:	00000c13          	li	s8,0
   1725c:	f89ff06f          	j	171e4 <__sfvwrite_r+0x348>
   17260:	00043503          	ld	a0,0(s0)
   17264:	01843783          	ld	a5,24(s0)
   17268:	eaa7ece3          	bltu	a5,a0,17120 <__sfvwrite_r+0x284>
   1726c:	02042783          	lw	a5,32(s0)
   17270:	eaf968e3          	bltu	s2,a5,17120 <__sfvwrite_r+0x284>
   17274:	000b8693          	mv	a3,s7
   17278:	012c6463          	bltu	s8,s2,17280 <__sfvwrite_r+0x3e4>
   1727c:	0009069b          	sext.w	a3,s2
   17280:	02f6c6bb          	divw	a3,a3,a5
   17284:	04043703          	ld	a4,64(s0)
   17288:	03043583          	ld	a1,48(s0)
   1728c:	000c8613          	mv	a2,s9
   17290:	000b0513          	mv	a0,s6
   17294:	02f686bb          	mulw	a3,a3,a5
   17298:	000700e7          	jalr	a4
   1729c:	eca052e3          	blez	a0,17160 <__sfvwrite_r+0x2c4>
   172a0:	00050993          	mv	s3,a0
   172a4:	e31ff06f          	j	170d4 <__sfvwrite_r+0x238>
   172a8:	00043503          	ld	a0,0(s0)
   172ac:	dedff06f          	j	17098 <__sfvwrite_r+0x1fc>
   172b0:	00098613          	mv	a2,s3
   172b4:	000d0593          	mv	a1,s10
   172b8:	111000ef          	jal	17bc8 <memmove>
   172bc:	00c42703          	lw	a4,12(s0)
   172c0:	00043783          	ld	a5,0(s0)
   172c4:	4137073b          	subw	a4,a4,s3
   172c8:	013789b3          	add	s3,a5,s3
   172cc:	00e42623          	sw	a4,12(s0)
   172d0:	01343023          	sd	s3,0(s0)
   172d4:	f09ff06f          	j	171dc <__sfvwrite_r+0x340>
   172d8:	00090613          	mv	a2,s2
   172dc:	00a00593          	li	a1,10
   172e0:	000d0513          	mv	a0,s10
   172e4:	6dc000ef          	jal	179c0 <memchr>
   172e8:	04050663          	beqz	a0,17334 <__sfvwrite_r+0x498>
   172ec:	00150a13          	addi	s4,a0,1
   172f0:	41aa0a3b          	subw	s4,s4,s10
   172f4:	00100c13          	li	s8,1
   172f8:	e95ff06f          	j	1718c <__sfvwrite_r+0x2f0>
   172fc:	000b0513          	mv	a0,s6
   17300:	329010ef          	jal	18e28 <_realloc_r>
   17304:	00050d93          	mv	s11,a0
   17308:	d6051ae3          	bnez	a0,1707c <__sfvwrite_r+0x1e0>
   1730c:	01843583          	ld	a1,24(s0)
   17310:	000b0513          	mv	a0,s6
   17314:	879ff0ef          	jal	16b8c <_free_r>
   17318:	01045783          	lhu	a5,16(s0)
   1731c:	00c00713          	li	a4,12
   17320:	00eb2023          	sw	a4,0(s6)
   17324:	f7f7f793          	andi	a5,a5,-129
   17328:	0107979b          	slliw	a5,a5,0x10
   1732c:	4107d79b          	sraiw	a5,a5,0x10
   17330:	e35ff06f          	j	17164 <__sfvwrite_r+0x2c8>
   17334:	00190a1b          	addiw	s4,s2,1
   17338:	00100c13          	li	s8,1
   1733c:	e51ff06f          	j	1718c <__sfvwrite_r+0x2f0>
   17340:	00c00793          	li	a5,12
   17344:	00fb2023          	sw	a5,0(s6)
   17348:	01041783          	lh	a5,16(s0)
   1734c:	e19ff06f          	j	17164 <__sfvwrite_r+0x2c8>

0000000000017350 <_fwalk>:
   17350:	fc010113          	addi	sp,sp,-64
   17354:	01513423          	sd	s5,8(sp)
   17358:	02113c23          	sd	ra,56(sp)
   1735c:	02813823          	sd	s0,48(sp)
   17360:	02913423          	sd	s1,40(sp)
   17364:	03213023          	sd	s2,32(sp)
   17368:	01313c23          	sd	s3,24(sp)
   1736c:	01413823          	sd	s4,16(sp)
   17370:	01613023          	sd	s6,0(sp)
   17374:	52050a93          	addi	s5,a0,1312
   17378:	080a8063          	beqz	s5,173f8 <_fwalk+0xa8>
   1737c:	00058b13          	mv	s6,a1
   17380:	00000a13          	li	s4,0
   17384:	00100993          	li	s3,1
   17388:	fff00913          	li	s2,-1
   1738c:	008aa483          	lw	s1,8(s5)
   17390:	010ab403          	ld	s0,16(s5)
   17394:	fff4849b          	addiw	s1,s1,-1
   17398:	0204c663          	bltz	s1,173c4 <_fwalk+0x74>
   1739c:	01045783          	lhu	a5,16(s0)
   173a0:	fff4849b          	addiw	s1,s1,-1
   173a4:	00f9fc63          	bleu	a5,s3,173bc <_fwalk+0x6c>
   173a8:	01241783          	lh	a5,18(s0)
   173ac:	00040513          	mv	a0,s0
   173b0:	01278663          	beq	a5,s2,173bc <_fwalk+0x6c>
   173b4:	000b00e7          	jalr	s6
   173b8:	00aa6a33          	or	s4,s4,a0
   173bc:	0b040413          	addi	s0,s0,176
   173c0:	fd249ee3          	bne	s1,s2,1739c <_fwalk+0x4c>
   173c4:	000aba83          	ld	s5,0(s5)
   173c8:	fc0a92e3          	bnez	s5,1738c <_fwalk+0x3c>
   173cc:	03813083          	ld	ra,56(sp)
   173d0:	000a0513          	mv	a0,s4
   173d4:	03013403          	ld	s0,48(sp)
   173d8:	02813483          	ld	s1,40(sp)
   173dc:	02013903          	ld	s2,32(sp)
   173e0:	01813983          	ld	s3,24(sp)
   173e4:	01013a03          	ld	s4,16(sp)
   173e8:	00813a83          	ld	s5,8(sp)
   173ec:	00013b03          	ld	s6,0(sp)
   173f0:	04010113          	addi	sp,sp,64
   173f4:	00008067          	ret
   173f8:	00000a13          	li	s4,0
   173fc:	fd1ff06f          	j	173cc <_fwalk+0x7c>

0000000000017400 <_fwalk_reent>:
   17400:	fb010113          	addi	sp,sp,-80
   17404:	01613823          	sd	s6,16(sp)
   17408:	04113423          	sd	ra,72(sp)
   1740c:	04813023          	sd	s0,64(sp)
   17410:	02913c23          	sd	s1,56(sp)
   17414:	03213823          	sd	s2,48(sp)
   17418:	03313423          	sd	s3,40(sp)
   1741c:	03413023          	sd	s4,32(sp)
   17420:	01513c23          	sd	s5,24(sp)
   17424:	01713423          	sd	s7,8(sp)
   17428:	52050b13          	addi	s6,a0,1312
   1742c:	080b0663          	beqz	s6,174b8 <_fwalk_reent+0xb8>
   17430:	00058b93          	mv	s7,a1
   17434:	00050a93          	mv	s5,a0
   17438:	00000a13          	li	s4,0
   1743c:	00100993          	li	s3,1
   17440:	fff00913          	li	s2,-1
   17444:	008b2483          	lw	s1,8(s6)
   17448:	010b3403          	ld	s0,16(s6)
   1744c:	fff4849b          	addiw	s1,s1,-1
   17450:	0204c863          	bltz	s1,17480 <_fwalk_reent+0x80>
   17454:	01045783          	lhu	a5,16(s0)
   17458:	fff4849b          	addiw	s1,s1,-1
   1745c:	00f9fe63          	bleu	a5,s3,17478 <_fwalk_reent+0x78>
   17460:	01241783          	lh	a5,18(s0)
   17464:	00040593          	mv	a1,s0
   17468:	000a8513          	mv	a0,s5
   1746c:	01278663          	beq	a5,s2,17478 <_fwalk_reent+0x78>
   17470:	000b80e7          	jalr	s7
   17474:	00aa6a33          	or	s4,s4,a0
   17478:	0b040413          	addi	s0,s0,176
   1747c:	fd249ce3          	bne	s1,s2,17454 <_fwalk_reent+0x54>
   17480:	000b3b03          	ld	s6,0(s6)
   17484:	fc0b10e3          	bnez	s6,17444 <_fwalk_reent+0x44>
   17488:	04813083          	ld	ra,72(sp)
   1748c:	000a0513          	mv	a0,s4
   17490:	04013403          	ld	s0,64(sp)
   17494:	03813483          	ld	s1,56(sp)
   17498:	03013903          	ld	s2,48(sp)
   1749c:	02813983          	ld	s3,40(sp)
   174a0:	02013a03          	ld	s4,32(sp)
   174a4:	01813a83          	ld	s5,24(sp)
   174a8:	01013b03          	ld	s6,16(sp)
   174ac:	00813b83          	ld	s7,8(sp)
   174b0:	05010113          	addi	sp,sp,80
   174b4:	00008067          	ret
   174b8:	00000a13          	li	s4,0
   174bc:	fcdff06f          	j	17488 <_fwalk_reent+0x88>

00000000000174c0 <iswspace>:
   174c0:	0ff00793          	li	a5,255
   174c4:	02a7e263          	bltu	a5,a0,174e8 <iswspace+0x28>
   174c8:	8301b783          	ld	a5,-2000(gp) # 24450 <__ctype_ptr__>
   174cc:	02051513          	slli	a0,a0,0x20
   174d0:	02055513          	srli	a0,a0,0x20
   174d4:	00a78533          	add	a0,a5,a0
   174d8:	00154503          	lbu	a0,1(a0)
   174dc:	00857513          	andi	a0,a0,8
   174e0:	0ff57513          	andi	a0,a0,255
   174e4:	00008067          	ret
   174e8:	00000513          	li	a0,0
   174ec:	00008067          	ret

00000000000174f0 <_setlocale_r>:
   174f0:	fe010113          	addi	sp,sp,-32
   174f4:	00913423          	sd	s1,8(sp)
   174f8:	00113c23          	sd	ra,24(sp)
   174fc:	00813823          	sd	s0,16(sp)
   17500:	000224b7          	lui	s1,0x22
   17504:	02060063          	beqz	a2,17524 <_setlocale_r+0x34>
   17508:	000225b7          	lui	a1,0x22
   1750c:	d5858593          	addi	a1,a1,-680 # 21d58 <zeroes.4123+0x6f0>
   17510:	00060513          	mv	a0,a2
   17514:	00060413          	mv	s0,a2
   17518:	b24fa0ef          	jal	1183c <strcmp>
   1751c:	000224b7          	lui	s1,0x22
   17520:	00051e63          	bnez	a0,1753c <_setlocale_r+0x4c>
   17524:	cc848513          	addi	a0,s1,-824 # 21cc8 <zeroes.4123+0x660>
   17528:	01813083          	ld	ra,24(sp)
   1752c:	01013403          	ld	s0,16(sp)
   17530:	00813483          	ld	s1,8(sp)
   17534:	02010113          	addi	sp,sp,32
   17538:	00008067          	ret
   1753c:	cc848593          	addi	a1,s1,-824
   17540:	00040513          	mv	a0,s0
   17544:	af8fa0ef          	jal	1183c <strcmp>
   17548:	fc050ee3          	beqz	a0,17524 <_setlocale_r+0x34>
   1754c:	000225b7          	lui	a1,0x22
   17550:	85858593          	addi	a1,a1,-1960 # 21858 <zeroes.4123+0x1f0>
   17554:	00040513          	mv	a0,s0
   17558:	ae4fa0ef          	jal	1183c <strcmp>
   1755c:	fc0504e3          	beqz	a0,17524 <_setlocale_r+0x34>
   17560:	00000513          	li	a0,0
   17564:	fc5ff06f          	j	17528 <_setlocale_r+0x38>

0000000000017568 <__locale_charset>:
   17568:	00024537          	lui	a0,0x24
   1756c:	37850513          	addi	a0,a0,888 # 24378 <lc_ctype_charset>
   17570:	00008067          	ret

0000000000017574 <__locale_mb_cur_max>:
   17574:	8381a503          	lw	a0,-1992(gp) # 24458 <__mb_cur_max>
   17578:	00008067          	ret

000000000001757c <__locale_msgcharset>:
   1757c:	00024537          	lui	a0,0x24
   17580:	39850513          	addi	a0,a0,920 # 24398 <lc_message_charset>
   17584:	00008067          	ret

0000000000017588 <__locale_cjk_lang>:
   17588:	00000513          	li	a0,0
   1758c:	00008067          	ret

0000000000017590 <_localeconv_r>:
   17590:	00024537          	lui	a0,0x24
   17594:	3b850513          	addi	a0,a0,952 # 243b8 <lconv>
   17598:	00008067          	ret

000000000001759c <setlocale>:
   1759c:	00058613          	mv	a2,a1
   175a0:	00050593          	mv	a1,a0
   175a4:	8181b503          	ld	a0,-2024(gp) # 24438 <_impure_ptr>
   175a8:	f49ff06f          	j	174f0 <_setlocale_r>

00000000000175ac <localeconv>:
   175ac:	00024537          	lui	a0,0x24
   175b0:	3b850513          	addi	a0,a0,952 # 243b8 <lconv>
   175b4:	00008067          	ret

00000000000175b8 <__smakebuf_r>:
   175b8:	01059783          	lh	a5,16(a1)
   175bc:	f5010113          	addi	sp,sp,-176
   175c0:	08913c23          	sd	s1,152(sp)
   175c4:	03079493          	slli	s1,a5,0x30
   175c8:	0304d493          	srli	s1,s1,0x30
   175cc:	0a113423          	sd	ra,168(sp)
   175d0:	0a813023          	sd	s0,160(sp)
   175d4:	09213823          	sd	s2,144(sp)
   175d8:	09313423          	sd	s3,136(sp)
   175dc:	0024f713          	andi	a4,s1,2
   175e0:	0e071063          	bnez	a4,176c0 <__smakebuf_r+0x108>
   175e4:	00050913          	mv	s2,a0
   175e8:	01259503          	lh	a0,18(a1)
   175ec:	00058413          	mv	s0,a1
   175f0:	04054c63          	bltz	a0,17648 <__smakebuf_r+0x90>
   175f4:	00010593          	mv	a1,sp
   175f8:	5d5080ef          	jal	203cc <fstat>
   175fc:	04054063          	bltz	a0,1763c <__smakebuf_r+0x84>
   17600:	01012703          	lw	a4,16(sp)
   17604:	0000f7b7          	lui	a5,0xf
   17608:	ffffe9b7          	lui	s3,0xffffe
   1760c:	00f777b3          	and	a5,a4,a5
   17610:	013789bb          	addw	s3,a5,s3
   17614:	00008737          	lui	a4,0x8
   17618:	0019b993          	seqz	s3,s3
   1761c:	0ce78a63          	beq	a5,a4,176f0 <__smakebuf_r+0x138>
   17620:	01045703          	lhu	a4,16(s0)
   17624:	000017b7          	lui	a5,0x1
   17628:	8007879b          	addiw	a5,a5,-2048
   1762c:	00f767b3          	or	a5,a4,a5
   17630:	00f41823          	sh	a5,16(s0)
   17634:	40000493          	li	s1,1024
   17638:	0340006f          	j	1766c <__smakebuf_r+0xb4>
   1763c:	01041783          	lh	a5,16(s0)
   17640:	03079493          	slli	s1,a5,0x30
   17644:	0304d493          	srli	s1,s1,0x30
   17648:	03849493          	slli	s1,s1,0x38
   1764c:	00001737          	lui	a4,0x1
   17650:	43f4d493          	srai	s1,s1,0x3f
   17654:	8007071b          	addiw	a4,a4,-2048
   17658:	c404f493          	andi	s1,s1,-960
   1765c:	00e7e7b3          	or	a5,a5,a4
   17660:	40048493          	addi	s1,s1,1024
   17664:	00f41823          	sh	a5,16(s0)
   17668:	00000993          	li	s3,0
   1766c:	00048593          	mv	a1,s1
   17670:	00090513          	mv	a0,s2
   17674:	ef0f90ef          	jal	10d64 <_malloc_r>
   17678:	0c050063          	beqz	a0,17738 <__smakebuf_r+0x180>
   1767c:	01045783          	lhu	a5,16(s0)
   17680:	00016737          	lui	a4,0x16
   17684:	4a070713          	addi	a4,a4,1184 # 164a0 <_cleanup_r>
   17688:	04e93c23          	sd	a4,88(s2)
   1768c:	0807e793          	ori	a5,a5,128
   17690:	00f41823          	sh	a5,16(s0)
   17694:	00a43023          	sd	a0,0(s0)
   17698:	00a43c23          	sd	a0,24(s0)
   1769c:	02942023          	sw	s1,32(s0)
   176a0:	06099e63          	bnez	s3,1771c <__smakebuf_r+0x164>
   176a4:	0a813083          	ld	ra,168(sp)
   176a8:	0a013403          	ld	s0,160(sp)
   176ac:	09813483          	ld	s1,152(sp)
   176b0:	09013903          	ld	s2,144(sp)
   176b4:	08813983          	ld	s3,136(sp)
   176b8:	0b010113          	addi	sp,sp,176
   176bc:	00008067          	ret
   176c0:	0a813083          	ld	ra,168(sp)
   176c4:	07758793          	addi	a5,a1,119
   176c8:	00f5b023          	sd	a5,0(a1)
   176cc:	00f5bc23          	sd	a5,24(a1)
   176d0:	00100793          	li	a5,1
   176d4:	0a013403          	ld	s0,160(sp)
   176d8:	09813483          	ld	s1,152(sp)
   176dc:	09013903          	ld	s2,144(sp)
   176e0:	08813983          	ld	s3,136(sp)
   176e4:	02f5a023          	sw	a5,32(a1)
   176e8:	0b010113          	addi	sp,sp,176
   176ec:	00008067          	ret
   176f0:	04843703          	ld	a4,72(s0)
   176f4:	0001a7b7          	lui	a5,0x1a
   176f8:	90c78793          	addi	a5,a5,-1780 # 1990c <__sseek>
   176fc:	f2f712e3          	bne	a4,a5,17620 <__smakebuf_r+0x68>
   17700:	01045783          	lhu	a5,16(s0)
   17704:	40000713          	li	a4,1024
   17708:	08e42423          	sw	a4,136(s0)
   1770c:	00e7e7b3          	or	a5,a5,a4
   17710:	00f41823          	sh	a5,16(s0)
   17714:	40000493          	li	s1,1024
   17718:	f55ff06f          	j	1766c <__smakebuf_r+0xb4>
   1771c:	01241503          	lh	a0,18(s0)
   17720:	639080ef          	jal	20558 <isatty>
   17724:	f80500e3          	beqz	a0,176a4 <__smakebuf_r+0xec>
   17728:	01045783          	lhu	a5,16(s0)
   1772c:	0017e793          	ori	a5,a5,1
   17730:	00f41823          	sh	a5,16(s0)
   17734:	f71ff06f          	j	176a4 <__smakebuf_r+0xec>
   17738:	01041783          	lh	a5,16(s0)
   1773c:	2007f713          	andi	a4,a5,512
   17740:	f60712e3          	bnez	a4,176a4 <__smakebuf_r+0xec>
   17744:	0027e793          	ori	a5,a5,2
   17748:	07740713          	addi	a4,s0,119
   1774c:	00f41823          	sh	a5,16(s0)
   17750:	00100793          	li	a5,1
   17754:	00e43023          	sd	a4,0(s0)
   17758:	00e43c23          	sd	a4,24(s0)
   1775c:	02f42023          	sw	a5,32(s0)
   17760:	f45ff06f          	j	176a4 <__smakebuf_r+0xec>

0000000000017764 <_mbrtowc_r>:
   17764:	fc010113          	addi	sp,sp,-64
   17768:	02913423          	sd	s1,40(sp)
   1776c:	03213023          	sd	s2,32(sp)
   17770:	02113c23          	sd	ra,56(sp)
   17774:	02813823          	sd	s0,48(sp)
   17778:	01313c23          	sd	s3,24(sp)
   1777c:	01413823          	sd	s4,16(sp)
   17780:	01513423          	sd	s5,8(sp)
   17784:	00050493          	mv	s1,a0
   17788:	00070913          	mv	s2,a4
   1778c:	06060c63          	beqz	a2,17804 <_mbrtowc_r+0xa0>
   17790:	8401ba83          	ld	s5,-1984(gp) # 24460 <__mbtowc>
   17794:	00060413          	mv	s0,a2
   17798:	00058993          	mv	s3,a1
   1779c:	00068a13          	mv	s4,a3
   177a0:	dc9ff0ef          	jal	17568 <__locale_charset>
   177a4:	00090793          	mv	a5,s2
   177a8:	00050713          	mv	a4,a0
   177ac:	000a0693          	mv	a3,s4
   177b0:	00040613          	mv	a2,s0
   177b4:	00098593          	mv	a1,s3
   177b8:	00048513          	mv	a0,s1
   177bc:	000a80e7          	jalr	s5
   177c0:	00050793          	mv	a5,a0
   177c4:	fff00713          	li	a4,-1
   177c8:	00078513          	mv	a0,a5
   177cc:	00e79a63          	bne	a5,a4,177e0 <_mbrtowc_r+0x7c>
   177d0:	00092023          	sw	zero,0(s2)
   177d4:	08a00793          	li	a5,138
   177d8:	00f4a023          	sw	a5,0(s1)
   177dc:	fff00513          	li	a0,-1
   177e0:	03813083          	ld	ra,56(sp)
   177e4:	03013403          	ld	s0,48(sp)
   177e8:	02813483          	ld	s1,40(sp)
   177ec:	02013903          	ld	s2,32(sp)
   177f0:	01813983          	ld	s3,24(sp)
   177f4:	01013a03          	ld	s4,16(sp)
   177f8:	00813a83          	ld	s5,8(sp)
   177fc:	04010113          	addi	sp,sp,64
   17800:	00008067          	ret
   17804:	8401b403          	ld	s0,-1984(gp) # 24460 <__mbtowc>
   17808:	d61ff0ef          	jal	17568 <__locale_charset>
   1780c:	00022637          	lui	a2,0x22
   17810:	00090793          	mv	a5,s2
   17814:	00050713          	mv	a4,a0
   17818:	00100693          	li	a3,1
   1781c:	85860613          	addi	a2,a2,-1960 # 21858 <zeroes.4123+0x1f0>
   17820:	00000593          	li	a1,0
   17824:	00048513          	mv	a0,s1
   17828:	000400e7          	jalr	s0
   1782c:	00050793          	mv	a5,a0
   17830:	f95ff06f          	j	177c4 <_mbrtowc_r+0x60>

0000000000017834 <mbrtowc>:
   17834:	fc010113          	addi	sp,sp,-64
   17838:	02913423          	sd	s1,40(sp)
   1783c:	03213023          	sd	s2,32(sp)
   17840:	02113c23          	sd	ra,56(sp)
   17844:	02813823          	sd	s0,48(sp)
   17848:	01313c23          	sd	s3,24(sp)
   1784c:	01413823          	sd	s4,16(sp)
   17850:	01513423          	sd	s5,8(sp)
   17854:	00068913          	mv	s2,a3
   17858:	8181b483          	ld	s1,-2024(gp) # 24438 <_impure_ptr>
   1785c:	06058c63          	beqz	a1,178d4 <mbrtowc+0xa0>
   17860:	8401ba83          	ld	s5,-1984(gp) # 24460 <__mbtowc>
   17864:	00058413          	mv	s0,a1
   17868:	00060a13          	mv	s4,a2
   1786c:	00050993          	mv	s3,a0
   17870:	cf9ff0ef          	jal	17568 <__locale_charset>
   17874:	00090793          	mv	a5,s2
   17878:	00050713          	mv	a4,a0
   1787c:	000a0693          	mv	a3,s4
   17880:	00040613          	mv	a2,s0
   17884:	00098593          	mv	a1,s3
   17888:	00048513          	mv	a0,s1
   1788c:	000a80e7          	jalr	s5
   17890:	00050793          	mv	a5,a0
   17894:	fff00713          	li	a4,-1
   17898:	00078513          	mv	a0,a5
   1789c:	00e79a63          	bne	a5,a4,178b0 <mbrtowc+0x7c>
   178a0:	00092023          	sw	zero,0(s2)
   178a4:	08a00793          	li	a5,138
   178a8:	00f4a023          	sw	a5,0(s1)
   178ac:	fff00513          	li	a0,-1
   178b0:	03813083          	ld	ra,56(sp)
   178b4:	03013403          	ld	s0,48(sp)
   178b8:	02813483          	ld	s1,40(sp)
   178bc:	02013903          	ld	s2,32(sp)
   178c0:	01813983          	ld	s3,24(sp)
   178c4:	01013a03          	ld	s4,16(sp)
   178c8:	00813a83          	ld	s5,8(sp)
   178cc:	04010113          	addi	sp,sp,64
   178d0:	00008067          	ret
   178d4:	8401b403          	ld	s0,-1984(gp) # 24460 <__mbtowc>
   178d8:	c91ff0ef          	jal	17568 <__locale_charset>
   178dc:	00022637          	lui	a2,0x22
   178e0:	00090793          	mv	a5,s2
   178e4:	00050713          	mv	a4,a0
   178e8:	00100693          	li	a3,1
   178ec:	85860613          	addi	a2,a2,-1960 # 21858 <zeroes.4123+0x1f0>
   178f0:	00000593          	li	a1,0
   178f4:	00048513          	mv	a0,s1
   178f8:	000400e7          	jalr	s0
   178fc:	00050793          	mv	a5,a0
   17900:	f95ff06f          	j	17894 <mbrtowc+0x60>

0000000000017904 <__ascii_mbtowc>:
   17904:	ff010113          	addi	sp,sp,-16
   17908:	02058463          	beqz	a1,17930 <__ascii_mbtowc+0x2c>
   1790c:	02060663          	beqz	a2,17938 <__ascii_mbtowc+0x34>
   17910:	ffe00513          	li	a0,-2
   17914:	00068a63          	beqz	a3,17928 <__ascii_mbtowc+0x24>
   17918:	00064783          	lbu	a5,0(a2)
   1791c:	00f5a023          	sw	a5,0(a1)
   17920:	00064503          	lbu	a0,0(a2)
   17924:	00a03533          	snez	a0,a0
   17928:	01010113          	addi	sp,sp,16
   1792c:	00008067          	ret
   17930:	00c10593          	addi	a1,sp,12
   17934:	fc061ee3          	bnez	a2,17910 <__ascii_mbtowc+0xc>
   17938:	00000513          	li	a0,0
   1793c:	01010113          	addi	sp,sp,16
   17940:	00008067          	ret

0000000000017944 <_mbtowc_r>:
   17944:	fc010113          	addi	sp,sp,-64
   17948:	02813823          	sd	s0,48(sp)
   1794c:	8401b403          	ld	s0,-1984(gp) # 24460 <__mbtowc>
   17950:	02113c23          	sd	ra,56(sp)
   17954:	02913423          	sd	s1,40(sp)
   17958:	03213023          	sd	s2,32(sp)
   1795c:	01313c23          	sd	s3,24(sp)
   17960:	01413823          	sd	s4,16(sp)
   17964:	01513423          	sd	s5,8(sp)
   17968:	00050493          	mv	s1,a0
   1796c:	00070a93          	mv	s5,a4
   17970:	00058913          	mv	s2,a1
   17974:	00060993          	mv	s3,a2
   17978:	00068a13          	mv	s4,a3
   1797c:	bedff0ef          	jal	17568 <__locale_charset>
   17980:	000a8793          	mv	a5,s5
   17984:	00050713          	mv	a4,a0
   17988:	000a0693          	mv	a3,s4
   1798c:	00098613          	mv	a2,s3
   17990:	00090593          	mv	a1,s2
   17994:	00048513          	mv	a0,s1
   17998:	00040313          	mv	t1,s0
   1799c:	03813083          	ld	ra,56(sp)
   179a0:	03013403          	ld	s0,48(sp)
   179a4:	02813483          	ld	s1,40(sp)
   179a8:	02013903          	ld	s2,32(sp)
   179ac:	01813983          	ld	s3,24(sp)
   179b0:	01013a03          	ld	s4,16(sp)
   179b4:	00813a83          	ld	s5,8(sp)
   179b8:	04010113          	addi	sp,sp,64
   179bc:	00030067          	jr	t1

00000000000179c0 <memchr>:
   179c0:	00757793          	andi	a5,a0,7
   179c4:	0ff5f813          	andi	a6,a1,255
   179c8:	0c078c63          	beqz	a5,17aa0 <memchr+0xe0>
   179cc:	fff60793          	addi	a5,a2,-1
   179d0:	06060463          	beqz	a2,17a38 <memchr+0x78>
   179d4:	00054703          	lbu	a4,0(a0)
   179d8:	07070263          	beq	a4,a6,17a3c <memchr+0x7c>
   179dc:	00080693          	mv	a3,a6
   179e0:	0140006f          	j	179f4 <memchr+0x34>
   179e4:	04078a63          	beqz	a5,17a38 <memchr+0x78>
   179e8:	00054703          	lbu	a4,0(a0)
   179ec:	fff78793          	addi	a5,a5,-1
   179f0:	04d70663          	beq	a4,a3,17a3c <memchr+0x7c>
   179f4:	00150513          	addi	a0,a0,1
   179f8:	00757713          	andi	a4,a0,7
   179fc:	fe0714e3          	bnez	a4,179e4 <memchr+0x24>
   17a00:	00700693          	li	a3,7
   17a04:	02f6ee63          	bltu	a3,a5,17a40 <memchr+0x80>
   17a08:	02078863          	beqz	a5,17a38 <memchr+0x78>
   17a0c:	00054703          	lbu	a4,0(a0)
   17a10:	03070663          	beq	a4,a6,17a3c <memchr+0x7c>
   17a14:	00150713          	addi	a4,a0,1
   17a18:	00f507b3          	add	a5,a0,a5
   17a1c:	00080613          	mv	a2,a6
   17a20:	0100006f          	j	17a30 <memchr+0x70>
   17a24:	00170713          	addi	a4,a4,1
   17a28:	fff74683          	lbu	a3,-1(a4)
   17a2c:	00c68863          	beq	a3,a2,17a3c <memchr+0x7c>
   17a30:	00070513          	mv	a0,a4
   17a34:	fee798e3          	bne	a5,a4,17a24 <memchr+0x64>
   17a38:	00000513          	li	a0,0
   17a3c:	00008067          	ret
   17a40:	0ff5f593          	andi	a1,a1,255
   17a44:	0085971b          	slliw	a4,a1,0x8
   17a48:	00b765b3          	or	a1,a4,a1
   17a4c:	00058713          	mv	a4,a1
   17a50:	01071613          	slli	a2,a4,0x10
   17a54:	00c76733          	or	a4,a4,a2
   17a58:	00024637          	lui	a2,0x24
   17a5c:	4d063303          	ld	t1,1232(a2) # 244d0 <mask+0x50>
   17a60:	00024637          	lui	a2,0x24
   17a64:	4d863883          	ld	a7,1240(a2) # 244d8 <mask+0x58>
   17a68:	02071613          	slli	a2,a4,0x20
   17a6c:	00e66633          	or	a2,a2,a4
   17a70:	00068593          	mv	a1,a3
   17a74:	00053703          	ld	a4,0(a0)
   17a78:	00e64733          	xor	a4,a2,a4
   17a7c:	006706b3          	add	a3,a4,t1
   17a80:	fff74713          	not	a4,a4
   17a84:	00e6f733          	and	a4,a3,a4
   17a88:	01177733          	and	a4,a4,a7
   17a8c:	f80710e3          	bnez	a4,17a0c <memchr+0x4c>
   17a90:	ff878793          	addi	a5,a5,-8
   17a94:	00850513          	addi	a0,a0,8
   17a98:	fcf5eee3          	bltu	a1,a5,17a74 <memchr+0xb4>
   17a9c:	f6dff06f          	j	17a08 <memchr+0x48>
   17aa0:	00060793          	mv	a5,a2
   17aa4:	f5dff06f          	j	17a00 <memchr+0x40>

0000000000017aa8 <memcpy>:
   17aa8:	00a5c7b3          	xor	a5,a1,a0
   17aac:	0077f793          	andi	a5,a5,7
   17ab0:	00c508b3          	add	a7,a0,a2
   17ab4:	0e079263          	bnez	a5,17b98 <memcpy+0xf0>
   17ab8:	00700793          	li	a5,7
   17abc:	0ec7fe63          	bleu	a2,a5,17bb8 <memcpy+0x110>
   17ac0:	00757793          	andi	a5,a0,7
   17ac4:	04079a63          	bnez	a5,17b18 <memcpy+0x70>
   17ac8:	ff88f813          	andi	a6,a7,-8
   17acc:	fc080793          	addi	a5,a6,-64
   17ad0:	00050713          	mv	a4,a0
   17ad4:	06f56663          	bltu	a0,a5,17b40 <memcpy+0x98>
   17ad8:	00058693          	mv	a3,a1
   17adc:	00070793          	mv	a5,a4
   17ae0:	03077863          	bleu	a6,a4,17b10 <memcpy+0x68>
   17ae4:	0006b603          	ld	a2,0(a3)
   17ae8:	00878793          	addi	a5,a5,8
   17aec:	00868693          	addi	a3,a3,8
   17af0:	fec7bc23          	sd	a2,-8(a5)
   17af4:	ff07e8e3          	bltu	a5,a6,17ae4 <memcpy+0x3c>
   17af8:	fff74793          	not	a5,a4
   17afc:	01078833          	add	a6,a5,a6
   17b00:	ff887813          	andi	a6,a6,-8
   17b04:	00880813          	addi	a6,a6,8
   17b08:	01070733          	add	a4,a4,a6
   17b0c:	010585b3          	add	a1,a1,a6
   17b10:	09176863          	bltu	a4,a7,17ba0 <memcpy+0xf8>
   17b14:	00008067          	ret
   17b18:	00050713          	mv	a4,a0
   17b1c:	0005c683          	lbu	a3,0(a1)
   17b20:	00170713          	addi	a4,a4,1
   17b24:	00777793          	andi	a5,a4,7
   17b28:	fed70fa3          	sb	a3,-1(a4)
   17b2c:	00158593          	addi	a1,a1,1
   17b30:	fe0796e3          	bnez	a5,17b1c <memcpy+0x74>
   17b34:	ff88f813          	andi	a6,a7,-8
   17b38:	fc080793          	addi	a5,a6,-64
   17b3c:	f8f77ee3          	bleu	a5,a4,17ad8 <memcpy+0x30>
   17b40:	0005b383          	ld	t2,0(a1)
   17b44:	0085b283          	ld	t0,8(a1)
   17b48:	0105bf83          	ld	t6,16(a1)
   17b4c:	0185bf03          	ld	t5,24(a1)
   17b50:	0205be83          	ld	t4,32(a1)
   17b54:	0285be03          	ld	t3,40(a1)
   17b58:	0305b303          	ld	t1,48(a1)
   17b5c:	0385b603          	ld	a2,56(a1)
   17b60:	04858593          	addi	a1,a1,72
   17b64:	04870713          	addi	a4,a4,72
   17b68:	ff85b683          	ld	a3,-8(a1)
   17b6c:	fa773c23          	sd	t2,-72(a4)
   17b70:	fc573023          	sd	t0,-64(a4)
   17b74:	fdf73423          	sd	t6,-56(a4)
   17b78:	fde73823          	sd	t5,-48(a4)
   17b7c:	fdd73c23          	sd	t4,-40(a4)
   17b80:	ffc73023          	sd	t3,-32(a4)
   17b84:	fe673423          	sd	t1,-24(a4)
   17b88:	fec73823          	sd	a2,-16(a4)
   17b8c:	fed73c23          	sd	a3,-8(a4)
   17b90:	faf768e3          	bltu	a4,a5,17b40 <memcpy+0x98>
   17b94:	f45ff06f          	j	17ad8 <memcpy+0x30>
   17b98:	00050713          	mv	a4,a0
   17b9c:	03157463          	bleu	a7,a0,17bc4 <memcpy+0x11c>
   17ba0:	0005c783          	lbu	a5,0(a1)
   17ba4:	00170713          	addi	a4,a4,1
   17ba8:	00158593          	addi	a1,a1,1
   17bac:	fef70fa3          	sb	a5,-1(a4)
   17bb0:	ff1768e3          	bltu	a4,a7,17ba0 <memcpy+0xf8>
   17bb4:	00008067          	ret
   17bb8:	00050713          	mv	a4,a0
   17bbc:	ff1562e3          	bltu	a0,a7,17ba0 <memcpy+0xf8>
   17bc0:	f55ff06f          	j	17b14 <memcpy+0x6c>
   17bc4:	00008067          	ret

0000000000017bc8 <memmove>:
   17bc8:	02a5f863          	bleu	a0,a1,17bf8 <memmove+0x30>
   17bcc:	00c58733          	add	a4,a1,a2
   17bd0:	02e57463          	bleu	a4,a0,17bf8 <memmove+0x30>
   17bd4:	00c507b3          	add	a5,a0,a2
   17bd8:	40c785b3          	sub	a1,a5,a2
   17bdc:	0e060263          	beqz	a2,17cc0 <memmove+0xf8>
   17be0:	fff70713          	addi	a4,a4,-1
   17be4:	00074683          	lbu	a3,0(a4)
   17be8:	fff78793          	addi	a5,a5,-1
   17bec:	00d78023          	sb	a3,0(a5)
   17bf0:	fef598e3          	bne	a1,a5,17be0 <memmove+0x18>
   17bf4:	00008067          	ret
   17bf8:	01f00893          	li	a7,31
   17bfc:	0cc8f463          	bleu	a2,a7,17cc4 <memmove+0xfc>
   17c00:	00a5e7b3          	or	a5,a1,a0
   17c04:	0077f793          	andi	a5,a5,7
   17c08:	0c079463          	bnez	a5,17cd0 <memmove+0x108>
   17c0c:	00058713          	mv	a4,a1
   17c10:	00050793          	mv	a5,a0
   17c14:	00060693          	mv	a3,a2
   17c18:	00073803          	ld	a6,0(a4)
   17c1c:	02078793          	addi	a5,a5,32
   17c20:	02070713          	addi	a4,a4,32
   17c24:	ff07b023          	sd	a6,-32(a5)
   17c28:	fe873803          	ld	a6,-24(a4)
   17c2c:	fe068693          	addi	a3,a3,-32
   17c30:	ff07b423          	sd	a6,-24(a5)
   17c34:	ff073803          	ld	a6,-16(a4)
   17c38:	ff07b823          	sd	a6,-16(a5)
   17c3c:	ff873803          	ld	a6,-8(a4)
   17c40:	ff07bc23          	sd	a6,-8(a5)
   17c44:	fcd8eae3          	bltu	a7,a3,17c18 <memmove+0x50>
   17c48:	fe060713          	addi	a4,a2,-32
   17c4c:	fe077713          	andi	a4,a4,-32
   17c50:	02070713          	addi	a4,a4,32
   17c54:	01f67e13          	andi	t3,a2,31
   17c58:	00700313          	li	t1,7
   17c5c:	00e507b3          	add	a5,a0,a4
   17c60:	00e585b3          	add	a1,a1,a4
   17c64:	07c37c63          	bleu	t3,t1,17cdc <memmove+0x114>
   17c68:	00058813          	mv	a6,a1
   17c6c:	00078693          	mv	a3,a5
   17c70:	000e0713          	mv	a4,t3
   17c74:	00880813          	addi	a6,a6,8
   17c78:	ff883883          	ld	a7,-8(a6)
   17c7c:	00868693          	addi	a3,a3,8
   17c80:	ff870713          	addi	a4,a4,-8
   17c84:	ff16bc23          	sd	a7,-8(a3)
   17c88:	fee366e3          	bltu	t1,a4,17c74 <memmove+0xac>
   17c8c:	ff8e0713          	addi	a4,t3,-8
   17c90:	ff877713          	andi	a4,a4,-8
   17c94:	00870713          	addi	a4,a4,8
   17c98:	00767613          	andi	a2,a2,7
   17c9c:	00e787b3          	add	a5,a5,a4
   17ca0:	00e585b3          	add	a1,a1,a4
   17ca4:	02060a63          	beqz	a2,17cd8 <memmove+0x110>
   17ca8:	00c78633          	add	a2,a5,a2
   17cac:	00158593          	addi	a1,a1,1
   17cb0:	fff5c703          	lbu	a4,-1(a1)
   17cb4:	00178793          	addi	a5,a5,1
   17cb8:	fee78fa3          	sb	a4,-1(a5)
   17cbc:	fec798e3          	bne	a5,a2,17cac <memmove+0xe4>
   17cc0:	00008067          	ret
   17cc4:	00050793          	mv	a5,a0
   17cc8:	fe0610e3          	bnez	a2,17ca8 <memmove+0xe0>
   17ccc:	00c0006f          	j	17cd8 <memmove+0x110>
   17cd0:	00050793          	mv	a5,a0
   17cd4:	fd5ff06f          	j	17ca8 <memmove+0xe0>
   17cd8:	00008067          	ret
   17cdc:	000e0613          	mv	a2,t3
   17ce0:	fc0614e3          	bnez	a2,17ca8 <memmove+0xe0>
   17ce4:	ff5ff06f          	j	17cd8 <memmove+0x110>

0000000000017ce8 <memset>:
   17ce8:	00f00813          	li	a6,15
   17cec:	00050713          	mv	a4,a0
   17cf0:	02c87a63          	bleu	a2,a6,17d24 <memset+0x3c>
   17cf4:	00f77793          	andi	a5,a4,15
   17cf8:	0a079063          	bnez	a5,17d98 <memset+0xb0>
   17cfc:	06059e63          	bnez	a1,17d78 <memset+0x90>
   17d00:	ff067693          	andi	a3,a2,-16
   17d04:	00f67613          	andi	a2,a2,15
   17d08:	00e686b3          	add	a3,a3,a4
   17d0c:	00b73023          	sd	a1,0(a4)
   17d10:	00b73423          	sd	a1,8(a4)
   17d14:	01070713          	addi	a4,a4,16
   17d18:	fed76ae3          	bltu	a4,a3,17d0c <memset+0x24>
   17d1c:	00061463          	bnez	a2,17d24 <memset+0x3c>
   17d20:	00008067          	ret
   17d24:	40c806b3          	sub	a3,a6,a2
   17d28:	00269693          	slli	a3,a3,0x2
   17d2c:	00000297          	auipc	t0,0x0
   17d30:	005686b3          	add	a3,a3,t0
   17d34:	00c68067          	jr	a3,12
   17d38:	00b70723          	sb	a1,14(a4)
   17d3c:	00b706a3          	sb	a1,13(a4)
   17d40:	00b70623          	sb	a1,12(a4)
   17d44:	00b705a3          	sb	a1,11(a4)
   17d48:	00b70523          	sb	a1,10(a4)
   17d4c:	00b704a3          	sb	a1,9(a4)
   17d50:	00b70423          	sb	a1,8(a4)
   17d54:	00b703a3          	sb	a1,7(a4)
   17d58:	00b70323          	sb	a1,6(a4)
   17d5c:	00b702a3          	sb	a1,5(a4)
   17d60:	00b70223          	sb	a1,4(a4)
   17d64:	00b701a3          	sb	a1,3(a4)
   17d68:	00b70123          	sb	a1,2(a4)
   17d6c:	00b700a3          	sb	a1,1(a4)
   17d70:	00b70023          	sb	a1,0(a4)
   17d74:	00008067          	ret
   17d78:	0ff5f593          	andi	a1,a1,255
   17d7c:	00859693          	slli	a3,a1,0x8
   17d80:	00d5e5b3          	or	a1,a1,a3
   17d84:	01059693          	slli	a3,a1,0x10
   17d88:	00d5e5b3          	or	a1,a1,a3
   17d8c:	02059693          	slli	a3,a1,0x20
   17d90:	00d5e5b3          	or	a1,a1,a3
   17d94:	f6dff06f          	j	17d00 <memset+0x18>
   17d98:	00279693          	slli	a3,a5,0x2
   17d9c:	00000297          	auipc	t0,0x0
   17da0:	005686b3          	add	a3,a3,t0
   17da4:	00008293          	mv	t0,ra
   17da8:	f98680e7          	jalr	a3,-104
   17dac:	00028093          	mv	ra,t0
   17db0:	ff078793          	addi	a5,a5,-16
   17db4:	40f70733          	sub	a4,a4,a5
   17db8:	00f60633          	add	a2,a2,a5
   17dbc:	f6c874e3          	bleu	a2,a6,17d24 <memset+0x3c>
   17dc0:	f3dff06f          	j	17cfc <memset+0x14>

0000000000017dc4 <_Balloc>:
   17dc4:	07853783          	ld	a5,120(a0)
   17dc8:	fe010113          	addi	sp,sp,-32
   17dcc:	00813823          	sd	s0,16(sp)
   17dd0:	00913423          	sd	s1,8(sp)
   17dd4:	00113c23          	sd	ra,24(sp)
   17dd8:	01213023          	sd	s2,0(sp)
   17ddc:	00050413          	mv	s0,a0
   17de0:	00058493          	mv	s1,a1
   17de4:	02078e63          	beqz	a5,17e20 <_Balloc+0x5c>
   17de8:	00349513          	slli	a0,s1,0x3
   17dec:	00a787b3          	add	a5,a5,a0
   17df0:	0007b503          	ld	a0,0(a5)
   17df4:	04050663          	beqz	a0,17e40 <_Balloc+0x7c>
   17df8:	00053703          	ld	a4,0(a0)
   17dfc:	00e7b023          	sd	a4,0(a5)
   17e00:	00052a23          	sw	zero,20(a0)
   17e04:	00052823          	sw	zero,16(a0)
   17e08:	01813083          	ld	ra,24(sp)
   17e0c:	01013403          	ld	s0,16(sp)
   17e10:	00813483          	ld	s1,8(sp)
   17e14:	00013903          	ld	s2,0(sp)
   17e18:	02010113          	addi	sp,sp,32
   17e1c:	00008067          	ret
   17e20:	04100613          	li	a2,65
   17e24:	00800593          	li	a1,8
   17e28:	388060ef          	jal	1e1b0 <_calloc_r>
   17e2c:	06a43c23          	sd	a0,120(s0)
   17e30:	00050793          	mv	a5,a0
   17e34:	fa051ae3          	bnez	a0,17de8 <_Balloc+0x24>
   17e38:	00000513          	li	a0,0
   17e3c:	fcdff06f          	j	17e08 <_Balloc+0x44>
   17e40:	00100913          	li	s2,1
   17e44:	0099193b          	sllw	s2,s2,s1
   17e48:	fff9061b          	addiw	a2,s2,-1
   17e4c:	00860613          	addi	a2,a2,8
   17e50:	00261613          	slli	a2,a2,0x2
   17e54:	00100593          	li	a1,1
   17e58:	00040513          	mv	a0,s0
   17e5c:	354060ef          	jal	1e1b0 <_calloc_r>
   17e60:	fc050ce3          	beqz	a0,17e38 <_Balloc+0x74>
   17e64:	00952423          	sw	s1,8(a0)
   17e68:	01252623          	sw	s2,12(a0)
   17e6c:	f95ff06f          	j	17e00 <_Balloc+0x3c>

0000000000017e70 <_Bfree>:
   17e70:	02058063          	beqz	a1,17e90 <_Bfree+0x20>
   17e74:	0085a783          	lw	a5,8(a1)
   17e78:	07853703          	ld	a4,120(a0)
   17e7c:	00379793          	slli	a5,a5,0x3
   17e80:	00f707b3          	add	a5,a4,a5
   17e84:	0007b703          	ld	a4,0(a5)
   17e88:	00e5b023          	sd	a4,0(a1)
   17e8c:	00b7b023          	sd	a1,0(a5)
   17e90:	00008067          	ret

0000000000017e94 <__multadd>:
   17e94:	fc010113          	addi	sp,sp,-64
   17e98:	00010837          	lui	a6,0x10
   17e9c:	02813823          	sd	s0,48(sp)
   17ea0:	02913423          	sd	s1,40(sp)
   17ea4:	03213023          	sd	s2,32(sp)
   17ea8:	00058493          	mv	s1,a1
   17eac:	0145a403          	lw	s0,20(a1)
   17eb0:	00050913          	mv	s2,a0
   17eb4:	02113c23          	sd	ra,56(sp)
   17eb8:	01313c23          	sd	s3,24(sp)
   17ebc:	01858593          	addi	a1,a1,24
   17ec0:	00000513          	li	a0,0
   17ec4:	fff8081b          	addiw	a6,a6,-1
   17ec8:	0005a783          	lw	a5,0(a1)
   17ecc:	00458593          	addi	a1,a1,4
   17ed0:	0015051b          	addiw	a0,a0,1
   17ed4:	0107f733          	and	a4,a5,a6
   17ed8:	02c7073b          	mulw	a4,a4,a2
   17edc:	0107d79b          	srliw	a5,a5,0x10
   17ee0:	02c787bb          	mulw	a5,a5,a2
   17ee4:	00d7073b          	addw	a4,a4,a3
   17ee8:	0107569b          	srliw	a3,a4,0x10
   17eec:	01077733          	and	a4,a4,a6
   17ef0:	00d786bb          	addw	a3,a5,a3
   17ef4:	0106979b          	slliw	a5,a3,0x10
   17ef8:	00e7873b          	addw	a4,a5,a4
   17efc:	fee5ae23          	sw	a4,-4(a1)
   17f00:	0106d69b          	srliw	a3,a3,0x10
   17f04:	fc8542e3          	blt	a0,s0,17ec8 <__multadd+0x34>
   17f08:	02068263          	beqz	a3,17f2c <__multadd+0x98>
   17f0c:	00c4a783          	lw	a5,12(s1)
   17f10:	02f45e63          	ble	a5,s0,17f4c <__multadd+0xb8>
   17f14:	00440793          	addi	a5,s0,4
   17f18:	00279793          	slli	a5,a5,0x2
   17f1c:	00f487b3          	add	a5,s1,a5
   17f20:	00d7a423          	sw	a3,8(a5)
   17f24:	0014041b          	addiw	s0,s0,1
   17f28:	0084aa23          	sw	s0,20(s1)
   17f2c:	03813083          	ld	ra,56(sp)
   17f30:	00048513          	mv	a0,s1
   17f34:	03013403          	ld	s0,48(sp)
   17f38:	02813483          	ld	s1,40(sp)
   17f3c:	02013903          	ld	s2,32(sp)
   17f40:	01813983          	ld	s3,24(sp)
   17f44:	04010113          	addi	sp,sp,64
   17f48:	00008067          	ret
   17f4c:	0084a583          	lw	a1,8(s1)
   17f50:	00090513          	mv	a0,s2
   17f54:	00d13423          	sd	a3,8(sp)
   17f58:	0015859b          	addiw	a1,a1,1
   17f5c:	e69ff0ef          	jal	17dc4 <_Balloc>
   17f60:	0144a603          	lw	a2,20(s1)
   17f64:	00050993          	mv	s3,a0
   17f68:	01048593          	addi	a1,s1,16
   17f6c:	00260613          	addi	a2,a2,2
   17f70:	01050513          	addi	a0,a0,16
   17f74:	00261613          	slli	a2,a2,0x2
   17f78:	b31ff0ef          	jal	17aa8 <memcpy>
   17f7c:	0084a703          	lw	a4,8(s1)
   17f80:	07893783          	ld	a5,120(s2)
   17f84:	00813683          	ld	a3,8(sp)
   17f88:	00371713          	slli	a4,a4,0x3
   17f8c:	00e787b3          	add	a5,a5,a4
   17f90:	0007b703          	ld	a4,0(a5)
   17f94:	00e4b023          	sd	a4,0(s1)
   17f98:	0097b023          	sd	s1,0(a5)
   17f9c:	00098493          	mv	s1,s3
   17fa0:	f75ff06f          	j	17f14 <__multadd+0x80>

0000000000017fa4 <__s2b>:
   17fa4:	fc010113          	addi	sp,sp,-64
   17fa8:	0086879b          	addiw	a5,a3,8
   17fac:	03213023          	sd	s2,32(sp)
   17fb0:	00068913          	mv	s2,a3
   17fb4:	00900693          	li	a3,9
   17fb8:	02d7c6bb          	divw	a3,a5,a3
   17fbc:	02813823          	sd	s0,48(sp)
   17fc0:	02913423          	sd	s1,40(sp)
   17fc4:	01313c23          	sd	s3,24(sp)
   17fc8:	01413823          	sd	s4,16(sp)
   17fcc:	02113c23          	sd	ra,56(sp)
   17fd0:	01513423          	sd	s5,8(sp)
   17fd4:	01613023          	sd	s6,0(sp)
   17fd8:	00100793          	li	a5,1
   17fdc:	00058413          	mv	s0,a1
   17fe0:	00050993          	mv	s3,a0
   17fe4:	00060a13          	mv	s4,a2
   17fe8:	00070493          	mv	s1,a4
   17fec:	00000593          	li	a1,0
   17ff0:	00d7d863          	ble	a3,a5,18000 <__s2b+0x5c>
   17ff4:	0017979b          	slliw	a5,a5,0x1
   17ff8:	0015859b          	addiw	a1,a1,1
   17ffc:	fed7cce3          	blt	a5,a3,17ff4 <__s2b+0x50>
   18000:	00098513          	mv	a0,s3
   18004:	dc1ff0ef          	jal	17dc4 <_Balloc>
   18008:	00100793          	li	a5,1
   1800c:	00f52a23          	sw	a5,20(a0)
   18010:	00952c23          	sw	s1,24(a0)
   18014:	00900793          	li	a5,9
   18018:	0b47d663          	ble	s4,a5,180c4 <__s2b+0x120>
   1801c:	ff6a0b1b          	addiw	s6,s4,-10
   18020:	020b1b13          	slli	s6,s6,0x20
   18024:	020b5b13          	srli	s6,s6,0x20
   18028:	00940a93          	addi	s5,s0,9
   1802c:	00ab0793          	addi	a5,s6,10
   18030:	00f40433          	add	s0,s0,a5
   18034:	000a8493          	mv	s1,s5
   18038:	00148493          	addi	s1,s1,1
   1803c:	fff4c683          	lbu	a3,-1(s1)
   18040:	00050593          	mv	a1,a0
   18044:	00a00613          	li	a2,10
   18048:	fd06869b          	addiw	a3,a3,-48
   1804c:	00098513          	mv	a0,s3
   18050:	e45ff0ef          	jal	17e94 <__multadd>
   18054:	fe8492e3          	bne	s1,s0,18038 <__s2b+0x94>
   18058:	016a8433          	add	s0,s5,s6
   1805c:	00240413          	addi	s0,s0,2
   18060:	032a5e63          	ble	s2,s4,1809c <__s2b+0xf8>
   18064:	fff9091b          	addiw	s2,s2,-1
   18068:	414904bb          	subw	s1,s2,s4
   1806c:	02049493          	slli	s1,s1,0x20
   18070:	0204d493          	srli	s1,s1,0x20
   18074:	00148493          	addi	s1,s1,1
   18078:	009404b3          	add	s1,s0,s1
   1807c:	00140413          	addi	s0,s0,1
   18080:	fff44683          	lbu	a3,-1(s0)
   18084:	00050593          	mv	a1,a0
   18088:	00a00613          	li	a2,10
   1808c:	fd06869b          	addiw	a3,a3,-48
   18090:	00098513          	mv	a0,s3
   18094:	e01ff0ef          	jal	17e94 <__multadd>
   18098:	fe9412e3          	bne	s0,s1,1807c <__s2b+0xd8>
   1809c:	03813083          	ld	ra,56(sp)
   180a0:	03013403          	ld	s0,48(sp)
   180a4:	02813483          	ld	s1,40(sp)
   180a8:	02013903          	ld	s2,32(sp)
   180ac:	01813983          	ld	s3,24(sp)
   180b0:	01013a03          	ld	s4,16(sp)
   180b4:	00813a83          	ld	s5,8(sp)
   180b8:	00013b03          	ld	s6,0(sp)
   180bc:	04010113          	addi	sp,sp,64
   180c0:	00008067          	ret
   180c4:	00a40413          	addi	s0,s0,10
   180c8:	00078a13          	mv	s4,a5
   180cc:	f95ff06f          	j	18060 <__s2b+0xbc>

00000000000180d0 <__hi0bits>:
   180d0:	ffff06b7          	lui	a3,0xffff0
   180d4:	00d576b3          	and	a3,a0,a3
   180d8:	00050793          	mv	a5,a0
   180dc:	00000713          	li	a4,0
   180e0:	00069663          	bnez	a3,180ec <__hi0bits+0x1c>
   180e4:	0105179b          	slliw	a5,a0,0x10
   180e8:	01000713          	li	a4,16
   180ec:	ff0006b7          	lui	a3,0xff000
   180f0:	00d7f6b3          	and	a3,a5,a3
   180f4:	00069663          	bnez	a3,18100 <__hi0bits+0x30>
   180f8:	0087071b          	addiw	a4,a4,8
   180fc:	0087979b          	slliw	a5,a5,0x8
   18100:	f00006b7          	lui	a3,0xf0000
   18104:	00d7f6b3          	and	a3,a5,a3
   18108:	00069663          	bnez	a3,18114 <__hi0bits+0x44>
   1810c:	0047071b          	addiw	a4,a4,4
   18110:	0047979b          	slliw	a5,a5,0x4
   18114:	c00006b7          	lui	a3,0xc0000
   18118:	00d7f6b3          	and	a3,a5,a3
   1811c:	00069663          	bnez	a3,18128 <__hi0bits+0x58>
   18120:	0027071b          	addiw	a4,a4,2
   18124:	0027979b          	slliw	a5,a5,0x2
   18128:	0007ce63          	bltz	a5,18144 <__hi0bits+0x74>
   1812c:	02179693          	slli	a3,a5,0x21
   18130:	02000513          	li	a0,32
   18134:	0006c463          	bltz	a3,1813c <__hi0bits+0x6c>
   18138:	00008067          	ret
   1813c:	0017051b          	addiw	a0,a4,1
   18140:	00008067          	ret
   18144:	00070513          	mv	a0,a4
   18148:	00008067          	ret

000000000001814c <__lo0bits>:
   1814c:	00052783          	lw	a5,0(a0)
   18150:	00050693          	mv	a3,a0
   18154:	0077f713          	andi	a4,a5,7
   18158:	02070463          	beqz	a4,18180 <__lo0bits+0x34>
   1815c:	0017f713          	andi	a4,a5,1
   18160:	00000513          	li	a0,0
   18164:	08071263          	bnez	a4,181e8 <__lo0bits+0x9c>
   18168:	0027f713          	andi	a4,a5,2
   1816c:	08071063          	bnez	a4,181ec <__lo0bits+0xa0>
   18170:	0027d79b          	srliw	a5,a5,0x2
   18174:	00f6a023          	sw	a5,0(a3) # ffffffffc0000000 <_end+0xffffffffbffd9208>
   18178:	00200513          	li	a0,2
   1817c:	00008067          	ret
   18180:	0107961b          	slliw	a2,a5,0x10
   18184:	0106561b          	srliw	a2,a2,0x10
   18188:	00000713          	li	a4,0
   1818c:	00061663          	bnez	a2,18198 <__lo0bits+0x4c>
   18190:	0107d79b          	srliw	a5,a5,0x10
   18194:	01000713          	li	a4,16
   18198:	0ff7f613          	andi	a2,a5,255
   1819c:	00061663          	bnez	a2,181a8 <__lo0bits+0x5c>
   181a0:	0087071b          	addiw	a4,a4,8
   181a4:	0087d79b          	srliw	a5,a5,0x8
   181a8:	00f7f613          	andi	a2,a5,15
   181ac:	00061663          	bnez	a2,181b8 <__lo0bits+0x6c>
   181b0:	0047071b          	addiw	a4,a4,4
   181b4:	0047d79b          	srliw	a5,a5,0x4
   181b8:	0037f613          	andi	a2,a5,3
   181bc:	00061663          	bnez	a2,181c8 <__lo0bits+0x7c>
   181c0:	0027071b          	addiw	a4,a4,2
   181c4:	0027d79b          	srliw	a5,a5,0x2
   181c8:	0017f613          	andi	a2,a5,1
   181cc:	00061a63          	bnez	a2,181e0 <__lo0bits+0x94>
   181d0:	0017d79b          	srliw	a5,a5,0x1
   181d4:	02000513          	li	a0,32
   181d8:	00078863          	beqz	a5,181e8 <__lo0bits+0x9c>
   181dc:	0017071b          	addiw	a4,a4,1
   181e0:	00f6a023          	sw	a5,0(a3)
   181e4:	00070513          	mv	a0,a4
   181e8:	00008067          	ret
   181ec:	0017d79b          	srliw	a5,a5,0x1
   181f0:	00f6a023          	sw	a5,0(a3)
   181f4:	00100513          	li	a0,1
   181f8:	00008067          	ret

00000000000181fc <__i2b>:
   181fc:	ff010113          	addi	sp,sp,-16
   18200:	00813023          	sd	s0,0(sp)
   18204:	00058413          	mv	s0,a1
   18208:	00100593          	li	a1,1
   1820c:	00113423          	sd	ra,8(sp)
   18210:	bb5ff0ef          	jal	17dc4 <_Balloc>
   18214:	00813083          	ld	ra,8(sp)
   18218:	00100713          	li	a4,1
   1821c:	00852c23          	sw	s0,24(a0)
   18220:	00e52a23          	sw	a4,20(a0)
   18224:	00013403          	ld	s0,0(sp)
   18228:	01010113          	addi	sp,sp,16
   1822c:	00008067          	ret

0000000000018230 <__multiply>:
   18230:	fd010113          	addi	sp,sp,-48
   18234:	01313423          	sd	s3,8(sp)
   18238:	01413023          	sd	s4,0(sp)
   1823c:	0145a983          	lw	s3,20(a1)
   18240:	01462a03          	lw	s4,20(a2)
   18244:	00913c23          	sd	s1,24(sp)
   18248:	01213823          	sd	s2,16(sp)
   1824c:	02113423          	sd	ra,40(sp)
   18250:	02813023          	sd	s0,32(sp)
   18254:	00058913          	mv	s2,a1
   18258:	00060493          	mv	s1,a2
   1825c:	0149dc63          	ble	s4,s3,18274 <__multiply+0x44>
   18260:	00098713          	mv	a4,s3
   18264:	00060913          	mv	s2,a2
   18268:	000a0993          	mv	s3,s4
   1826c:	00058493          	mv	s1,a1
   18270:	00070a13          	mv	s4,a4
   18274:	00c92783          	lw	a5,12(s2)
   18278:	00892583          	lw	a1,8(s2)
   1827c:	0149843b          	addw	s0,s3,s4
   18280:	0087a7b3          	slt	a5,a5,s0
   18284:	00f585bb          	addw	a1,a1,a5
   18288:	b3dff0ef          	jal	17dc4 <_Balloc>
   1828c:	00040893          	mv	a7,s0
   18290:	01850313          	addi	t1,a0,24
   18294:	00289893          	slli	a7,a7,0x2
   18298:	011308b3          	add	a7,t1,a7
   1829c:	00030793          	mv	a5,t1
   182a0:	01137863          	bleu	a7,t1,182b0 <__multiply+0x80>
   182a4:	0007a023          	sw	zero,0(a5)
   182a8:	00478793          	addi	a5,a5,4
   182ac:	ff17ece3          	bltu	a5,a7,182a4 <__multiply+0x74>
   182b0:	01848613          	addi	a2,s1,24
   182b4:	002a1e13          	slli	t3,s4,0x2
   182b8:	01890e93          	addi	t4,s2,24
   182bc:	00299813          	slli	a6,s3,0x2
   182c0:	000105b7          	lui	a1,0x10
   182c4:	01c60e33          	add	t3,a2,t3
   182c8:	010e8833          	add	a6,t4,a6
   182cc:	fff5859b          	addiw	a1,a1,-1
   182d0:	11c67463          	bleu	t3,a2,183d8 <__multiply+0x1a8>
   182d4:	00062383          	lw	t2,0(a2)
   182d8:	00b3f4b3          	and	s1,t2,a1
   182dc:	06048a63          	beqz	s1,18350 <__multiply+0x120>
   182e0:	00030293          	mv	t0,t1
   182e4:	000e8f93          	mv	t6,t4
   182e8:	00000793          	li	a5,0
   182ec:	0080006f          	j	182f4 <__multiply+0xc4>
   182f0:	00038293          	mv	t0,t2
   182f4:	000fa683          	lw	a3,0(t6)
   182f8:	0002af03          	lw	t5,0(t0) # 17d9c <memset+0xb4>
   182fc:	00428393          	addi	t2,t0,4
   18300:	00b6f733          	and	a4,a3,a1
   18304:	0297073b          	mulw	a4,a4,s1
   18308:	0106d69b          	srliw	a3,a3,0x10
   1830c:	00bf7933          	and	s2,t5,a1
   18310:	010f5f1b          	srliw	t5,t5,0x10
   18314:	004f8f93          	addi	t6,t6,4
   18318:	029686bb          	mulw	a3,a3,s1
   1831c:	0127073b          	addw	a4,a4,s2
   18320:	00f707bb          	addw	a5,a4,a5
   18324:	0107d71b          	srliw	a4,a5,0x10
   18328:	00b7f7b3          	and	a5,a5,a1
   1832c:	01e686bb          	addw	a3,a3,t5
   18330:	00e6873b          	addw	a4,a3,a4
   18334:	0107169b          	slliw	a3,a4,0x10
   18338:	00f6e7b3          	or	a5,a3,a5
   1833c:	fef3ae23          	sw	a5,-4(t2)
   18340:	0107579b          	srliw	a5,a4,0x10
   18344:	fb0fe6e3          	bltu	t6,a6,182f0 <__multiply+0xc0>
   18348:	00f2a223          	sw	a5,4(t0)
   1834c:	00062383          	lw	t2,0(a2)
   18350:	0103d39b          	srliw	t2,t2,0x10
   18354:	06038c63          	beqz	t2,183cc <__multiply+0x19c>
   18358:	00032783          	lw	a5,0(t1) # 10000 <_ftext>
   1835c:	00030293          	mv	t0,t1
   18360:	000e8f93          	mv	t6,t4
   18364:	00078f13          	mv	t5,a5
   18368:	00000693          	li	a3,0
   1836c:	0080006f          	j	18374 <__multiply+0x144>
   18370:	00048293          	mv	t0,s1
   18374:	000fa703          	lw	a4,0(t6)
   18378:	010f5f1b          	srliw	t5,t5,0x10
   1837c:	00b7f7b3          	and	a5,a5,a1
   18380:	00b77733          	and	a4,a4,a1
   18384:	0277073b          	mulw	a4,a4,t2
   18388:	00428493          	addi	s1,t0,4
   1838c:	004f8f93          	addi	t6,t6,4
   18390:	01e7073b          	addw	a4,a4,t5
   18394:	00d706bb          	addw	a3,a4,a3
   18398:	0106971b          	slliw	a4,a3,0x10
   1839c:	00f767b3          	or	a5,a4,a5
   183a0:	fef4ae23          	sw	a5,-4(s1)
   183a4:	ffefd703          	lhu	a4,-2(t6)
   183a8:	0042af03          	lw	t5,4(t0)
   183ac:	0106d69b          	srliw	a3,a3,0x10
   183b0:	0277073b          	mulw	a4,a4,t2
   183b4:	00bf77b3          	and	a5,t5,a1
   183b8:	00f707bb          	addw	a5,a4,a5
   183bc:	00d787bb          	addw	a5,a5,a3
   183c0:	0107d69b          	srliw	a3,a5,0x10
   183c4:	fb0fe6e3          	bltu	t6,a6,18370 <__multiply+0x140>
   183c8:	00f2a223          	sw	a5,4(t0)
   183cc:	00460613          	addi	a2,a2,4
   183d0:	00430313          	addi	t1,t1,4
   183d4:	f1c660e3          	bltu	a2,t3,182d4 <__multiply+0xa4>
   183d8:	02805463          	blez	s0,18400 <__multiply+0x1d0>
   183dc:	ffc8a783          	lw	a5,-4(a7)
   183e0:	ffc88893          	addi	a7,a7,-4
   183e4:	00078863          	beqz	a5,183f4 <__multiply+0x1c4>
   183e8:	0180006f          	j	18400 <__multiply+0x1d0>
   183ec:	0008a783          	lw	a5,0(a7)
   183f0:	00079863          	bnez	a5,18400 <__multiply+0x1d0>
   183f4:	fff4041b          	addiw	s0,s0,-1
   183f8:	ffc88893          	addi	a7,a7,-4
   183fc:	fe0418e3          	bnez	s0,183ec <__multiply+0x1bc>
   18400:	02813083          	ld	ra,40(sp)
   18404:	00852a23          	sw	s0,20(a0)
   18408:	01813483          	ld	s1,24(sp)
   1840c:	02013403          	ld	s0,32(sp)
   18410:	01013903          	ld	s2,16(sp)
   18414:	00813983          	ld	s3,8(sp)
   18418:	00013a03          	ld	s4,0(sp)
   1841c:	03010113          	addi	sp,sp,48
   18420:	00008067          	ret

0000000000018424 <__pow5mult>:
   18424:	fd010113          	addi	sp,sp,-48
   18428:	02813023          	sd	s0,32(sp)
   1842c:	01213823          	sd	s2,16(sp)
   18430:	01313423          	sd	s3,8(sp)
   18434:	02113423          	sd	ra,40(sp)
   18438:	00913c23          	sd	s1,24(sp)
   1843c:	00367793          	andi	a5,a2,3
   18440:	00060413          	mv	s0,a2
   18444:	00050993          	mv	s3,a0
   18448:	00058913          	mv	s2,a1
   1844c:	0a079e63          	bnez	a5,18508 <__pow5mult+0xe4>
   18450:	4024541b          	sraiw	s0,s0,0x2
   18454:	06040663          	beqz	s0,184c0 <__pow5mult+0x9c>
   18458:	0709b483          	ld	s1,112(s3) # ffffffffffffe070 <_end+0xfffffffffffd7278>
   1845c:	0c048a63          	beqz	s1,18530 <__pow5mult+0x10c>
   18460:	00147793          	andi	a5,s0,1
   18464:	02079063          	bnez	a5,18484 <__pow5mult+0x60>
   18468:	4014541b          	sraiw	s0,s0,0x1
   1846c:	04040a63          	beqz	s0,184c0 <__pow5mult+0x9c>
   18470:	0004b503          	ld	a0,0(s1)
   18474:	06050663          	beqz	a0,184e0 <__pow5mult+0xbc>
   18478:	00050493          	mv	s1,a0
   1847c:	00147793          	andi	a5,s0,1
   18480:	fe0784e3          	beqz	a5,18468 <__pow5mult+0x44>
   18484:	00048613          	mv	a2,s1
   18488:	00090593          	mv	a1,s2
   1848c:	00098513          	mv	a0,s3
   18490:	da1ff0ef          	jal	18230 <__multiply>
   18494:	06090663          	beqz	s2,18500 <__pow5mult+0xdc>
   18498:	00892783          	lw	a5,8(s2)
   1849c:	0789b703          	ld	a4,120(s3)
   184a0:	4014541b          	sraiw	s0,s0,0x1
   184a4:	00379793          	slli	a5,a5,0x3
   184a8:	00f707b3          	add	a5,a4,a5
   184ac:	0007b703          	ld	a4,0(a5)
   184b0:	00e93023          	sd	a4,0(s2)
   184b4:	0127b023          	sd	s2,0(a5)
   184b8:	00050913          	mv	s2,a0
   184bc:	fa041ae3          	bnez	s0,18470 <__pow5mult+0x4c>
   184c0:	02813083          	ld	ra,40(sp)
   184c4:	00090513          	mv	a0,s2
   184c8:	02013403          	ld	s0,32(sp)
   184cc:	01813483          	ld	s1,24(sp)
   184d0:	01013903          	ld	s2,16(sp)
   184d4:	00813983          	ld	s3,8(sp)
   184d8:	03010113          	addi	sp,sp,48
   184dc:	00008067          	ret
   184e0:	00048613          	mv	a2,s1
   184e4:	00048593          	mv	a1,s1
   184e8:	00098513          	mv	a0,s3
   184ec:	d45ff0ef          	jal	18230 <__multiply>
   184f0:	00a4b023          	sd	a0,0(s1)
   184f4:	00053023          	sd	zero,0(a0)
   184f8:	00050493          	mv	s1,a0
   184fc:	f81ff06f          	j	1847c <__pow5mult+0x58>
   18500:	00050913          	mv	s2,a0
   18504:	f65ff06f          	j	18468 <__pow5mult+0x44>
   18508:	fff7879b          	addiw	a5,a5,-1
   1850c:	00021737          	lui	a4,0x21
   18510:	e8870713          	addi	a4,a4,-376 # 20e88 <p05.2568>
   18514:	00279793          	slli	a5,a5,0x2
   18518:	00f707b3          	add	a5,a4,a5
   1851c:	0007a603          	lw	a2,0(a5)
   18520:	00000693          	li	a3,0
   18524:	971ff0ef          	jal	17e94 <__multadd>
   18528:	00050913          	mv	s2,a0
   1852c:	f25ff06f          	j	18450 <__pow5mult+0x2c>
   18530:	00100593          	li	a1,1
   18534:	00098513          	mv	a0,s3
   18538:	88dff0ef          	jal	17dc4 <_Balloc>
   1853c:	27100793          	li	a5,625
   18540:	00f52c23          	sw	a5,24(a0)
   18544:	00100793          	li	a5,1
   18548:	00f52a23          	sw	a5,20(a0)
   1854c:	06a9b823          	sd	a0,112(s3)
   18550:	00050493          	mv	s1,a0
   18554:	00053023          	sd	zero,0(a0)
   18558:	f09ff06f          	j	18460 <__pow5mult+0x3c>

000000000001855c <__lshift>:
   1855c:	fc010113          	addi	sp,sp,-64
   18560:	01513423          	sd	s5,8(sp)
   18564:	0145aa83          	lw	s5,20(a1) # 10014 <_ftext+0x14>
   18568:	02813823          	sd	s0,48(sp)
   1856c:	00c5a783          	lw	a5,12(a1)
   18570:	4056541b          	sraiw	s0,a2,0x5
   18574:	01540abb          	addw	s5,s0,s5
   18578:	02913423          	sd	s1,40(sp)
   1857c:	03213023          	sd	s2,32(sp)
   18580:	01313c23          	sd	s3,24(sp)
   18584:	01413823          	sd	s4,16(sp)
   18588:	02113c23          	sd	ra,56(sp)
   1858c:	001a849b          	addiw	s1,s5,1
   18590:	00058913          	mv	s2,a1
   18594:	00060993          	mv	s3,a2
   18598:	00050a13          	mv	s4,a0
   1859c:	0085a583          	lw	a1,8(a1)
   185a0:	0097d863          	ble	s1,a5,185b0 <__lshift+0x54>
   185a4:	0017979b          	slliw	a5,a5,0x1
   185a8:	0015859b          	addiw	a1,a1,1
   185ac:	fe97cce3          	blt	a5,s1,185a4 <__lshift+0x48>
   185b0:	000a0513          	mv	a0,s4
   185b4:	811ff0ef          	jal	17dc4 <_Balloc>
   185b8:	01850793          	addi	a5,a0,24
   185bc:	0e805c63          	blez	s0,186b4 <__lshift+0x158>
   185c0:	fff4071b          	addiw	a4,s0,-1
   185c4:	02071713          	slli	a4,a4,0x20
   185c8:	02075713          	srli	a4,a4,0x20
   185cc:	00170713          	addi	a4,a4,1
   185d0:	00271713          	slli	a4,a4,0x2
   185d4:	00e78733          	add	a4,a5,a4
   185d8:	00478793          	addi	a5,a5,4
   185dc:	fe07ae23          	sw	zero,-4(a5)
   185e0:	fee79ce3          	bne	a5,a4,185d8 <__lshift+0x7c>
   185e4:	01492883          	lw	a7,20(s2)
   185e8:	01890793          	addi	a5,s2,24
   185ec:	01f9f613          	andi	a2,s3,31
   185f0:	00289893          	slli	a7,a7,0x2
   185f4:	011788b3          	add	a7,a5,a7
   185f8:	08060863          	beqz	a2,18688 <__lshift+0x12c>
   185fc:	02000313          	li	t1,32
   18600:	40c3033b          	subw	t1,t1,a2
   18604:	00000693          	li	a3,0
   18608:	0080006f          	j	18610 <__lshift+0xb4>
   1860c:	00080713          	mv	a4,a6
   18610:	0007a583          	lw	a1,0(a5)
   18614:	00470813          	addi	a6,a4,4
   18618:	00478793          	addi	a5,a5,4
   1861c:	00c595bb          	sllw	a1,a1,a2
   18620:	00d5e6b3          	or	a3,a1,a3
   18624:	fed82e23          	sw	a3,-4(a6) # fffc <_ftext-0x4>
   18628:	ffc7a683          	lw	a3,-4(a5)
   1862c:	0066d6bb          	srlw	a3,a3,t1
   18630:	fd17eee3          	bltu	a5,a7,1860c <__lshift+0xb0>
   18634:	00d72223          	sw	a3,4(a4)
   18638:	00068463          	beqz	a3,18640 <__lshift+0xe4>
   1863c:	002a849b          	addiw	s1,s5,2
   18640:	00892783          	lw	a5,8(s2)
   18644:	078a3703          	ld	a4,120(s4) # ffffffff80000078 <_end+0xffffffff7ffd9280>
   18648:	fff4849b          	addiw	s1,s1,-1
   1864c:	00379793          	slli	a5,a5,0x3
   18650:	00f707b3          	add	a5,a4,a5
   18654:	0007b703          	ld	a4,0(a5)
   18658:	03813083          	ld	ra,56(sp)
   1865c:	00952a23          	sw	s1,20(a0)
   18660:	00e93023          	sd	a4,0(s2)
   18664:	0127b023          	sd	s2,0(a5)
   18668:	03013403          	ld	s0,48(sp)
   1866c:	02813483          	ld	s1,40(sp)
   18670:	02013903          	ld	s2,32(sp)
   18674:	01813983          	ld	s3,24(sp)
   18678:	01013a03          	ld	s4,16(sp)
   1867c:	00813a83          	ld	s5,8(sp)
   18680:	04010113          	addi	sp,sp,64
   18684:	00008067          	ret
   18688:	00478793          	addi	a5,a5,4
   1868c:	ffc7a683          	lw	a3,-4(a5)
   18690:	00470713          	addi	a4,a4,4
   18694:	fed72e23          	sw	a3,-4(a4)
   18698:	fb17f4e3          	bleu	a7,a5,18640 <__lshift+0xe4>
   1869c:	00478793          	addi	a5,a5,4
   186a0:	ffc7a683          	lw	a3,-4(a5)
   186a4:	00470713          	addi	a4,a4,4
   186a8:	fed72e23          	sw	a3,-4(a4)
   186ac:	fd17eee3          	bltu	a5,a7,18688 <__lshift+0x12c>
   186b0:	f91ff06f          	j	18640 <__lshift+0xe4>
   186b4:	00078713          	mv	a4,a5
   186b8:	f2dff06f          	j	185e4 <__lshift+0x88>

00000000000186bc <__mcmp>:
   186bc:	01452783          	lw	a5,20(a0)
   186c0:	0145a703          	lw	a4,20(a1)
   186c4:	40e787bb          	subw	a5,a5,a4
   186c8:	04079263          	bnez	a5,1870c <__mcmp+0x50>
   186cc:	00271713          	slli	a4,a4,0x2
   186d0:	01850513          	addi	a0,a0,24
   186d4:	01858593          	addi	a1,a1,24
   186d8:	00e507b3          	add	a5,a0,a4
   186dc:	00e585b3          	add	a1,a1,a4
   186e0:	0080006f          	j	186e8 <__mcmp+0x2c>
   186e4:	02f57863          	bleu	a5,a0,18714 <__mcmp+0x58>
   186e8:	ffc78793          	addi	a5,a5,-4
   186ec:	ffc58593          	addi	a1,a1,-4
   186f0:	0007a703          	lw	a4,0(a5)
   186f4:	0005a683          	lw	a3,0(a1)
   186f8:	fed706e3          	beq	a4,a3,186e4 <__mcmp+0x28>
   186fc:	00d737b3          	sltu	a5,a4,a3
   18700:	40f007bb          	negw	a5,a5
   18704:	0017e513          	ori	a0,a5,1
   18708:	00008067          	ret
   1870c:	00078513          	mv	a0,a5
   18710:	00008067          	ret
   18714:	00000513          	li	a0,0
   18718:	00008067          	ret

000000000001871c <__mdiff>:
   1871c:	0145a703          	lw	a4,20(a1)
   18720:	01462783          	lw	a5,20(a2)
   18724:	fd010113          	addi	sp,sp,-48
   18728:	01213823          	sd	s2,16(sp)
   1872c:	01313423          	sd	s3,8(sp)
   18730:	02113423          	sd	ra,40(sp)
   18734:	02813023          	sd	s0,32(sp)
   18738:	00913c23          	sd	s1,24(sp)
   1873c:	01413023          	sd	s4,0(sp)
   18740:	40f7073b          	subw	a4,a4,a5
   18744:	00058913          	mv	s2,a1
   18748:	00060993          	mv	s3,a2
   1874c:	04071863          	bnez	a4,1879c <__mdiff+0x80>
   18750:	00279713          	slli	a4,a5,0x2
   18754:	01858813          	addi	a6,a1,24
   18758:	01860413          	addi	s0,a2,24
   1875c:	00e807b3          	add	a5,a6,a4
   18760:	00e40733          	add	a4,s0,a4
   18764:	0080006f          	j	1876c <__mdiff+0x50>
   18768:	16f87263          	bleu	a5,a6,188cc <__mdiff+0x1b0>
   1876c:	ffc78793          	addi	a5,a5,-4
   18770:	ffc70713          	addi	a4,a4,-4
   18774:	0007a583          	lw	a1,0(a5)
   18778:	00072683          	lw	a3,0(a4)
   1877c:	fed586e3          	beq	a1,a3,18768 <__mdiff+0x4c>
   18780:	18d5f063          	bleu	a3,a1,18900 <__mdiff+0x1e4>
   18784:	00090793          	mv	a5,s2
   18788:	00080493          	mv	s1,a6
   1878c:	00098913          	mv	s2,s3
   18790:	00100a13          	li	s4,1
   18794:	00078993          	mv	s3,a5
   18798:	0140006f          	j	187ac <__mdiff+0x90>
   1879c:	16074a63          	bltz	a4,18910 <__mdiff+0x1f4>
   187a0:	01860493          	addi	s1,a2,24
   187a4:	01858413          	addi	s0,a1,24
   187a8:	00000a13          	li	s4,0
   187ac:	00892583          	lw	a1,8(s2)
   187b0:	e14ff0ef          	jal	17dc4 <_Balloc>
   187b4:	01492e03          	lw	t3,20(s2)
   187b8:	0149af03          	lw	t5,20(s3)
   187bc:	00010337          	lui	t1,0x10
   187c0:	002e1e93          	slli	t4,t3,0x2
   187c4:	002f1f13          	slli	t5,t5,0x2
   187c8:	01452823          	sw	s4,16(a0)
   187cc:	01d40eb3          	add	t4,s0,t4
   187d0:	01e48f33          	add	t5,s1,t5
   187d4:	01850813          	addi	a6,a0,24
   187d8:	00000693          	li	a3,0
   187dc:	fff3031b          	addiw	t1,t1,-1
   187e0:	00042583          	lw	a1,0(s0)
   187e4:	0004a883          	lw	a7,0(s1)
   187e8:	00480813          	addi	a6,a6,4
   187ec:	0065f633          	and	a2,a1,t1
   187f0:	00d606bb          	addw	a3,a2,a3
   187f4:	0068f733          	and	a4,a7,t1
   187f8:	40e6873b          	subw	a4,a3,a4
   187fc:	0105d59b          	srliw	a1,a1,0x10
   18800:	0108d69b          	srliw	a3,a7,0x10
   18804:	40d585bb          	subw	a1,a1,a3
   18808:	4107569b          	sraiw	a3,a4,0x10
   1880c:	00d586bb          	addw	a3,a1,a3
   18810:	0106979b          	slliw	a5,a3,0x10
   18814:	00677733          	and	a4,a4,t1
   18818:	00e7e7b3          	or	a5,a5,a4
   1881c:	00448493          	addi	s1,s1,4
   18820:	fef82e23          	sw	a5,-4(a6)
   18824:	00440413          	addi	s0,s0,4
   18828:	4106d69b          	sraiw	a3,a3,0x10
   1882c:	fbe4eae3          	bltu	s1,t5,187e0 <__mdiff+0xc4>
   18830:	07d47063          	bleu	t4,s0,18890 <__mdiff+0x174>
   18834:	00010f37          	lui	t5,0x10
   18838:	00080313          	mv	t1,a6
   1883c:	00040893          	mv	a7,s0
   18840:	ffff0f1b          	addiw	t5,t5,-1
   18844:	0008a583          	lw	a1,0(a7)
   18848:	00430313          	addi	t1,t1,4 # 10004 <_ftext+0x4>
   1884c:	00488893          	addi	a7,a7,4
   18850:	01e5f633          	and	a2,a1,t5
   18854:	00d606bb          	addw	a3,a2,a3
   18858:	4106d71b          	sraiw	a4,a3,0x10
   1885c:	0105d59b          	srliw	a1,a1,0x10
   18860:	00e5873b          	addw	a4,a1,a4
   18864:	01e6f6b3          	and	a3,a3,t5
   18868:	0107179b          	slliw	a5,a4,0x10
   1886c:	00d7e7b3          	or	a5,a5,a3
   18870:	fef32e23          	sw	a5,-4(t1)
   18874:	4107569b          	sraiw	a3,a4,0x10
   18878:	fdd8e6e3          	bltu	a7,t4,18844 <__mdiff+0x128>
   1887c:	fff44413          	not	s0,s0
   18880:	01d40eb3          	add	t4,s0,t4
   18884:	ffcefe93          	andi	t4,t4,-4
   18888:	004e8e93          	addi	t4,t4,4
   1888c:	01d80833          	add	a6,a6,t4
   18890:	ffc80813          	addi	a6,a6,-4
   18894:	00079a63          	bnez	a5,188a8 <__mdiff+0x18c>
   18898:	ffc80813          	addi	a6,a6,-4
   1889c:	00082783          	lw	a5,0(a6)
   188a0:	fffe0e1b          	addiw	t3,t3,-1
   188a4:	fe078ae3          	beqz	a5,18898 <__mdiff+0x17c>
   188a8:	02813083          	ld	ra,40(sp)
   188ac:	02013403          	ld	s0,32(sp)
   188b0:	01813483          	ld	s1,24(sp)
   188b4:	01013903          	ld	s2,16(sp)
   188b8:	00813983          	ld	s3,8(sp)
   188bc:	00013a03          	ld	s4,0(sp)
   188c0:	01c52a23          	sw	t3,20(a0)
   188c4:	03010113          	addi	sp,sp,48
   188c8:	00008067          	ret
   188cc:	00000593          	li	a1,0
   188d0:	cf4ff0ef          	jal	17dc4 <_Balloc>
   188d4:	02813083          	ld	ra,40(sp)
   188d8:	00100793          	li	a5,1
   188dc:	02013403          	ld	s0,32(sp)
   188e0:	01813483          	ld	s1,24(sp)
   188e4:	01013903          	ld	s2,16(sp)
   188e8:	00813983          	ld	s3,8(sp)
   188ec:	00013a03          	ld	s4,0(sp)
   188f0:	00f52a23          	sw	a5,20(a0)
   188f4:	00052c23          	sw	zero,24(a0)
   188f8:	03010113          	addi	sp,sp,48
   188fc:	00008067          	ret
   18900:	00040493          	mv	s1,s0
   18904:	00000a13          	li	s4,0
   18908:	00080413          	mv	s0,a6
   1890c:	ea1ff06f          	j	187ac <__mdiff+0x90>
   18910:	00090793          	mv	a5,s2
   18914:	01890493          	addi	s1,s2,24
   18918:	01898413          	addi	s0,s3,24
   1891c:	00098913          	mv	s2,s3
   18920:	00100a13          	li	s4,1
   18924:	00078993          	mv	s3,a5
   18928:	e85ff06f          	j	187ac <__mdiff+0x90>

000000000001892c <__ulp>:
   1892c:	e20507d3          	fmv.x.d	a5,fa0
   18930:	7ff00737          	lui	a4,0x7ff00
   18934:	4207d793          	srai	a5,a5,0x20
   18938:	00e7f7b3          	and	a5,a5,a4
   1893c:	fcc00737          	lui	a4,0xfcc00
   18940:	00e787bb          	addw	a5,a5,a4
   18944:	00f05863          	blez	a5,18954 <__ulp+0x28>
   18948:	02079793          	slli	a5,a5,0x20
   1894c:	f2078553          	fmv.d.x	fa0,a5
   18950:	00008067          	ret
   18954:	40f007bb          	negw	a5,a5
   18958:	4147d79b          	sraiw	a5,a5,0x14
   1895c:	01300713          	li	a4,19
   18960:	04f75063          	ble	a5,a4,189a0 <__ulp+0x74>
   18964:	fec7869b          	addiw	a3,a5,-20
   18968:	01e00613          	li	a2,30
   1896c:	00000793          	li	a5,0
   18970:	00100713          	li	a4,1
   18974:	00d64663          	blt	a2,a3,18980 <__ulp+0x54>
   18978:	fff6c693          	not	a3,a3
   1897c:	00d7173b          	sllw	a4,a4,a3
   18980:	fff00693          	li	a3,-1
   18984:	02069693          	slli	a3,a3,0x20
   18988:	02071713          	slli	a4,a4,0x20
   1898c:	02075713          	srli	a4,a4,0x20
   18990:	00d7f7b3          	and	a5,a5,a3
   18994:	00e7e7b3          	or	a5,a5,a4
   18998:	f2078553          	fmv.d.x	fa0,a5
   1899c:	00008067          	ret
   189a0:	00080737          	lui	a4,0x80
   189a4:	40f757bb          	sraw	a5,a4,a5
   189a8:	fa1ff06f          	j	18948 <__ulp+0x1c>

00000000000189ac <__b2d>:
   189ac:	fd010113          	addi	sp,sp,-48
   189b0:	02813023          	sd	s0,32(sp)
   189b4:	01452403          	lw	s0,20(a0)
   189b8:	00913c23          	sd	s1,24(sp)
   189bc:	01850493          	addi	s1,a0,24
   189c0:	00241413          	slli	s0,s0,0x2
   189c4:	00848433          	add	s0,s1,s0
   189c8:	01213823          	sd	s2,16(sp)
   189cc:	ffc42903          	lw	s2,-4(s0)
   189d0:	01313423          	sd	s3,8(sp)
   189d4:	01413023          	sd	s4,0(sp)
   189d8:	00090513          	mv	a0,s2
   189dc:	00058a13          	mv	s4,a1
   189e0:	02113423          	sd	ra,40(sp)
   189e4:	eecff0ef          	jal	180d0 <__hi0bits>
   189e8:	02000793          	li	a5,32
   189ec:	40a7873b          	subw	a4,a5,a0
   189f0:	00ea2023          	sw	a4,0(s4)
   189f4:	00a00713          	li	a4,10
   189f8:	ffc40993          	addi	s3,s0,-4
   189fc:	06a74a63          	blt	a4,a0,18a70 <__b2d+0xc4>
   18a00:	00b00693          	li	a3,11
   18a04:	40a686bb          	subw	a3,a3,a0
   18a08:	3ff00737          	lui	a4,0x3ff00
   18a0c:	00d957bb          	srlw	a5,s2,a3
   18a10:	00e7e7b3          	or	a5,a5,a4
   18a14:	02079793          	slli	a5,a5,0x20
   18a18:	00000713          	li	a4,0
   18a1c:	0134f663          	bleu	s3,s1,18a28 <__b2d+0x7c>
   18a20:	ff842703          	lw	a4,-8(s0)
   18a24:	00d7573b          	srlw	a4,a4,a3
   18a28:	0155051b          	addiw	a0,a0,21
   18a2c:	00a9153b          	sllw	a0,s2,a0
   18a30:	00e56533          	or	a0,a0,a4
   18a34:	fff00713          	li	a4,-1
   18a38:	02051513          	slli	a0,a0,0x20
   18a3c:	02071713          	slli	a4,a4,0x20
   18a40:	02055513          	srli	a0,a0,0x20
   18a44:	00e7f7b3          	and	a5,a5,a4
   18a48:	00a7e7b3          	or	a5,a5,a0
   18a4c:	02813083          	ld	ra,40(sp)
   18a50:	f2078553          	fmv.d.x	fa0,a5
   18a54:	02013403          	ld	s0,32(sp)
   18a58:	01813483          	ld	s1,24(sp)
   18a5c:	01013903          	ld	s2,16(sp)
   18a60:	00813983          	ld	s3,8(sp)
   18a64:	00013a03          	ld	s4,0(sp)
   18a68:	03010113          	addi	sp,sp,48
   18a6c:	00008067          	ret
   18a70:	ff55051b          	addiw	a0,a0,-11
   18a74:	0534f263          	bleu	s3,s1,18ab8 <__b2d+0x10c>
   18a78:	ff842683          	lw	a3,-8(s0)
   18a7c:	04050263          	beqz	a0,18ac0 <__b2d+0x114>
   18a80:	40a7863b          	subw	a2,a5,a0
   18a84:	00a917bb          	sllw	a5,s2,a0
   18a88:	3ff00937          	lui	s2,0x3ff00
   18a8c:	00c6d73b          	srlw	a4,a3,a2
   18a90:	0127e7b3          	or	a5,a5,s2
   18a94:	00e7e7b3          	or	a5,a5,a4
   18a98:	ff840713          	addi	a4,s0,-8
   18a9c:	02079793          	slli	a5,a5,0x20
   18aa0:	04e4fa63          	bleu	a4,s1,18af4 <__b2d+0x148>
   18aa4:	ff442703          	lw	a4,-12(s0)
   18aa8:	00a6953b          	sllw	a0,a3,a0
   18aac:	00c756bb          	srlw	a3,a4,a2
   18ab0:	00a6e533          	or	a0,a3,a0
   18ab4:	f81ff06f          	j	18a34 <__b2d+0x88>
   18ab8:	00000693          	li	a3,0
   18abc:	02051063          	bnez	a0,18adc <__b2d+0x130>
   18ac0:	3ff00737          	lui	a4,0x3ff00
   18ac4:	00e967b3          	or	a5,s2,a4
   18ac8:	02069693          	slli	a3,a3,0x20
   18acc:	0206d693          	srli	a3,a3,0x20
   18ad0:	02079793          	slli	a5,a5,0x20
   18ad4:	00d7e7b3          	or	a5,a5,a3
   18ad8:	f75ff06f          	j	18a4c <__b2d+0xa0>
   18adc:	00a917bb          	sllw	a5,s2,a0
   18ae0:	3ff00737          	lui	a4,0x3ff00
   18ae4:	00e7e7b3          	or	a5,a5,a4
   18ae8:	02079793          	slli	a5,a5,0x20
   18aec:	00000513          	li	a0,0
   18af0:	f45ff06f          	j	18a34 <__b2d+0x88>
   18af4:	00a6953b          	sllw	a0,a3,a0
   18af8:	f3dff06f          	j	18a34 <__b2d+0x88>

0000000000018afc <__d2b>:
   18afc:	fc010113          	addi	sp,sp,-64
   18b00:	02813823          	sd	s0,48(sp)
   18b04:	e2058453          	fmv.x.d	s0,fa1
   18b08:	00100593          	li	a1,1
   18b0c:	02913423          	sd	s1,40(sp)
   18b10:	03213023          	sd	s2,32(sp)
   18b14:	01313c23          	sd	s3,24(sp)
   18b18:	01413823          	sd	s4,16(sp)
   18b1c:	00068993          	mv	s3,a3
   18b20:	02113c23          	sd	ra,56(sp)
   18b24:	00060a13          	mv	s4,a2
   18b28:	a9cff0ef          	jal	17dc4 <_Balloc>
   18b2c:	42045793          	srai	a5,s0,0x20
   18b30:	02179493          	slli	s1,a5,0x21
   18b34:	001006b7          	lui	a3,0x100
   18b38:	fff6871b          	addiw	a4,a3,-1
   18b3c:	0354d493          	srli	s1,s1,0x35
   18b40:	00050913          	mv	s2,a0
   18b44:	00e7f7b3          	and	a5,a5,a4
   18b48:	00048463          	beqz	s1,18b50 <__d2b+0x54>
   18b4c:	00d7e7b3          	or	a5,a5,a3
   18b50:	00f12623          	sw	a5,12(sp)
   18b54:	0004041b          	sext.w	s0,s0
   18b58:	08040063          	beqz	s0,18bd8 <__d2b+0xdc>
   18b5c:	00810513          	addi	a0,sp,8
   18b60:	00812423          	sw	s0,8(sp)
   18b64:	de8ff0ef          	jal	1814c <__lo0bits>
   18b68:	00c12783          	lw	a5,12(sp)
   18b6c:	0a051463          	bnez	a0,18c14 <__d2b+0x118>
   18b70:	00812703          	lw	a4,8(sp)
   18b74:	00e92c23          	sw	a4,24(s2) # 3ff00018 <_end+0x3fed9220>
   18b78:	0017b413          	seqz	s0,a5
   18b7c:	00200713          	li	a4,2
   18b80:	4087043b          	subw	s0,a4,s0
   18b84:	00f92e23          	sw	a5,28(s2)
   18b88:	00892a23          	sw	s0,20(s2)
   18b8c:	06049663          	bnez	s1,18bf8 <__d2b+0xfc>
   18b90:	bce5051b          	addiw	a0,a0,-1074
   18b94:	00241793          	slli	a5,s0,0x2
   18b98:	00aa2023          	sw	a0,0(s4)
   18b9c:	00f907b3          	add	a5,s2,a5
   18ba0:	0147a503          	lw	a0,20(a5)
   18ba4:	0054141b          	slliw	s0,s0,0x5
   18ba8:	d28ff0ef          	jal	180d0 <__hi0bits>
   18bac:	40a4053b          	subw	a0,s0,a0
   18bb0:	00a9a023          	sw	a0,0(s3)
   18bb4:	03813083          	ld	ra,56(sp)
   18bb8:	00090513          	mv	a0,s2
   18bbc:	03013403          	ld	s0,48(sp)
   18bc0:	02813483          	ld	s1,40(sp)
   18bc4:	02013903          	ld	s2,32(sp)
   18bc8:	01813983          	ld	s3,24(sp)
   18bcc:	01013a03          	ld	s4,16(sp)
   18bd0:	04010113          	addi	sp,sp,64
   18bd4:	00008067          	ret
   18bd8:	00c10513          	addi	a0,sp,12
   18bdc:	d70ff0ef          	jal	1814c <__lo0bits>
   18be0:	00c12783          	lw	a5,12(sp)
   18be4:	00100413          	li	s0,1
   18be8:	00892a23          	sw	s0,20(s2)
   18bec:	00f92c23          	sw	a5,24(s2)
   18bf0:	0205051b          	addiw	a0,a0,32
   18bf4:	f8048ee3          	beqz	s1,18b90 <__d2b+0x94>
   18bf8:	bcd4849b          	addiw	s1,s1,-1075
   18bfc:	00a484bb          	addw	s1,s1,a0
   18c00:	03500793          	li	a5,53
   18c04:	009a2023          	sw	s1,0(s4)
   18c08:	40a7853b          	subw	a0,a5,a0
   18c0c:	00a9a023          	sw	a0,0(s3)
   18c10:	fa5ff06f          	j	18bb4 <__d2b+0xb8>
   18c14:	02000713          	li	a4,32
   18c18:	00812683          	lw	a3,8(sp)
   18c1c:	40a7073b          	subw	a4,a4,a0
   18c20:	00e7973b          	sllw	a4,a5,a4
   18c24:	00d76733          	or	a4,a4,a3
   18c28:	00a7d7bb          	srlw	a5,a5,a0
   18c2c:	00e92c23          	sw	a4,24(s2)
   18c30:	00f12623          	sw	a5,12(sp)
   18c34:	f45ff06f          	j	18b78 <__d2b+0x7c>

0000000000018c38 <__ratio>:
   18c38:	fd010113          	addi	sp,sp,-48
   18c3c:	00913c23          	sd	s1,24(sp)
   18c40:	00058493          	mv	s1,a1
   18c44:	00810593          	addi	a1,sp,8
   18c48:	02113423          	sd	ra,40(sp)
   18c4c:	02813023          	sd	s0,32(sp)
   18c50:	01213823          	sd	s2,16(sp)
   18c54:	00050913          	mv	s2,a0
   18c58:	d55ff0ef          	jal	189ac <__b2d>
   18c5c:	00c10593          	addi	a1,sp,12
   18c60:	00048513          	mv	a0,s1
   18c64:	e2050453          	fmv.x.d	s0,fa0
   18c68:	d45ff0ef          	jal	189ac <__b2d>
   18c6c:	01492703          	lw	a4,20(s2)
   18c70:	0144a783          	lw	a5,20(s1)
   18c74:	00c12603          	lw	a2,12(sp)
   18c78:	e20506d3          	fmv.x.d	a3,fa0
   18c7c:	40f707bb          	subw	a5,a4,a5
   18c80:	0057971b          	slliw	a4,a5,0x5
   18c84:	00812783          	lw	a5,8(sp)
   18c88:	40c787bb          	subw	a5,a5,a2
   18c8c:	00f707bb          	addw	a5,a4,a5
   18c90:	04f05463          	blez	a5,18cd8 <__ratio+0xa0>
   18c94:	00040713          	mv	a4,s0
   18c98:	0147979b          	slliw	a5,a5,0x14
   18c9c:	42045413          	srai	s0,s0,0x20
   18ca0:	00f407bb          	addw	a5,s0,a5
   18ca4:	02071413          	slli	s0,a4,0x20
   18ca8:	02079793          	slli	a5,a5,0x20
   18cac:	02045413          	srli	s0,s0,0x20
   18cb0:	00f46433          	or	s0,s0,a5
   18cb4:	f20407d3          	fmv.d.x	fa5,s0
   18cb8:	f2068753          	fmv.d.x	fa4,a3
   18cbc:	02813083          	ld	ra,40(sp)
   18cc0:	02013403          	ld	s0,32(sp)
   18cc4:	1ae7f553          	fdiv.d	fa0,fa5,fa4
   18cc8:	01813483          	ld	s1,24(sp)
   18ccc:	01013903          	ld	s2,16(sp)
   18cd0:	03010113          	addi	sp,sp,48
   18cd4:	00008067          	ret
   18cd8:	00068613          	mv	a2,a3
   18cdc:	0147979b          	slliw	a5,a5,0x14
   18ce0:	4206d693          	srai	a3,a3,0x20
   18ce4:	40f687bb          	subw	a5,a3,a5
   18ce8:	02061693          	slli	a3,a2,0x20
   18cec:	02079793          	slli	a5,a5,0x20
   18cf0:	0206d693          	srli	a3,a3,0x20
   18cf4:	00f6e6b3          	or	a3,a3,a5
   18cf8:	fbdff06f          	j	18cb4 <__ratio+0x7c>

0000000000018cfc <_mprec_log10>:
   18cfc:	01700793          	li	a5,23
   18d00:	02a7d263          	ble	a0,a5,18d24 <_mprec_log10+0x28>
   18d04:	000247b7          	lui	a5,0x24
   18d08:	4a87b507          	fld	fa0,1192(a5) # 244a8 <mask+0x28>
   18d0c:	000247b7          	lui	a5,0x24
   18d10:	4b07b787          	fld	fa5,1200(a5) # 244b0 <mask+0x30>
   18d14:	fff5051b          	addiw	a0,a0,-1
   18d18:	12f57553          	fmul.d	fa0,fa0,fa5
   18d1c:	fe051ce3          	bnez	a0,18d14 <_mprec_log10+0x18>
   18d20:	00008067          	ret
   18d24:	000217b7          	lui	a5,0x21
   18d28:	e8878793          	addi	a5,a5,-376 # 20e88 <p05.2568>
   18d2c:	00351513          	slli	a0,a0,0x3
   18d30:	00a78533          	add	a0,a5,a0
   18d34:	01053507          	fld	fa0,16(a0)
   18d38:	00008067          	ret

0000000000018d3c <__copybits>:
   18d3c:	01462703          	lw	a4,20(a2)
   18d40:	fff5859b          	addiw	a1,a1,-1
   18d44:	4055d81b          	sraiw	a6,a1,0x5
   18d48:	00180813          	addi	a6,a6,1
   18d4c:	01860793          	addi	a5,a2,24
   18d50:	00271713          	slli	a4,a4,0x2
   18d54:	00281813          	slli	a6,a6,0x2
   18d58:	00e786b3          	add	a3,a5,a4
   18d5c:	01050833          	add	a6,a0,a6
   18d60:	02d7f863          	bleu	a3,a5,18d90 <__copybits+0x54>
   18d64:	00050713          	mv	a4,a0
   18d68:	00478793          	addi	a5,a5,4
   18d6c:	ffc7a583          	lw	a1,-4(a5)
   18d70:	00470713          	addi	a4,a4,4 # 3ff00004 <_end+0x3fed920c>
   18d74:	feb72e23          	sw	a1,-4(a4)
   18d78:	fed7e8e3          	bltu	a5,a3,18d68 <__copybits+0x2c>
   18d7c:	40c687b3          	sub	a5,a3,a2
   18d80:	fe778793          	addi	a5,a5,-25
   18d84:	ffc7f793          	andi	a5,a5,-4
   18d88:	00478793          	addi	a5,a5,4
   18d8c:	00f50533          	add	a0,a0,a5
   18d90:	01057863          	bleu	a6,a0,18da0 <__copybits+0x64>
   18d94:	00450513          	addi	a0,a0,4
   18d98:	fe052e23          	sw	zero,-4(a0)
   18d9c:	ff056ce3          	bltu	a0,a6,18d94 <__copybits+0x58>
   18da0:	00008067          	ret

0000000000018da4 <__any_on>:
   18da4:	01452783          	lw	a5,20(a0)
   18da8:	4055d71b          	sraiw	a4,a1,0x5
   18dac:	01850693          	addi	a3,a0,24
   18db0:	04e7c463          	blt	a5,a4,18df8 <__any_on+0x54>
   18db4:	04f75063          	ble	a5,a4,18df4 <__any_on+0x50>
   18db8:	00070793          	mv	a5,a4
   18dbc:	00279793          	slli	a5,a5,0x2
   18dc0:	01f5f593          	andi	a1,a1,31
   18dc4:	00f687b3          	add	a5,a3,a5
   18dc8:	04059063          	bnez	a1,18e08 <__any_on+0x64>
   18dcc:	04f6fa63          	bleu	a5,a3,18e20 <__any_on+0x7c>
   18dd0:	ffc7a503          	lw	a0,-4(a5)
   18dd4:	ffc78793          	addi	a5,a5,-4
   18dd8:	00051a63          	bnez	a0,18dec <__any_on+0x48>
   18ddc:	02f6f463          	bleu	a5,a3,18e04 <__any_on+0x60>
   18de0:	ffc78793          	addi	a5,a5,-4
   18de4:	0007a703          	lw	a4,0(a5)
   18de8:	fe070ae3          	beqz	a4,18ddc <__any_on+0x38>
   18dec:	00100513          	li	a0,1
   18df0:	00008067          	ret
   18df4:	00070793          	mv	a5,a4
   18df8:	00279793          	slli	a5,a5,0x2
   18dfc:	00f687b3          	add	a5,a3,a5
   18e00:	fcdff06f          	j	18dcc <__any_on+0x28>
   18e04:	00008067          	ret
   18e08:	0007a603          	lw	a2,0(a5)
   18e0c:	00100513          	li	a0,1
   18e10:	00b6573b          	srlw	a4,a2,a1
   18e14:	00b715bb          	sllw	a1,a4,a1
   18e18:	fab60ae3          	beq	a2,a1,18dcc <__any_on+0x28>
   18e1c:	00008067          	ret
   18e20:	00000513          	li	a0,0
   18e24:	00008067          	ret

0000000000018e28 <_realloc_r>:
   18e28:	fb010113          	addi	sp,sp,-80
   18e2c:	02913c23          	sd	s1,56(sp)
   18e30:	04113423          	sd	ra,72(sp)
   18e34:	04813023          	sd	s0,64(sp)
   18e38:	03213823          	sd	s2,48(sp)
   18e3c:	03313423          	sd	s3,40(sp)
   18e40:	03413023          	sd	s4,32(sp)
   18e44:	01513c23          	sd	s5,24(sp)
   18e48:	01613823          	sd	s6,16(sp)
   18e4c:	01713423          	sd	s7,8(sp)
   18e50:	01813023          	sd	s8,0(sp)
   18e54:	00060493          	mv	s1,a2
   18e58:	1c058a63          	beqz	a1,1902c <_realloc_r+0x204>
   18e5c:	00058993          	mv	s3,a1
   18e60:	00050913          	mv	s2,a0
   18e64:	e70f80ef          	jal	114d4 <__malloc_lock>
   18e68:	ff89b783          	ld	a5,-8(s3)
   18e6c:	01748413          	addi	s0,s1,23
   18e70:	02e00713          	li	a4,46
   18e74:	ff098a93          	addi	s5,s3,-16
   18e78:	ffc7fa13          	andi	s4,a5,-4
   18e7c:	0c877463          	bleu	s0,a4,18f44 <_realloc_r+0x11c>
   18e80:	80000737          	lui	a4,0x80000
   18e84:	ff047413          	andi	s0,s0,-16
   18e88:	fff74713          	not	a4,a4
   18e8c:	14876a63          	bltu	a4,s0,18fe0 <_realloc_r+0x1b8>
   18e90:	14946863          	bltu	s0,s1,18fe0 <_realloc_r+0x1b8>
   18e94:	0a8a5c63          	ble	s0,s4,18f4c <_realloc_r+0x124>
   18e98:	00024b37          	lui	s6,0x24
   18e9c:	b68b0b13          	addi	s6,s6,-1176 # 23b68 <__malloc_av_>
   18ea0:	010b3703          	ld	a4,16(s6)
   18ea4:	014a86b3          	add	a3,s5,s4
   18ea8:	2ee68e63          	beq	a3,a4,191a4 <_realloc_r+0x37c>
   18eac:	0086b703          	ld	a4,8(a3) # 100008 <_end+0xd9210>
   18eb0:	ffe77613          	andi	a2,a4,-2
   18eb4:	00c68633          	add	a2,a3,a2
   18eb8:	00863603          	ld	a2,8(a2)
   18ebc:	00167613          	andi	a2,a2,1
   18ec0:	0e060c63          	beqz	a2,18fb8 <_realloc_r+0x190>
   18ec4:	0017f793          	andi	a5,a5,1
   18ec8:	26078063          	beqz	a5,19128 <_realloc_r+0x300>
   18ecc:	00048593          	mv	a1,s1
   18ed0:	00090513          	mv	a0,s2
   18ed4:	e91f70ef          	jal	10d64 <_malloc_r>
   18ed8:	00050493          	mv	s1,a0
   18edc:	48050e63          	beqz	a0,19378 <_realloc_r+0x550>
   18ee0:	ff89b783          	ld	a5,-8(s3)
   18ee4:	ff050713          	addi	a4,a0,-16
   18ee8:	ffe7f793          	andi	a5,a5,-2
   18eec:	00fa87b3          	add	a5,s5,a5
   18ef0:	40f70e63          	beq	a4,a5,1930c <_realloc_r+0x4e4>
   18ef4:	ff8a0613          	addi	a2,s4,-8
   18ef8:	04800793          	li	a5,72
   18efc:	3ec7e263          	bltu	a5,a2,192e0 <_realloc_r+0x4b8>
   18f00:	02700713          	li	a4,39
   18f04:	36c76663          	bltu	a4,a2,19270 <_realloc_r+0x448>
   18f08:	00050793          	mv	a5,a0
   18f0c:	00098713          	mv	a4,s3
   18f10:	00073683          	ld	a3,0(a4) # ffffffff80000000 <_end+0xffffffff7ffd9208>
   18f14:	00d7b023          	sd	a3,0(a5)
   18f18:	00873683          	ld	a3,8(a4)
   18f1c:	00d7b423          	sd	a3,8(a5)
   18f20:	01073703          	ld	a4,16(a4)
   18f24:	00e7b823          	sd	a4,16(a5)
   18f28:	00098593          	mv	a1,s3
   18f2c:	00090513          	mv	a0,s2
   18f30:	c5dfd0ef          	jal	16b8c <_free_r>
   18f34:	00090513          	mv	a0,s2
   18f38:	da0f80ef          	jal	114d8 <__malloc_unlock>
   18f3c:	00048513          	mv	a0,s1
   18f40:	0480006f          	j	18f88 <_realloc_r+0x160>
   18f44:	02000413          	li	s0,32
   18f48:	f49ff06f          	j	18e90 <_realloc_r+0x68>
   18f4c:	00098493          	mv	s1,s3
   18f50:	408a07b3          	sub	a5,s4,s0
   18f54:	01f00713          	li	a4,31
   18f58:	08f76c63          	bltu	a4,a5,18ff0 <_realloc_r+0x1c8>
   18f5c:	008ab783          	ld	a5,8(s5)
   18f60:	014a8733          	add	a4,s5,s4
   18f64:	0017f793          	andi	a5,a5,1
   18f68:	0147e633          	or	a2,a5,s4
   18f6c:	00cab423          	sd	a2,8(s5)
   18f70:	00873783          	ld	a5,8(a4)
   18f74:	0017e793          	ori	a5,a5,1
   18f78:	00f73423          	sd	a5,8(a4)
   18f7c:	00090513          	mv	a0,s2
   18f80:	d58f80ef          	jal	114d8 <__malloc_unlock>
   18f84:	00048513          	mv	a0,s1
   18f88:	04813083          	ld	ra,72(sp)
   18f8c:	04013403          	ld	s0,64(sp)
   18f90:	03813483          	ld	s1,56(sp)
   18f94:	03013903          	ld	s2,48(sp)
   18f98:	02813983          	ld	s3,40(sp)
   18f9c:	02013a03          	ld	s4,32(sp)
   18fa0:	01813a83          	ld	s5,24(sp)
   18fa4:	01013b03          	ld	s6,16(sp)
   18fa8:	00813b83          	ld	s7,8(sp)
   18fac:	00013c03          	ld	s8,0(sp)
   18fb0:	05010113          	addi	sp,sp,80
   18fb4:	00008067          	ret
   18fb8:	ffc77713          	andi	a4,a4,-4
   18fbc:	01470733          	add	a4,a4,s4
   18fc0:	0a874063          	blt	a4,s0,19060 <_realloc_r+0x238>
   18fc4:	0186b783          	ld	a5,24(a3)
   18fc8:	0106b683          	ld	a3,16(a3)
   18fcc:	00098493          	mv	s1,s3
   18fd0:	00070a13          	mv	s4,a4
   18fd4:	00f6bc23          	sd	a5,24(a3)
   18fd8:	00d7b823          	sd	a3,16(a5)
   18fdc:	f75ff06f          	j	18f50 <_realloc_r+0x128>
   18fe0:	00c00793          	li	a5,12
   18fe4:	00f92023          	sw	a5,0(s2)
   18fe8:	00000513          	li	a0,0
   18fec:	f9dff06f          	j	18f88 <_realloc_r+0x160>
   18ff0:	008ab703          	ld	a4,8(s5)
   18ff4:	008a85b3          	add	a1,s5,s0
   18ff8:	0017e693          	ori	a3,a5,1
   18ffc:	00177713          	andi	a4,a4,1
   19000:	00876433          	or	s0,a4,s0
   19004:	008ab423          	sd	s0,8(s5)
   19008:	00d5b423          	sd	a3,8(a1)
   1900c:	00f587b3          	add	a5,a1,a5
   19010:	0087b703          	ld	a4,8(a5)
   19014:	01058593          	addi	a1,a1,16
   19018:	00090513          	mv	a0,s2
   1901c:	00176713          	ori	a4,a4,1
   19020:	00e7b423          	sd	a4,8(a5)
   19024:	b69fd0ef          	jal	16b8c <_free_r>
   19028:	f55ff06f          	j	18f7c <_realloc_r+0x154>
   1902c:	04813083          	ld	ra,72(sp)
   19030:	04013403          	ld	s0,64(sp)
   19034:	03813483          	ld	s1,56(sp)
   19038:	03013903          	ld	s2,48(sp)
   1903c:	02813983          	ld	s3,40(sp)
   19040:	02013a03          	ld	s4,32(sp)
   19044:	01813a83          	ld	s5,24(sp)
   19048:	01013b03          	ld	s6,16(sp)
   1904c:	00813b83          	ld	s7,8(sp)
   19050:	00013c03          	ld	s8,0(sp)
   19054:	00060593          	mv	a1,a2
   19058:	05010113          	addi	sp,sp,80
   1905c:	d09f706f          	j	10d64 <_malloc_r>
   19060:	0017f793          	andi	a5,a5,1
   19064:	e60794e3          	bnez	a5,18ecc <_realloc_r+0xa4>
   19068:	ff09bb83          	ld	s7,-16(s3)
   1906c:	417a8bb3          	sub	s7,s5,s7
   19070:	008bb783          	ld	a5,8(s7) # ffffffff80000008 <_end+0xffffffff7ffd9210>
   19074:	ffc7f793          	andi	a5,a5,-4
   19078:	00f70b33          	add	s6,a4,a5
   1907c:	0a8b4e63          	blt	s6,s0,19138 <_realloc_r+0x310>
   19080:	0186b783          	ld	a5,24(a3)
   19084:	0106b703          	ld	a4,16(a3)
   19088:	ff8a0613          	addi	a2,s4,-8
   1908c:	010b8493          	addi	s1,s7,16
   19090:	00f73c23          	sd	a5,24(a4)
   19094:	00e7b823          	sd	a4,16(a5)
   19098:	010bb703          	ld	a4,16(s7)
   1909c:	018bb783          	ld	a5,24(s7)
   190a0:	00f73c23          	sd	a5,24(a4)
   190a4:	00e7b823          	sd	a4,16(a5)
   190a8:	04800793          	li	a5,72
   190ac:	1ec7e463          	bltu	a5,a2,19294 <_realloc_r+0x46c>
   190b0:	02700713          	li	a4,39
   190b4:	00048793          	mv	a5,s1
   190b8:	04c77663          	bleu	a2,a4,19104 <_realloc_r+0x2dc>
   190bc:	0009b783          	ld	a5,0(s3)
   190c0:	00fbb823          	sd	a5,16(s7)
   190c4:	0089b783          	ld	a5,8(s3)
   190c8:	00fbbc23          	sd	a5,24(s7)
   190cc:	03700793          	li	a5,55
   190d0:	24c7f863          	bleu	a2,a5,19320 <_realloc_r+0x4f8>
   190d4:	0109b783          	ld	a5,16(s3)
   190d8:	02fbb023          	sd	a5,32(s7)
   190dc:	0189b783          	ld	a5,24(s3)
   190e0:	02fbb423          	sd	a5,40(s7)
   190e4:	04800793          	li	a5,72
   190e8:	0af61863          	bne	a2,a5,19198 <_realloc_r+0x370>
   190ec:	0209b703          	ld	a4,32(s3)
   190f0:	040b8793          	addi	a5,s7,64
   190f4:	03098993          	addi	s3,s3,48
   190f8:	02ebb823          	sd	a4,48(s7)
   190fc:	ff89b703          	ld	a4,-8(s3)
   19100:	02ebbc23          	sd	a4,56(s7)
   19104:	0009b703          	ld	a4,0(s3)
   19108:	000b0a13          	mv	s4,s6
   1910c:	000b8a93          	mv	s5,s7
   19110:	00e7b023          	sd	a4,0(a5)
   19114:	0089b703          	ld	a4,8(s3)
   19118:	00e7b423          	sd	a4,8(a5)
   1911c:	0109b703          	ld	a4,16(s3)
   19120:	00e7b823          	sd	a4,16(a5)
   19124:	e2dff06f          	j	18f50 <_realloc_r+0x128>
   19128:	ff09bb83          	ld	s7,-16(s3)
   1912c:	417a8bb3          	sub	s7,s5,s7
   19130:	008bb783          	ld	a5,8(s7)
   19134:	ffc7f793          	andi	a5,a5,-4
   19138:	00fa0b33          	add	s6,s4,a5
   1913c:	d88b48e3          	blt	s6,s0,18ecc <_realloc_r+0xa4>
   19140:	018bb783          	ld	a5,24(s7)
   19144:	010bb703          	ld	a4,16(s7)
   19148:	ff8a0613          	addi	a2,s4,-8
   1914c:	04800693          	li	a3,72
   19150:	00f73c23          	sd	a5,24(a4)
   19154:	00e7b823          	sd	a4,16(a5)
   19158:	010b8493          	addi	s1,s7,16
   1915c:	12c6ec63          	bltu	a3,a2,19294 <_realloc_r+0x46c>
   19160:	02700713          	li	a4,39
   19164:	00048793          	mv	a5,s1
   19168:	f8c77ee3          	bleu	a2,a4,19104 <_realloc_r+0x2dc>
   1916c:	0009b783          	ld	a5,0(s3)
   19170:	00fbb823          	sd	a5,16(s7)
   19174:	0089b783          	ld	a5,8(s3)
   19178:	00fbbc23          	sd	a5,24(s7)
   1917c:	03700793          	li	a5,55
   19180:	1ac7f063          	bleu	a2,a5,19320 <_realloc_r+0x4f8>
   19184:	0109b783          	ld	a5,16(s3)
   19188:	02fbb023          	sd	a5,32(s7)
   1918c:	0189b783          	ld	a5,24(s3)
   19190:	02fbb423          	sd	a5,40(s7)
   19194:	f4d60ce3          	beq	a2,a3,190ec <_realloc_r+0x2c4>
   19198:	030b8793          	addi	a5,s7,48
   1919c:	02098993          	addi	s3,s3,32
   191a0:	f65ff06f          	j	19104 <_realloc_r+0x2dc>
   191a4:	0086b703          	ld	a4,8(a3)
   191a8:	02040693          	addi	a3,s0,32
   191ac:	ffc77713          	andi	a4,a4,-4
   191b0:	01470733          	add	a4,a4,s4
   191b4:	0ed75c63          	ble	a3,a4,192ac <_realloc_r+0x484>
   191b8:	0017f793          	andi	a5,a5,1
   191bc:	d00798e3          	bnez	a5,18ecc <_realloc_r+0xa4>
   191c0:	ff09bb83          	ld	s7,-16(s3)
   191c4:	417a8bb3          	sub	s7,s5,s7
   191c8:	008bb783          	ld	a5,8(s7)
   191cc:	ffc7f793          	andi	a5,a5,-4
   191d0:	00e78c33          	add	s8,a5,a4
   191d4:	f6dc42e3          	blt	s8,a3,19138 <_realloc_r+0x310>
   191d8:	018bb783          	ld	a5,24(s7)
   191dc:	010bb703          	ld	a4,16(s7)
   191e0:	ff8a0613          	addi	a2,s4,-8
   191e4:	04800693          	li	a3,72
   191e8:	00f73c23          	sd	a5,24(a4)
   191ec:	00e7b823          	sd	a4,16(a5)
   191f0:	010b8493          	addi	s1,s7,16
   191f4:	14c6ea63          	bltu	a3,a2,19348 <_realloc_r+0x520>
   191f8:	02700713          	li	a4,39
   191fc:	00048793          	mv	a5,s1
   19200:	02c77263          	bleu	a2,a4,19224 <_realloc_r+0x3fc>
   19204:	0009b783          	ld	a5,0(s3)
   19208:	00fbb823          	sd	a5,16(s7)
   1920c:	0089b783          	ld	a5,8(s3)
   19210:	00fbbc23          	sd	a5,24(s7)
   19214:	03700793          	li	a5,55
   19218:	14c7e063          	bltu	a5,a2,19358 <_realloc_r+0x530>
   1921c:	020b8793          	addi	a5,s7,32
   19220:	01098993          	addi	s3,s3,16
   19224:	0009b703          	ld	a4,0(s3)
   19228:	00e7b023          	sd	a4,0(a5)
   1922c:	0089b703          	ld	a4,8(s3)
   19230:	00e7b423          	sd	a4,8(a5)
   19234:	0109b703          	ld	a4,16(s3)
   19238:	00e7b823          	sd	a4,16(a5)
   1923c:	008b8733          	add	a4,s7,s0
   19240:	408c07b3          	sub	a5,s8,s0
   19244:	00eb3823          	sd	a4,16(s6)
   19248:	0017e793          	ori	a5,a5,1
   1924c:	00f73423          	sd	a5,8(a4)
   19250:	008bb783          	ld	a5,8(s7)
   19254:	00090513          	mv	a0,s2
   19258:	0017f793          	andi	a5,a5,1
   1925c:	0087e433          	or	s0,a5,s0
   19260:	008bb423          	sd	s0,8(s7)
   19264:	a74f80ef          	jal	114d8 <__malloc_unlock>
   19268:	00048513          	mv	a0,s1
   1926c:	d1dff06f          	j	18f88 <_realloc_r+0x160>
   19270:	0009b703          	ld	a4,0(s3)
   19274:	00e53023          	sd	a4,0(a0)
   19278:	0089b703          	ld	a4,8(s3)
   1927c:	00e53423          	sd	a4,8(a0)
   19280:	03700713          	li	a4,55
   19284:	06c76463          	bltu	a4,a2,192ec <_realloc_r+0x4c4>
   19288:	01050793          	addi	a5,a0,16
   1928c:	01098713          	addi	a4,s3,16
   19290:	c81ff06f          	j	18f10 <_realloc_r+0xe8>
   19294:	00098593          	mv	a1,s3
   19298:	00048513          	mv	a0,s1
   1929c:	92dfe0ef          	jal	17bc8 <memmove>
   192a0:	000b0a13          	mv	s4,s6
   192a4:	000b8a93          	mv	s5,s7
   192a8:	ca9ff06f          	j	18f50 <_realloc_r+0x128>
   192ac:	008a8ab3          	add	s5,s5,s0
   192b0:	408707b3          	sub	a5,a4,s0
   192b4:	015b3823          	sd	s5,16(s6)
   192b8:	0017e793          	ori	a5,a5,1
   192bc:	00fab423          	sd	a5,8(s5)
   192c0:	ff89b783          	ld	a5,-8(s3)
   192c4:	00090513          	mv	a0,s2
   192c8:	0017f793          	andi	a5,a5,1
   192cc:	0087e433          	or	s0,a5,s0
   192d0:	fe89bc23          	sd	s0,-8(s3)
   192d4:	a04f80ef          	jal	114d8 <__malloc_unlock>
   192d8:	00098513          	mv	a0,s3
   192dc:	cadff06f          	j	18f88 <_realloc_r+0x160>
   192e0:	00098593          	mv	a1,s3
   192e4:	8e5fe0ef          	jal	17bc8 <memmove>
   192e8:	c41ff06f          	j	18f28 <_realloc_r+0x100>
   192ec:	0109b703          	ld	a4,16(s3)
   192f0:	00e53823          	sd	a4,16(a0)
   192f4:	0189b703          	ld	a4,24(s3)
   192f8:	00e53c23          	sd	a4,24(a0)
   192fc:	02f60863          	beq	a2,a5,1932c <_realloc_r+0x504>
   19300:	02050793          	addi	a5,a0,32
   19304:	02098713          	addi	a4,s3,32
   19308:	c09ff06f          	j	18f10 <_realloc_r+0xe8>
   1930c:	ff853783          	ld	a5,-8(a0)
   19310:	00098493          	mv	s1,s3
   19314:	ffc7f793          	andi	a5,a5,-4
   19318:	00fa0a33          	add	s4,s4,a5
   1931c:	c35ff06f          	j	18f50 <_realloc_r+0x128>
   19320:	020b8793          	addi	a5,s7,32
   19324:	01098993          	addi	s3,s3,16
   19328:	dddff06f          	j	19104 <_realloc_r+0x2dc>
   1932c:	0209b683          	ld	a3,32(s3)
   19330:	03050793          	addi	a5,a0,48
   19334:	03098713          	addi	a4,s3,48
   19338:	02d53023          	sd	a3,32(a0)
   1933c:	0289b683          	ld	a3,40(s3)
   19340:	02d53423          	sd	a3,40(a0)
   19344:	bcdff06f          	j	18f10 <_realloc_r+0xe8>
   19348:	00098593          	mv	a1,s3
   1934c:	00048513          	mv	a0,s1
   19350:	879fe0ef          	jal	17bc8 <memmove>
   19354:	ee9ff06f          	j	1923c <_realloc_r+0x414>
   19358:	0109b783          	ld	a5,16(s3)
   1935c:	02fbb023          	sd	a5,32(s7)
   19360:	0189b783          	ld	a5,24(s3)
   19364:	02fbb423          	sd	a5,40(s7)
   19368:	02d60063          	beq	a2,a3,19388 <_realloc_r+0x560>
   1936c:	030b8793          	addi	a5,s7,48
   19370:	02098993          	addi	s3,s3,32
   19374:	eb1ff06f          	j	19224 <_realloc_r+0x3fc>
   19378:	00090513          	mv	a0,s2
   1937c:	95cf80ef          	jal	114d8 <__malloc_unlock>
   19380:	00000513          	li	a0,0
   19384:	c05ff06f          	j	18f88 <_realloc_r+0x160>
   19388:	0209b703          	ld	a4,32(s3)
   1938c:	040b8793          	addi	a5,s7,64
   19390:	03098993          	addi	s3,s3,48
   19394:	02ebb823          	sd	a4,48(s7)
   19398:	ff89b703          	ld	a4,-8(s3)
   1939c:	02ebbc23          	sd	a4,56(s7)
   193a0:	e85ff06f          	j	19224 <_realloc_r+0x3fc>

00000000000193a4 <lflush>:
   193a4:	01055783          	lhu	a5,16(a0)
   193a8:	00900713          	li	a4,9
   193ac:	0097f793          	andi	a5,a5,9
   193b0:	00e78663          	beq	a5,a4,193bc <lflush+0x18>
   193b4:	00000513          	li	a0,0
   193b8:	00008067          	ret
   193bc:	8bcfd06f          	j	16478 <fflush>

00000000000193c0 <__srefill_r>:
   193c0:	fd010113          	addi	sp,sp,-48
   193c4:	02813023          	sd	s0,32(sp)
   193c8:	00913c23          	sd	s1,24(sp)
   193cc:	02113423          	sd	ra,40(sp)
   193d0:	01213823          	sd	s2,16(sp)
   193d4:	01313423          	sd	s3,8(sp)
   193d8:	00050493          	mv	s1,a0
   193dc:	00058413          	mv	s0,a1
   193e0:	00050663          	beqz	a0,193ec <__srefill_r+0x2c>
   193e4:	05052783          	lw	a5,80(a0)
   193e8:	12078a63          	beqz	a5,1951c <__srefill_r+0x15c>
   193ec:	01041783          	lh	a5,16(s0)
   193f0:	03079713          	slli	a4,a5,0x30
   193f4:	03075713          	srli	a4,a4,0x30
   193f8:	03271693          	slli	a3,a4,0x32
   193fc:	0206ca63          	bltz	a3,19430 <__srefill_r+0x70>
   19400:	0ac42683          	lw	a3,172(s0)
   19404:	00002737          	lui	a4,0x2
   19408:	00e7e7b3          	or	a5,a5,a4
   1940c:	ffffe737          	lui	a4,0xffffe
   19410:	0107979b          	slliw	a5,a5,0x10
   19414:	fff7071b          	addiw	a4,a4,-1
   19418:	4107d79b          	sraiw	a5,a5,0x10
   1941c:	00e6f733          	and	a4,a3,a4
   19420:	0ae42623          	sw	a4,172(s0)
   19424:	03079713          	slli	a4,a5,0x30
   19428:	00f41823          	sh	a5,16(s0)
   1942c:	03075713          	srli	a4,a4,0x30
   19430:	00042423          	sw	zero,8(s0)
   19434:	02077693          	andi	a3,a4,32
   19438:	1a069c63          	bnez	a3,195f0 <__srefill_r+0x230>
   1943c:	00477693          	andi	a3,a4,4
   19440:	08068863          	beqz	a3,194d0 <__srefill_r+0x110>
   19444:	05843583          	ld	a1,88(s0)
   19448:	02058263          	beqz	a1,1946c <__srefill_r+0xac>
   1944c:	07440793          	addi	a5,s0,116
   19450:	00f58663          	beq	a1,a5,1945c <__srefill_r+0x9c>
   19454:	00048513          	mv	a0,s1
   19458:	f34fd0ef          	jal	16b8c <_free_r>
   1945c:	07042783          	lw	a5,112(s0)
   19460:	04043c23          	sd	zero,88(s0)
   19464:	00f42423          	sw	a5,8(s0)
   19468:	12079263          	bnez	a5,1958c <__srefill_r+0x1cc>
   1946c:	01843783          	ld	a5,24(s0)
   19470:	18078463          	beqz	a5,195f8 <__srefill_r+0x238>
   19474:	01041983          	lh	s3,16(s0)
   19478:	03099913          	slli	s2,s3,0x30
   1947c:	03095913          	srli	s2,s2,0x30
   19480:	00397793          	andi	a5,s2,3
   19484:	0a079063          	bnez	a5,19524 <__srefill_r+0x164>
   19488:	01843603          	ld	a2,24(s0)
   1948c:	03843783          	ld	a5,56(s0)
   19490:	02042683          	lw	a3,32(s0)
   19494:	03043583          	ld	a1,48(s0)
   19498:	00c43023          	sd	a2,0(s0)
   1949c:	00048513          	mv	a0,s1
   194a0:	000780e7          	jalr	a5
   194a4:	0005079b          	sext.w	a5,a0
   194a8:	00f42423          	sw	a5,8(s0)
   194ac:	00000513          	li	a0,0
   194b0:	02f05e63          	blez	a5,194ec <__srefill_r+0x12c>
   194b4:	02813083          	ld	ra,40(sp)
   194b8:	02013403          	ld	s0,32(sp)
   194bc:	01813483          	ld	s1,24(sp)
   194c0:	01013903          	ld	s2,16(sp)
   194c4:	00813983          	ld	s3,8(sp)
   194c8:	03010113          	addi	sp,sp,48
   194cc:	00008067          	ret
   194d0:	01077693          	andi	a3,a4,16
   194d4:	10068663          	beqz	a3,195e0 <__srefill_r+0x220>
   194d8:	00877713          	andi	a4,a4,8
   194dc:	0c071c63          	bnez	a4,195b4 <__srefill_r+0x1f4>
   194e0:	0047e793          	ori	a5,a5,4
   194e4:	00f41823          	sh	a5,16(s0)
   194e8:	f85ff06f          	j	1946c <__srefill_r+0xac>
   194ec:	06079863          	bnez	a5,1955c <__srefill_r+0x19c>
   194f0:	01045783          	lhu	a5,16(s0)
   194f4:	02813083          	ld	ra,40(sp)
   194f8:	fff00513          	li	a0,-1
   194fc:	0207e793          	ori	a5,a5,32
   19500:	00f41823          	sh	a5,16(s0)
   19504:	01813483          	ld	s1,24(sp)
   19508:	02013403          	ld	s0,32(sp)
   1950c:	01013903          	ld	s2,16(sp)
   19510:	00813983          	ld	s3,8(sp)
   19514:	03010113          	addi	sp,sp,48
   19518:	00008067          	ret
   1951c:	aacfd0ef          	jal	167c8 <__sinit>
   19520:	ecdff06f          	j	193ec <__srefill_r+0x2c>
   19524:	8101b503          	ld	a0,-2032(gp) # 24430 <_global_impure_ptr>
   19528:	000195b7          	lui	a1,0x19
   1952c:	00100793          	li	a5,1
   19530:	00f41823          	sh	a5,16(s0)
   19534:	3a458593          	addi	a1,a1,932 # 193a4 <lflush>
   19538:	e19fd0ef          	jal	17350 <_fwalk>
   1953c:	00997913          	andi	s2,s2,9
   19540:	01341823          	sh	s3,16(s0)
   19544:	00900793          	li	a5,9
   19548:	f4f910e3          	bne	s2,a5,19488 <__srefill_r+0xc8>
   1954c:	00040593          	mv	a1,s0
   19550:	00048513          	mv	a0,s1
   19554:	c5dfc0ef          	jal	161b0 <__sflush_r>
   19558:	f31ff06f          	j	19488 <__srefill_r+0xc8>
   1955c:	01045783          	lhu	a5,16(s0)
   19560:	02813083          	ld	ra,40(sp)
   19564:	00042423          	sw	zero,8(s0)
   19568:	0407e793          	ori	a5,a5,64
   1956c:	fff00513          	li	a0,-1
   19570:	00f41823          	sh	a5,16(s0)
   19574:	01813483          	ld	s1,24(sp)
   19578:	02013403          	ld	s0,32(sp)
   1957c:	01013903          	ld	s2,16(sp)
   19580:	00813983          	ld	s3,8(sp)
   19584:	03010113          	addi	sp,sp,48
   19588:	00008067          	ret
   1958c:	06843783          	ld	a5,104(s0)
   19590:	02813083          	ld	ra,40(sp)
   19594:	00000513          	li	a0,0
   19598:	00f43023          	sd	a5,0(s0)
   1959c:	01813483          	ld	s1,24(sp)
   195a0:	02013403          	ld	s0,32(sp)
   195a4:	01013903          	ld	s2,16(sp)
   195a8:	00813983          	ld	s3,8(sp)
   195ac:	03010113          	addi	sp,sp,48
   195b0:	00008067          	ret
   195b4:	00040593          	mv	a1,s0
   195b8:	00048513          	mv	a0,s1
   195bc:	e61fc0ef          	jal	1641c <_fflush_r>
   195c0:	02051863          	bnez	a0,195f0 <__srefill_r+0x230>
   195c4:	01045783          	lhu	a5,16(s0)
   195c8:	00042623          	sw	zero,12(s0)
   195cc:	02042423          	sw	zero,40(s0)
   195d0:	ff77f793          	andi	a5,a5,-9
   195d4:	0107979b          	slliw	a5,a5,0x10
   195d8:	4107d79b          	sraiw	a5,a5,0x10
   195dc:	f05ff06f          	j	194e0 <__srefill_r+0x120>
   195e0:	00900713          	li	a4,9
   195e4:	00e4a023          	sw	a4,0(s1)
   195e8:	0407e793          	ori	a5,a5,64
   195ec:	00f41823          	sh	a5,16(s0)
   195f0:	fff00513          	li	a0,-1
   195f4:	ec1ff06f          	j	194b4 <__srefill_r+0xf4>
   195f8:	00040593          	mv	a1,s0
   195fc:	00048513          	mv	a0,s1
   19600:	fb9fd0ef          	jal	175b8 <__smakebuf_r>
   19604:	e71ff06f          	j	19474 <__srefill_r+0xb4>

0000000000019608 <__sccl>:
   19608:	0005c603          	lbu	a2,0(a1)
   1960c:	05e00793          	li	a5,94
   19610:	08f60e63          	beq	a2,a5,196ac <__sccl+0xa4>
   19614:	00158593          	addi	a1,a1,1
   19618:	00000713          	li	a4,0
   1961c:	00000813          	li	a6,0
   19620:	00050793          	mv	a5,a0
   19624:	10050693          	addi	a3,a0,256
   19628:	00e78023          	sb	a4,0(a5)
   1962c:	00178793          	addi	a5,a5,1
   19630:	fed79ce3          	bne	a5,a3,19628 <__sccl+0x20>
   19634:	00183713          	seqz	a4,a6
   19638:	02d00313          	li	t1,45
   1963c:	05d00893          	li	a7,93
   19640:	02060a63          	beqz	a2,19674 <__sccl+0x6c>
   19644:	00c507b3          	add	a5,a0,a2
   19648:	00e78023          	sb	a4,0(a5)
   1964c:	0005c783          	lbu	a5,0(a1)
   19650:	00158813          	addi	a6,a1,1
   19654:	02678863          	beq	a5,t1,19684 <__sccl+0x7c>
   19658:	03178263          	beq	a5,a7,1967c <__sccl+0x74>
   1965c:	00078863          	beqz	a5,1966c <__sccl+0x64>
   19660:	00078613          	mv	a2,a5
   19664:	00080593          	mv	a1,a6
   19668:	fddff06f          	j	19644 <__sccl+0x3c>
   1966c:	00058513          	mv	a0,a1
   19670:	00008067          	ret
   19674:	fff58513          	addi	a0,a1,-1
   19678:	00008067          	ret
   1967c:	00080513          	mv	a0,a6
   19680:	00008067          	ret
   19684:	0015c683          	lbu	a3,1(a1)
   19688:	fd168ce3          	beq	a3,a7,19660 <__sccl+0x58>
   1968c:	fcc6cae3          	blt	a3,a2,19660 <__sccl+0x58>
   19690:	00258593          	addi	a1,a1,2
   19694:	00c507b3          	add	a5,a0,a2
   19698:	00e780a3          	sb	a4,1(a5)
   1969c:	0016061b          	addiw	a2,a2,1
   196a0:	00178793          	addi	a5,a5,1
   196a4:	fed64ae3          	blt	a2,a3,19698 <__sccl+0x90>
   196a8:	fa5ff06f          	j	1964c <__sccl+0x44>
   196ac:	00100713          	li	a4,1
   196b0:	0015c603          	lbu	a2,1(a1)
   196b4:	00070813          	mv	a6,a4
   196b8:	00258593          	addi	a1,a1,2
   196bc:	f65ff06f          	j	19620 <__sccl+0x18>

00000000000196c0 <nanf>:
   196c0:	000247b7          	lui	a5,0x24
   196c4:	4e07a507          	flw	fa0,1248(a5) # 244e0 <mask+0x60>
   196c8:	00008067          	ret

00000000000196cc <__fpclassifyd>:
   196cc:	e20507d3          	fmv.x.d	a5,fa0
   196d0:	00200513          	li	a0,2
   196d4:	4207d713          	srai	a4,a5,0x20
   196d8:	0007879b          	sext.w	a5,a5
   196dc:	00f766b3          	or	a3,a4,a5
   196e0:	00069463          	bnez	a3,196e8 <__fpclassifyd+0x1c>
   196e4:	00008067          	ret
   196e8:	800006b7          	lui	a3,0x80000
   196ec:	04d70863          	beq	a4,a3,1973c <__fpclassifyd+0x70>
   196f0:	fff006b7          	lui	a3,0xfff00
   196f4:	00d706bb          	addw	a3,a4,a3
   196f8:	7fe00637          	lui	a2,0x7fe00
   196fc:	00400513          	li	a0,4
   19700:	fec6e2e3          	bltu	a3,a2,196e4 <__fpclassifyd+0x18>
   19704:	7ff006b7          	lui	a3,0x7ff00
   19708:	00d706bb          	addw	a3,a4,a3
   1970c:	fcc6ece3          	bltu	a3,a2,196e4 <__fpclassifyd+0x18>
   19710:	800006b7          	lui	a3,0x80000
   19714:	fff6c693          	not	a3,a3
   19718:	00d77733          	and	a4,a4,a3
   1971c:	001006b7          	lui	a3,0x100
   19720:	00300513          	li	a0,3
   19724:	fcd760e3          	bltu	a4,a3,196e4 <__fpclassifyd+0x18>
   19728:	7ff006b7          	lui	a3,0x7ff00
   1972c:	00000513          	li	a0,0
   19730:	fad71ae3          	bne	a4,a3,196e4 <__fpclassifyd+0x18>
   19734:	0017b513          	seqz	a0,a5
   19738:	00008067          	ret
   1973c:	fc079ae3          	bnez	a5,19710 <__fpclassifyd+0x44>
   19740:	00008067          	ret

0000000000019744 <_sprintf_r>:
   19744:	f0010113          	addi	sp,sp,-256
   19748:	0d810e13          	addi	t3,sp,216
   1974c:	0ef13423          	sd	a5,232(sp)
   19750:	80000337          	lui	t1,0x80000
   19754:	20800793          	li	a5,520
   19758:	00058e93          	mv	t4,a1
   1975c:	fff34313          	not	t1,t1
   19760:	0cd13c23          	sd	a3,216(sp)
   19764:	02f11023          	sh	a5,32(sp)
   19768:	01010593          	addi	a1,sp,16
   1976c:	fff00793          	li	a5,-1
   19770:	000e0693          	mv	a3,t3
   19774:	0c113423          	sd	ra,200(sp)
   19778:	02f11123          	sh	a5,34(sp)
   1977c:	0ee13023          	sd	a4,224(sp)
   19780:	0f013823          	sd	a6,240(sp)
   19784:	0f113c23          	sd	a7,248(sp)
   19788:	01d13823          	sd	t4,16(sp)
   1978c:	03d13423          	sd	t4,40(sp)
   19790:	00612e23          	sw	t1,28(sp)
   19794:	02612823          	sw	t1,48(sp)
   19798:	01c13423          	sd	t3,8(sp)
   1979c:	0d5010ef          	jal	1b070 <_svfprintf_r>
   197a0:	01013783          	ld	a5,16(sp)
   197a4:	00078023          	sb	zero,0(a5)
   197a8:	0c813083          	ld	ra,200(sp)
   197ac:	10010113          	addi	sp,sp,256
   197b0:	00008067          	ret

00000000000197b4 <sprintf>:
   197b4:	00050e93          	mv	t4,a0
   197b8:	f0010113          	addi	sp,sp,-256
   197bc:	8181b503          	ld	a0,-2024(gp) # 24438 <_impure_ptr>
   197c0:	0d010e13          	addi	t3,sp,208
   197c4:	0ef13423          	sd	a5,232(sp)
   197c8:	80000337          	lui	t1,0x80000
   197cc:	20800793          	li	a5,520
   197d0:	fff34313          	not	t1,t1
   197d4:	0cc13823          	sd	a2,208(sp)
   197d8:	0cd13c23          	sd	a3,216(sp)
   197dc:	02f11023          	sh	a5,32(sp)
   197e0:	00058613          	mv	a2,a1
   197e4:	fff00793          	li	a5,-1
   197e8:	01010593          	addi	a1,sp,16
   197ec:	000e0693          	mv	a3,t3
   197f0:	0c113423          	sd	ra,200(sp)
   197f4:	02f11123          	sh	a5,34(sp)
   197f8:	0ee13023          	sd	a4,224(sp)
   197fc:	0f013823          	sd	a6,240(sp)
   19800:	0f113c23          	sd	a7,248(sp)
   19804:	01d13823          	sd	t4,16(sp)
   19808:	03d13423          	sd	t4,40(sp)
   1980c:	00612e23          	sw	t1,28(sp)
   19810:	02612823          	sw	t1,48(sp)
   19814:	01c13423          	sd	t3,8(sp)
   19818:	059010ef          	jal	1b070 <_svfprintf_r>
   1981c:	01013783          	ld	a5,16(sp)
   19820:	00078023          	sb	zero,0(a5)
   19824:	0c813083          	ld	ra,200(sp)
   19828:	10010113          	addi	sp,sp,256
   1982c:	00008067          	ret

0000000000019830 <__sread>:
   19830:	01259503          	lh	a0,18(a1)
   19834:	ff010113          	addi	sp,sp,-16
   19838:	00813023          	sd	s0,0(sp)
   1983c:	00058413          	mv	s0,a1
   19840:	00060593          	mv	a1,a2
   19844:	00068613          	mv	a2,a3
   19848:	00113423          	sd	ra,8(sp)
   1984c:	359060ef          	jal	203a4 <read>
   19850:	02054063          	bltz	a0,19870 <__sread+0x40>
   19854:	09043783          	ld	a5,144(s0)
   19858:	00813083          	ld	ra,8(sp)
   1985c:	00a787b3          	add	a5,a5,a0
   19860:	08f43823          	sd	a5,144(s0)
   19864:	00013403          	ld	s0,0(sp)
   19868:	01010113          	addi	sp,sp,16
   1986c:	00008067          	ret
   19870:	01045703          	lhu	a4,16(s0)
   19874:	fffff7b7          	lui	a5,0xfffff
   19878:	00813083          	ld	ra,8(sp)
   1987c:	fff7879b          	addiw	a5,a5,-1
   19880:	00f777b3          	and	a5,a4,a5
   19884:	00f41823          	sh	a5,16(s0)
   19888:	00013403          	ld	s0,0(sp)
   1988c:	01010113          	addi	sp,sp,16
   19890:	00008067          	ret

0000000000019894 <__seofread>:
   19894:	00000513          	li	a0,0
   19898:	00008067          	ret

000000000001989c <__swrite>:
   1989c:	01059703          	lh	a4,16(a1)
   198a0:	fd010113          	addi	sp,sp,-48
   198a4:	02813023          	sd	s0,32(sp)
   198a8:	00913c23          	sd	s1,24(sp)
   198ac:	02113423          	sd	ra,40(sp)
   198b0:	10077793          	andi	a5,a4,256
   198b4:	00058413          	mv	s0,a1
   198b8:	00060493          	mv	s1,a2
   198bc:	02078063          	beqz	a5,198dc <__swrite+0x40>
   198c0:	01259503          	lh	a0,18(a1)
   198c4:	00200613          	li	a2,2
   198c8:	00000593          	li	a1,0
   198cc:	00d13423          	sd	a3,8(sp)
   198d0:	2c1060ef          	jal	20390 <lseek>
   198d4:	01041703          	lh	a4,16(s0)
   198d8:	00813683          	ld	a3,8(sp)
   198dc:	fffff7b7          	lui	a5,0xfffff
   198e0:	fff7879b          	addiw	a5,a5,-1
   198e4:	00f777b3          	and	a5,a4,a5
   198e8:	01241503          	lh	a0,18(s0)
   198ec:	00f41823          	sh	a5,16(s0)
   198f0:	00048593          	mv	a1,s1
   198f4:	02813083          	ld	ra,40(sp)
   198f8:	02013403          	ld	s0,32(sp)
   198fc:	01813483          	ld	s1,24(sp)
   19900:	00068613          	mv	a2,a3
   19904:	03010113          	addi	sp,sp,48
   19908:	2b10606f          	j	203b8 <write>

000000000001990c <__sseek>:
   1990c:	01259503          	lh	a0,18(a1)
   19910:	ff010113          	addi	sp,sp,-16
   19914:	00813023          	sd	s0,0(sp)
   19918:	00058413          	mv	s0,a1
   1991c:	00060593          	mv	a1,a2
   19920:	00068613          	mv	a2,a3
   19924:	00113423          	sd	ra,8(sp)
   19928:	269060ef          	jal	20390 <lseek>
   1992c:	fff00793          	li	a5,-1
   19930:	01045703          	lhu	a4,16(s0)
   19934:	02f50263          	beq	a0,a5,19958 <__sseek+0x4c>
   19938:	00813083          	ld	ra,8(sp)
   1993c:	000017b7          	lui	a5,0x1
   19940:	00f767b3          	or	a5,a4,a5
   19944:	08a43823          	sd	a0,144(s0)
   19948:	00f41823          	sh	a5,16(s0)
   1994c:	00013403          	ld	s0,0(sp)
   19950:	01010113          	addi	sp,sp,16
   19954:	00008067          	ret
   19958:	fffff7b7          	lui	a5,0xfffff
   1995c:	00813083          	ld	ra,8(sp)
   19960:	fff7879b          	addiw	a5,a5,-1
   19964:	00f777b3          	and	a5,a4,a5
   19968:	00f41823          	sh	a5,16(s0)
   1996c:	00013403          	ld	s0,0(sp)
   19970:	01010113          	addi	sp,sp,16
   19974:	00008067          	ret

0000000000019978 <__sclose>:
   19978:	01259503          	lh	a0,18(a1)
   1997c:	2e90606f          	j	20464 <close>

0000000000019980 <_strtod_r>:
   19980:	f0010113          	addi	sp,sp,-256
   19984:	0e813823          	sd	s0,240(sp)
   19988:	0f213023          	sd	s2,224(sp)
   1998c:	0d313c23          	sd	s3,216(sp)
   19990:	0b713c23          	sd	s7,184(sp)
   19994:	0b913423          	sd	s9,168(sp)
   19998:	0e113c23          	sd	ra,248(sp)
   1999c:	0e913423          	sd	s1,232(sp)
   199a0:	0d413823          	sd	s4,208(sp)
   199a4:	0d513423          	sd	s5,200(sp)
   199a8:	0d613023          	sd	s6,192(sp)
   199ac:	0b813823          	sd	s8,176(sp)
   199b0:	0ba13023          	sd	s10,160(sp)
   199b4:	09b13c23          	sd	s11,152(sp)
   199b8:	08813427          	fsd	fs0,136(sp)
   199bc:	08913027          	fsd	fs1,128(sp)
   199c0:	07213c27          	fsd	fs2,120(sp)
   199c4:	07313827          	fsd	fs3,112(sp)
   199c8:	07413427          	fsd	fs4,104(sp)
   199cc:	07513027          	fsd	fs5,96(sp)
   199d0:	05613c27          	fsd	fs6,88(sp)
   199d4:	05713827          	fsd	fs7,80(sp)
   199d8:	04013023          	sd	zero,64(sp)
   199dc:	02b13c23          	sd	a1,56(sp)
   199e0:	00058b93          	mv	s7,a1
   199e4:	000bc783          	lbu	a5,0(s7)
   199e8:	00060993          	mv	s3,a2
   199ec:	000216b7          	lui	a3,0x21
   199f0:	02d00613          	li	a2,45
   199f4:	00058c93          	mv	s9,a1
   199f8:	00050413          	mv	s0,a0
   199fc:	00000913          	li	s2,0
   19a00:	fb068693          	addi	a3,a3,-80 # 20fb0 <__mprec_bigtens+0x28>
   19a04:	28f66e63          	bltu	a2,a5,19ca0 <_strtod_r+0x320>
   19a08:	00279713          	slli	a4,a5,0x2
   19a0c:	00d70733          	add	a4,a4,a3
   19a10:	00072703          	lw	a4,0(a4) # ffffffffffffe000 <_end+0xfffffffffffd7208>
   19a14:	00070067          	jr	a4
   19a18:	00000a93          	li	s5,0
   19a1c:	001b8713          	addi	a4,s7,1
   19a20:	02e13c23          	sd	a4,56(sp)
   19a24:	001bc783          	lbu	a5,1(s7)
   19a28:	1c078e63          	beqz	a5,19c04 <_strtod_r+0x284>
   19a2c:	00070b93          	mv	s7,a4
   19a30:	03000713          	li	a4,48
   19a34:	000b8a13          	mv	s4,s7
   19a38:	00000b13          	li	s6,0
   19a3c:	26e78c63          	beq	a5,a4,19cb4 <_strtod_r+0x334>
   19a40:	fd07871b          	addiw	a4,a5,-48
   19a44:	0ff77713          	andi	a4,a4,255
   19a48:	00900513          	li	a0,9
   19a4c:	40e566e3          	bltu	a0,a4,1a658 <_strtod_r+0xcd8>
   19a50:	001a0593          	addi	a1,s4,1
   19a54:	00000d93          	li	s11,0
   19a58:	00000d13          	li	s10,0
   19a5c:	00000c13          	li	s8,0
   19a60:	00800813          	li	a6,8
   19a64:	29884663          	blt	a6,s8,19cf0 <_strtod_r+0x370>
   19a68:	001d161b          	slliw	a2,s10,0x1
   19a6c:	003d171b          	slliw	a4,s10,0x3
   19a70:	00e6073b          	addw	a4,a2,a4
   19a74:	00f7073b          	addw	a4,a4,a5
   19a78:	fd070d1b          	addiw	s10,a4,-48
   19a7c:	02b13c23          	sd	a1,56(sp)
   19a80:	0005c783          	lbu	a5,0(a1)
   19a84:	00058913          	mv	s2,a1
   19a88:	001c0c1b          	addiw	s8,s8,1
   19a8c:	fd07869b          	addiw	a3,a5,-48
   19a90:	0ff6f693          	andi	a3,a3,255
   19a94:	00158593          	addi	a1,a1,1
   19a98:	fcd576e3          	bleu	a3,a0,19a64 <_strtod_r+0xe4>
   19a9c:	00078493          	mv	s1,a5
   19aa0:	00040513          	mv	a0,s0
   19aa4:	aedfd0ef          	jal	17590 <_localeconv_r>
   19aa8:	00053b83          	ld	s7,0(a0)
   19aac:	00040513          	mv	a0,s0
   19ab0:	ae1fd0ef          	jal	17590 <_localeconv_r>
   19ab4:	00053503          	ld	a0,0(a0)
   19ab8:	eb1f70ef          	jal	11968 <strlen>
   19abc:	00050613          	mv	a2,a0
   19ac0:	000b8593          	mv	a1,s7
   19ac4:	00090513          	mv	a0,s2
   19ac8:	5a0050ef          	jal	1f068 <strncmp>
   19acc:	32050e63          	beqz	a0,19e08 <_strtod_r+0x488>
   19ad0:	000c0693          	mv	a3,s8
   19ad4:	00000613          	li	a2,0
   19ad8:	00000593          	li	a1,0
   19adc:	00000513          	li	a0,0
   19ae0:	fdf4f793          	andi	a5,s1,-33
   19ae4:	04500713          	li	a4,69
   19ae8:	00000b93          	li	s7,0
   19aec:	10e79463          	bne	a5,a4,19bf4 <_strtod_r+0x274>
   19af0:	00c6e7b3          	or	a5,a3,a2
   19af4:	0167e7b3          	or	a5,a5,s6
   19af8:	10078663          	beqz	a5,19c04 <_strtod_r+0x284>
   19afc:	03813c83          	ld	s9,56(sp)
   19b00:	02b00713          	li	a4,43
   19b04:	001c8793          	addi	a5,s9,1
   19b08:	02f13c23          	sd	a5,56(sp)
   19b0c:	001cc783          	lbu	a5,1(s9)
   19b10:	22e780e3          	beq	a5,a4,1a530 <_strtod_r+0xbb0>
   19b14:	02d00713          	li	a4,45
   19b18:	04e78ce3          	beq	a5,a4,1a370 <_strtod_r+0x9f0>
   19b1c:	00078493          	mv	s1,a5
   19b20:	00000893          	li	a7,0
   19b24:	fd04879b          	addiw	a5,s1,-48
   19b28:	00900813          	li	a6,9
   19b2c:	00048713          	mv	a4,s1
   19b30:	12f860e3          	bltu	a6,a5,1a450 <_strtod_r+0xad0>
   19b34:	03000793          	li	a5,48
   19b38:	02f49263          	bne	s1,a5,19b5c <_strtod_r+0x1dc>
   19b3c:	03813783          	ld	a5,56(sp)
   19b40:	00048813          	mv	a6,s1
   19b44:	00178793          	addi	a5,a5,1 # fffffffffffff001 <_end+0xfffffffffffd8209>
   19b48:	02f13c23          	sd	a5,56(sp)
   19b4c:	0007c703          	lbu	a4,0(a5)
   19b50:	00178793          	addi	a5,a5,1
   19b54:	00070493          	mv	s1,a4
   19b58:	ff0708e3          	beq	a4,a6,19b48 <_strtod_r+0x1c8>
   19b5c:	fcf7071b          	addiw	a4,a4,-49
   19b60:	00800793          	li	a5,8
   19b64:	00000b93          	li	s7,0
   19b68:	08e7e663          	bltu	a5,a4,19bf4 <_strtod_r+0x274>
   19b6c:	03813f03          	ld	t5,56(sp)
   19b70:	fd04879b          	addiw	a5,s1,-48
   19b74:	00900e93          	li	t4,9
   19b78:	001f0e13          	addi	t3,t5,1 # 10001 <_ftext+0x1>
   19b7c:	03c13c23          	sd	t3,56(sp)
   19b80:	001f4483          	lbu	s1,1(t5)
   19b84:	fd04871b          	addiw	a4,s1,-48
   19b88:	0ff77713          	andi	a4,a4,255
   19b8c:	02eeee63          	bltu	t4,a4,19bc8 <_strtod_r+0x248>
   19b90:	002f0313          	addi	t1,t5,2
   19b94:	02613c23          	sd	t1,56(sp)
   19b98:	00034803          	lbu	a6,0(t1) # ffffffff80000000 <_end+0xffffffff7ffd9208>
   19b9c:	0017971b          	slliw	a4,a5,0x1
   19ba0:	0037979b          	slliw	a5,a5,0x3
   19ba4:	00f707bb          	addw	a5,a4,a5
   19ba8:	fd08071b          	addiw	a4,a6,-48
   19bac:	009787bb          	addw	a5,a5,s1
   19bb0:	0ff77713          	andi	a4,a4,255
   19bb4:	00030e13          	mv	t3,t1
   19bb8:	fd07879b          	addiw	a5,a5,-48
   19bbc:	00080493          	mv	s1,a6
   19bc0:	00130313          	addi	t1,t1,1
   19bc4:	fceef8e3          	bleu	a4,t4,19b94 <_strtod_r+0x214>
   19bc8:	00005737          	lui	a4,0x5
   19bcc:	41ee0e33          	sub	t3,t3,t5
   19bd0:	00800813          	li	a6,8
   19bd4:	e1f70b9b          	addiw	s7,a4,-481
   19bd8:	01c84a63          	blt	a6,t3,19bec <_strtod_r+0x26c>
   19bdc:	e1f7071b          	addiw	a4,a4,-481
   19be0:	00078b93          	mv	s7,a5
   19be4:	00f75463          	ble	a5,a4,19bec <_strtod_r+0x26c>
   19be8:	00070b93          	mv	s7,a4
   19bec:	00088463          	beqz	a7,19bf4 <_strtod_r+0x274>
   19bf0:	41700bbb          	negw	s7,s7
   19bf4:	10069a63          	bnez	a3,19d08 <_strtod_r+0x388>
   19bf8:	01666b33          	or	s6,a2,s6
   19bfc:	200b1263          	bnez	s6,19e00 <_strtod_r+0x480>
   19c00:	70050a63          	beqz	a0,1a314 <_strtod_r+0x994>
   19c04:	00000493          	li	s1,0
   19c08:	00000a93          	li	s5,0
   19c0c:	00098663          	beqz	s3,19c18 <_strtod_r+0x298>
   19c10:	0199b023          	sd	s9,0(s3)
   19c14:	060a9263          	bnez	s5,19c78 <_strtod_r+0x2f8>
   19c18:	0f813083          	ld	ra,248(sp)
   19c1c:	f2048553          	fmv.d.x	fa0,s1
   19c20:	0f013403          	ld	s0,240(sp)
   19c24:	0e813483          	ld	s1,232(sp)
   19c28:	0e013903          	ld	s2,224(sp)
   19c2c:	0d813983          	ld	s3,216(sp)
   19c30:	0d013a03          	ld	s4,208(sp)
   19c34:	0c813a83          	ld	s5,200(sp)
   19c38:	0c013b03          	ld	s6,192(sp)
   19c3c:	0b813b83          	ld	s7,184(sp)
   19c40:	0b013c03          	ld	s8,176(sp)
   19c44:	0a813c83          	ld	s9,168(sp)
   19c48:	0a013d03          	ld	s10,160(sp)
   19c4c:	09813d83          	ld	s11,152(sp)
   19c50:	08813407          	fld	fs0,136(sp)
   19c54:	08013487          	fld	fs1,128(sp)
   19c58:	07813907          	fld	fs2,120(sp)
   19c5c:	07013987          	fld	fs3,112(sp)
   19c60:	06813a07          	fld	fs4,104(sp)
   19c64:	06013a87          	fld	fs5,96(sp)
   19c68:	05813b07          	fld	fs6,88(sp)
   19c6c:	05013b87          	fld	fs7,80(sp)
   19c70:	10010113          	addi	sp,sp,256
   19c74:	00008067          	ret
   19c78:	f20487d3          	fmv.d.x	fa5,s1
   19c7c:	22f797d3          	fneg.d	fa5,fa5
   19c80:	e20784d3          	fmv.x.d	s1,fa5
   19c84:	f95ff06f          	j	19c18 <_strtod_r+0x298>
   19c88:	00100a93          	li	s5,1
   19c8c:	d91ff06f          	j	19a1c <_strtod_r+0x9c>
   19c90:	001b8b93          	addi	s7,s7,1
   19c94:	03713c23          	sd	s7,56(sp)
   19c98:	000bc783          	lbu	a5,0(s7)
   19c9c:	d6f676e3          	bleu	a5,a2,19a08 <_strtod_r+0x88>
   19ca0:	03000713          	li	a4,48
   19ca4:	00000a93          	li	s5,0
   19ca8:	000b8a13          	mv	s4,s7
   19cac:	00000b13          	li	s6,0
   19cb0:	d8e798e3          	bne	a5,a4,19a40 <_strtod_r+0xc0>
   19cb4:	001bc703          	lbu	a4,1(s7)
   19cb8:	05800693          	li	a3,88
   19cbc:	7ad70063          	beq	a4,a3,1a45c <_strtod_r+0xadc>
   19cc0:	07800693          	li	a3,120
   19cc4:	78d70c63          	beq	a4,a3,1a45c <_strtod_r+0xadc>
   19cc8:	001b8713          	addi	a4,s7,1
   19ccc:	00070a13          	mv	s4,a4
   19cd0:	02e13c23          	sd	a4,56(sp)
   19cd4:	00170713          	addi	a4,a4,1 # 5001 <_ftext-0xafff>
   19cd8:	fff74483          	lbu	s1,-1(a4)
   19cdc:	fef488e3          	beq	s1,a5,19ccc <_strtod_r+0x34c>
   19ce0:	12048063          	beqz	s1,19e00 <_strtod_r+0x480>
   19ce4:	00048793          	mv	a5,s1
   19ce8:	00100b13          	li	s6,1
   19cec:	d55ff06f          	j	19a40 <_strtod_r+0xc0>
   19cf0:	001d961b          	slliw	a2,s11,0x1
   19cf4:	003d969b          	slliw	a3,s11,0x3
   19cf8:	00d606bb          	addw	a3,a2,a3
   19cfc:	00f687bb          	addw	a5,a3,a5
   19d00:	fd078d9b          	addiw	s11,a5,-48
   19d04:	d79ff06f          	j	19a7c <_strtod_r+0xfc>
   19d08:	40bb8bbb          	subw	s7,s7,a1
   19d0c:	000c1463          	bnez	s8,19d14 <_strtod_r+0x394>
   19d10:	00068c13          	mv	s8,a3
   19d14:	01000793          	li	a5,16
   19d18:	00068713          	mv	a4,a3
   19d1c:	00d7d463          	ble	a3,a5,19d24 <_strtod_r+0x3a4>
   19d20:	00078713          	mv	a4,a5
   19d24:	d21d07d3          	fcvt.d.wu	fa5,s10
   19d28:	00900793          	li	a5,9
   19d2c:	e20785d3          	fmv.x.d	a1,fa5
   19d30:	00058913          	mv	s2,a1
   19d34:	02e7d663          	ble	a4,a5,19d60 <_strtod_r+0x3e0>
   19d38:	ff77079b          	addiw	a5,a4,-9
   19d3c:	00021637          	lui	a2,0x21
   19d40:	00379793          	slli	a5,a5,0x3
   19d44:	e9860613          	addi	a2,a2,-360 # 20e98 <__mprec_tens>
   19d48:	00c78633          	add	a2,a5,a2
   19d4c:	d21d87d3          	fcvt.d.wu	fa5,s11
   19d50:	00063707          	fld	fa4,0(a2)
   19d54:	f20586d3          	fmv.d.x	fa3,a1
   19d58:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   19d5c:	e2078953          	fmv.x.d	s2,fa5
   19d60:	00f00793          	li	a5,15
   19d64:	10d7c663          	blt	a5,a3,19e70 <_strtod_r+0x4f0>
   19d68:	080b8863          	beqz	s7,19df8 <_strtod_r+0x478>
   19d6c:	357054e3          	blez	s7,1a8b4 <_strtod_r+0xf34>
   19d70:	01600613          	li	a2,22
   19d74:	29764ce3          	blt	a2,s7,1a80c <_strtod_r+0xe8c>
   19d78:	00021737          	lui	a4,0x21
   19d7c:	003b9793          	slli	a5,s7,0x3
   19d80:	e9870713          	addi	a4,a4,-360 # 20e98 <__mprec_tens>
   19d84:	00e787b3          	add	a5,a5,a4
   19d88:	0007b787          	fld	fa5,0(a5)
   19d8c:	f2090753          	fmv.d.x	fa4,s2
   19d90:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   19d94:	e20784d3          	fmv.x.d	s1,fa5
   19d98:	e6098ee3          	beqz	s3,19c14 <_strtod_r+0x294>
   19d9c:	03813c83          	ld	s9,56(sp)
   19da0:	0199b023          	sd	s9,0(s3)
   19da4:	e71ff06f          	j	19c14 <_strtod_r+0x294>
   19da8:	00022737          	lui	a4,0x22
   19dac:	02d13c23          	sd	a3,56(sp)
   19db0:	00068613          	mv	a2,a3
   19db4:	d7070713          	addi	a4,a4,-656 # 21d70 <zeroes.4123+0x708>
   19db8:	01900893          	li	a7,25
   19dbc:	00170713          	addi	a4,a4,1
   19dc0:	fff74503          	lbu	a0,-1(a4)
   19dc4:	00160613          	addi	a2,a2,1
   19dc8:	480500e3          	beqz	a0,1aa48 <_strtod_r+0x10c8>
   19dcc:	00064583          	lbu	a1,0(a2)
   19dd0:	fbf5879b          	addiw	a5,a1,-65
   19dd4:	0ff7f793          	andi	a5,a5,255
   19dd8:	00058813          	mv	a6,a1
   19ddc:	00f8e463          	bltu	a7,a5,19de4 <_strtod_r+0x464>
   19de0:	0205881b          	addiw	a6,a1,32
   19de4:	fca80ce3          	beq	a6,a0,19dbc <_strtod_r+0x43c>
   19de8:	00168693          	addi	a3,a3,1
   19dec:	02d13c23          	sd	a3,56(sp)
   19df0:	7ff00913          	li	s2,2047
   19df4:	03491913          	slli	s2,s2,0x34
   19df8:	00090493          	mv	s1,s2
   19dfc:	f9dff06f          	j	19d98 <_strtod_r+0x418>
   19e00:	00000493          	li	s1,0
   19e04:	f95ff06f          	j	19d98 <_strtod_r+0x418>
   19e08:	00040513          	mv	a0,s0
   19e0c:	f84fd0ef          	jal	17590 <_localeconv_r>
   19e10:	00053503          	ld	a0,0(a0)
   19e14:	b55f70ef          	jal	11968 <strlen>
   19e18:	03813783          	ld	a5,56(sp)
   19e1c:	00a78533          	add	a0,a5,a0
   19e20:	02a13c23          	sd	a0,56(sp)
   19e24:	00054483          	lbu	s1,0(a0)
   19e28:	4a0c1863          	bnez	s8,1a2d8 <_strtod_r+0x958>
   19e2c:	03000793          	li	a5,48
   19e30:	2ef494e3          	bne	s1,a5,1a918 <_strtod_r+0xf98>
   19e34:	00150793          	addi	a5,a0,1
   19e38:	00000613          	li	a2,0
   19e3c:	00048713          	mv	a4,s1
   19e40:	02f13c23          	sd	a5,56(sp)
   19e44:	0007c483          	lbu	s1,0(a5)
   19e48:	0016061b          	addiw	a2,a2,1
   19e4c:	00178793          	addi	a5,a5,1
   19e50:	fee488e3          	beq	s1,a4,19e40 <_strtod_r+0x4c0>
   19e54:	fcf4879b          	addiw	a5,s1,-49
   19e58:	00800713          	li	a4,8
   19e5c:	16f778e3          	bleu	a5,a4,1a7cc <_strtod_r+0xe4c>
   19e60:	00000693          	li	a3,0
   19e64:	00000593          	li	a1,0
   19e68:	00100513          	li	a0,1
   19e6c:	c75ff06f          	j	19ae0 <_strtod_r+0x160>
   19e70:	40e6873b          	subw	a4,a3,a4
   19e74:	0177073b          	addw	a4,a4,s7
   19e78:	70e05a63          	blez	a4,1a58c <_strtod_r+0xc0c>
   19e7c:	00f77793          	andi	a5,a4,15
   19e80:	02078263          	beqz	a5,19ea4 <_strtod_r+0x524>
   19e84:	00021637          	lui	a2,0x21
   19e88:	00379793          	slli	a5,a5,0x3
   19e8c:	e9860613          	addi	a2,a2,-360 # 20e98 <__mprec_tens>
   19e90:	00c787b3          	add	a5,a5,a2
   19e94:	f2090753          	fmv.d.x	fa4,s2
   19e98:	0007b787          	fld	fa5,0(a5)
   19e9c:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   19ea0:	e2078953          	fmv.x.d	s2,fa5
   19ea4:	ff077793          	andi	a5,a4,-16
   19ea8:	0c078863          	beqz	a5,19f78 <_strtod_r+0x5f8>
   19eac:	13400713          	li	a4,308
   19eb0:	4cf74a63          	blt	a4,a5,1a384 <_strtod_r+0xa04>
   19eb4:	4047d79b          	sraiw	a5,a5,0x4
   19eb8:	00100513          	li	a0,1
   19ebc:	3af55ce3          	ble	a5,a0,1aa74 <_strtod_r+0x10f4>
   19ec0:	00021737          	lui	a4,0x21
   19ec4:	f8870313          	addi	t1,a4,-120 # 20f88 <__mprec_bigtens>
   19ec8:	00090813          	mv	a6,s2
   19ecc:	f8870713          	addi	a4,a4,-120
   19ed0:	00000893          	li	a7,0
   19ed4:	00000613          	li	a2,0
   19ed8:	0017f593          	andi	a1,a5,1
   19edc:	00058c63          	beqz	a1,19ef4 <_strtod_r+0x574>
   19ee0:	f2080753          	fmv.d.x	fa4,a6
   19ee4:	00073787          	fld	fa5,0(a4)
   19ee8:	00100893          	li	a7,1
   19eec:	12f777d3          	fmul.d	fa5,fa4,fa5
   19ef0:	e2078853          	fmv.x.d	a6,fa5
   19ef4:	4017d79b          	sraiw	a5,a5,0x1
   19ef8:	0016061b          	addiw	a2,a2,1
   19efc:	00870713          	addi	a4,a4,8
   19f00:	fca79ce3          	bne	a5,a0,19ed8 <_strtod_r+0x558>
   19f04:	500890e3          	bnez	a7,1ac04 <_strtod_r+0x1284>
   19f08:	00361793          	slli	a5,a2,0x3
   19f0c:	42095713          	srai	a4,s2,0x20
   19f10:	00f30633          	add	a2,t1,a5
   19f14:	fcb007b7          	lui	a5,0xfcb00
   19f18:	00f707bb          	addw	a5,a4,a5
   19f1c:	fff00713          	li	a4,-1
   19f20:	02075713          	srli	a4,a4,0x20
   19f24:	02079793          	slli	a5,a5,0x20
   19f28:	00e97933          	and	s2,s2,a4
   19f2c:	00f96933          	or	s2,s2,a5
   19f30:	00063787          	fld	fa5,0(a2)
   19f34:	f2090753          	fmv.d.x	fa4,s2
   19f38:	7ff007b7          	lui	a5,0x7ff00
   19f3c:	7ca005b7          	lui	a1,0x7ca00
   19f40:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   19f44:	e2078953          	fmv.x.d	s2,fa5
   19f48:	42095613          	srai	a2,s2,0x20
   19f4c:	00f677b3          	and	a5,a2,a5
   19f50:	42f5ea63          	bltu	a1,a5,1a384 <_strtod_r+0xa04>
   19f54:	7c9005b7          	lui	a1,0x7c900
   19f58:	2cf5f4e3          	bleu	a5,a1,1aa20 <_strtod_r+0x10a0>
   19f5c:	7ff007b7          	lui	a5,0x7ff00
   19f60:	02091913          	slli	s2,s2,0x20
   19f64:	fff78793          	addi	a5,a5,-1 # 7fefffff <_end+0x7fed9207>
   19f68:	02095913          	srli	s2,s2,0x20
   19f6c:	02079793          	slli	a5,a5,0x20
   19f70:	00f96933          	or	s2,s2,a5
   19f74:	00e96933          	or	s2,s2,a4
   19f78:	00000c93          	li	s9,0
   19f7c:	000d0713          	mv	a4,s10
   19f80:	000c0613          	mv	a2,s8
   19f84:	000a0593          	mv	a1,s4
   19f88:	00040513          	mv	a0,s0
   19f8c:	818fe0ef          	jal	17fa4 <__s2b>
   19f90:	00050d13          	mv	s10,a0
   19f94:	3e050863          	beqz	a0,1a384 <_strtod_r+0xa04>
   19f98:	417007bb          	negw	a5,s7
   19f9c:	41fbdd9b          	sraiw	s11,s7,0x1f
   19fa0:	00fdf7b3          	and	a5,s11,a5
   19fa4:	01712423          	sw	s7,8(sp)
   19fa8:	00f12623          	sw	a5,12(sp)
   19fac:	100bc0e3          	bltz	s7,1a8ac <_strtod_r+0xf2c>
   19fb0:	000247b7          	lui	a5,0x24
   19fb4:	4c87b907          	fld	fs2,1224(a5) # 244c8 <mask+0x48>
   19fb8:	000247b7          	lui	a5,0x24
   19fbc:	4f07b487          	fld	fs1,1264(a5) # 244f0 <mask+0x70>
   19fc0:	000247b7          	lui	a5,0x24
   19fc4:	4a87b987          	fld	fs3,1192(a5) # 244a8 <mask+0x28>
   19fc8:	000247b7          	lui	a5,0x24
   19fcc:	4e87bb07          	fld	fs6,1256(a5) # 244e8 <mask+0x68>
   19fd0:	000247b7          	lui	a5,0x24
   19fd4:	23290ad3          	fmv.d	fs5,fs2
   19fd8:	5007ba07          	fld	fs4,1280(a5) # 24500 <mask+0x80>
   19fdc:	00000c13          	li	s8,0
   19fe0:	00000a13          	li	s4,0
   19fe4:	008d2583          	lw	a1,8(s10)
   19fe8:	00040513          	mv	a0,s0
   19fec:	dd9fd0ef          	jal	17dc4 <_Balloc>
   19ff0:	00050b13          	mv	s6,a0
   19ff4:	3a050263          	beqz	a0,1a398 <_strtod_r+0xa18>
   19ff8:	014d2603          	lw	a2,20(s10)
   19ffc:	010d0593          	addi	a1,s10,16
   1a000:	01050513          	addi	a0,a0,16
   1a004:	00260613          	addi	a2,a2,2
   1a008:	00261613          	slli	a2,a2,0x2
   1a00c:	a9dfd0ef          	jal	17aa8 <memcpy>
   1a010:	f20905d3          	fmv.d.x	fa1,s2
   1a014:	04810693          	addi	a3,sp,72
   1a018:	03410613          	addi	a2,sp,52
   1a01c:	00040513          	mv	a0,s0
   1a020:	addfe0ef          	jal	18afc <__d2b>
   1a024:	04a13023          	sd	a0,64(sp)
   1a028:	00090493          	mv	s1,s2
   1a02c:	36050863          	beqz	a0,1a39c <_strtod_r+0xa1c>
   1a030:	00100593          	li	a1,1
   1a034:	00040513          	mv	a0,s0
   1a038:	9c4fe0ef          	jal	181fc <__i2b>
   1a03c:	00050a13          	mv	s4,a0
   1a040:	34050c63          	beqz	a0,1a398 <_strtod_r+0xa18>
   1a044:	03412703          	lw	a4,52(sp)
   1a048:	3a074e63          	bltz	a4,1a404 <_strtod_r+0xa84>
   1a04c:	00c12783          	lw	a5,12(sp)
   1a050:	00812583          	lw	a1,8(sp)
   1a054:	00e78dbb          	addw	s11,a5,a4
   1a058:	04812503          	lw	a0,72(sp)
   1a05c:	4197073b          	subw	a4,a4,s9
   1a060:	00100693          	li	a3,1
   1a064:	00a7073b          	addw	a4,a4,a0
   1a068:	03600793          	li	a5,54
   1a06c:	fff7071b          	addiw	a4,a4,-1
   1a070:	c0200613          	li	a2,-1022
   1a074:	00012c23          	sw	zero,24(sp)
   1a078:	00d12823          	sw	a3,16(sp)
   1a07c:	40a787bb          	subw	a5,a5,a0
   1a080:	00c75e63          	ble	a2,a4,1a09c <_strtod_r+0x71c>
   1a084:	40e6063b          	subw	a2,a2,a4
   1a088:	01f00513          	li	a0,31
   1a08c:	40c787bb          	subw	a5,a5,a2
   1a090:	38c54263          	blt	a0,a2,1a414 <_strtod_r+0xa94>
   1a094:	00c6973b          	sllw	a4,a3,a2
   1a098:	00e12823          	sw	a4,16(sp)
   1a09c:	00f5873b          	addw	a4,a1,a5
   1a0a0:	00fd87bb          	addw	a5,s11,a5
   1a0a4:	00ec8bbb          	addw	s7,s9,a4
   1a0a8:	000d8593          	mv	a1,s11
   1a0ac:	01b7d463          	ble	s11,a5,1a0b4 <_strtod_r+0x734>
   1a0b0:	00078593          	mv	a1,a5
   1a0b4:	000b8613          	mv	a2,s7
   1a0b8:	0175d463          	ble	s7,a1,1a0c0 <_strtod_r+0x740>
   1a0bc:	00058613          	mv	a2,a1
   1a0c0:	00c05863          	blez	a2,1a0d0 <_strtod_r+0x750>
   1a0c4:	40c787bb          	subw	a5,a5,a2
   1a0c8:	40cb8bbb          	subw	s7,s7,a2
   1a0cc:	40cd8dbb          	subw	s11,s11,a2
   1a0d0:	00c12703          	lw	a4,12(sp)
   1a0d4:	06070063          	beqz	a4,1a134 <_strtod_r+0x7b4>
   1a0d8:	000a0593          	mv	a1,s4
   1a0dc:	00070613          	mv	a2,a4
   1a0e0:	00040513          	mv	a0,s0
   1a0e4:	02f13023          	sd	a5,32(sp)
   1a0e8:	b3cfe0ef          	jal	18424 <__pow5mult>
   1a0ec:	00050a13          	mv	s4,a0
   1a0f0:	02013783          	ld	a5,32(sp)
   1a0f4:	2a050263          	beqz	a0,1a398 <_strtod_r+0xa18>
   1a0f8:	04013603          	ld	a2,64(sp)
   1a0fc:	00050593          	mv	a1,a0
   1a100:	00040513          	mv	a0,s0
   1a104:	02f13023          	sd	a5,32(sp)
   1a108:	928fe0ef          	jal	18230 <__multiply>
   1a10c:	02013783          	ld	a5,32(sp)
   1a110:	28050463          	beqz	a0,1a398 <_strtod_r+0xa18>
   1a114:	04013583          	ld	a1,64(sp)
   1a118:	02a13423          	sd	a0,40(sp)
   1a11c:	00040513          	mv	a0,s0
   1a120:	02f13023          	sd	a5,32(sp)
   1a124:	d4dfd0ef          	jal	17e70 <_Bfree>
   1a128:	02813603          	ld	a2,40(sp)
   1a12c:	02013783          	ld	a5,32(sp)
   1a130:	04c13023          	sd	a2,64(sp)
   1a134:	00f05e63          	blez	a5,1a150 <_strtod_r+0x7d0>
   1a138:	04013583          	ld	a1,64(sp)
   1a13c:	00078613          	mv	a2,a5
   1a140:	00040513          	mv	a0,s0
   1a144:	c18fe0ef          	jal	1855c <__lshift>
   1a148:	04a13023          	sd	a0,64(sp)
   1a14c:	24050863          	beqz	a0,1a39c <_strtod_r+0xa1c>
   1a150:	00812783          	lw	a5,8(sp)
   1a154:	00078e63          	beqz	a5,1a170 <_strtod_r+0x7f0>
   1a158:	00812603          	lw	a2,8(sp)
   1a15c:	000b0593          	mv	a1,s6
   1a160:	00040513          	mv	a0,s0
   1a164:	ac0fe0ef          	jal	18424 <__pow5mult>
   1a168:	00050b13          	mv	s6,a0
   1a16c:	22050663          	beqz	a0,1a398 <_strtod_r+0xa18>
   1a170:	01705e63          	blez	s7,1a18c <_strtod_r+0x80c>
   1a174:	000b0593          	mv	a1,s6
   1a178:	000b8613          	mv	a2,s7
   1a17c:	00040513          	mv	a0,s0
   1a180:	bdcfe0ef          	jal	1855c <__lshift>
   1a184:	00050b13          	mv	s6,a0
   1a188:	20050863          	beqz	a0,1a398 <_strtod_r+0xa18>
   1a18c:	01b05e63          	blez	s11,1a1a8 <_strtod_r+0x828>
   1a190:	000a0593          	mv	a1,s4
   1a194:	000d8613          	mv	a2,s11
   1a198:	00040513          	mv	a0,s0
   1a19c:	bc0fe0ef          	jal	1855c <__lshift>
   1a1a0:	00050a13          	mv	s4,a0
   1a1a4:	1e050a63          	beqz	a0,1a398 <_strtod_r+0xa18>
   1a1a8:	04013583          	ld	a1,64(sp)
   1a1ac:	000b0613          	mv	a2,s6
   1a1b0:	00040513          	mv	a0,s0
   1a1b4:	d68fe0ef          	jal	1871c <__mdiff>
   1a1b8:	00050c13          	mv	s8,a0
   1a1bc:	1c050e63          	beqz	a0,1a398 <_strtod_r+0xa18>
   1a1c0:	01052783          	lw	a5,16(a0)
   1a1c4:	000a0593          	mv	a1,s4
   1a1c8:	00052823          	sw	zero,16(a0)
   1a1cc:	00078b93          	mv	s7,a5
   1a1d0:	cecfe0ef          	jal	186bc <__mcmp>
   1a1d4:	7c054063          	bltz	a0,1a994 <_strtod_r+0x1014>
   1a1d8:	74050463          	beqz	a0,1a920 <_strtod_r+0xfa0>
   1a1dc:	000a0593          	mv	a1,s4
   1a1e0:	000c0513          	mv	a0,s8
   1a1e4:	a55fe0ef          	jal	18c38 <__ratio>
   1a1e8:	a29507d3          	fle.d	a5,fa0,fs1
   1a1ec:	20078063          	beqz	a5,1a3ec <_strtod_r+0xa6c>
   1a1f0:	220b8e63          	beqz	s7,1a42c <_strtod_r+0xaac>
   1a1f4:	00024737          	lui	a4,0x24
   1a1f8:	4a873407          	fld	fs0,1192(a4) # 244a8 <mask+0x28>
   1a1fc:	3ff00793          	li	a5,1023
   1a200:	03479793          	slli	a5,a5,0x34
   1a204:	42095713          	srai	a4,s2,0x20
   1a208:	7ff006b7          	lui	a3,0x7ff00
   1a20c:	00d77633          	and	a2,a4,a3
   1a210:	7fe005b7          	lui	a1,0x7fe00
   1a214:	28b60863          	beq	a2,a1,1a4a4 <_strtod_r+0xb24>
   1a218:	040c8c63          	beqz	s9,1a270 <_strtod_r+0x8f0>
   1a21c:	06a00737          	lui	a4,0x6a00
   1a220:	04c76863          	bltu	a4,a2,1a270 <_strtod_r+0x8f0>
   1a224:	00024737          	lui	a4,0x24
   1a228:	4f873787          	fld	fa5,1272(a4) # 244f8 <mask+0x78>
   1a22c:	a2f40753          	fle.d	a4,fs0,fa5
   1a230:	02070063          	beqz	a4,1a250 <_strtod_r+0x8d0>
   1a234:	c21417d3          	fcvt.wu.d	a5,fs0,rtz
   1a238:	62078063          	beqz	a5,1a858 <_strtod_r+0xed8>
   1a23c:	d2178453          	fcvt.d.wu	fs0,a5
   1a240:	e20407d3          	fmv.x.d	a5,fs0
   1a244:	000b9663          	bnez	s7,1a250 <_strtod_r+0x8d0>
   1a248:	228417d3          	fneg.d	fa5,fs0
   1a24c:	e20787d3          	fmv.x.d	a5,fa5
   1a250:	4207d713          	srai	a4,a5,0x20
   1a254:	06b006b7          	lui	a3,0x6b00
   1a258:	00d7073b          	addw	a4,a4,a3
   1a25c:	40c7073b          	subw	a4,a4,a2
   1a260:	02079793          	slli	a5,a5,0x20
   1a264:	02071713          	slli	a4,a4,0x20
   1a268:	0207d793          	srli	a5,a5,0x20
   1a26c:	00e7e7b3          	or	a5,a5,a4
   1a270:	f2048553          	fmv.d.x	fa0,s1
   1a274:	00c13823          	sd	a2,16(sp)
   1a278:	f2078bd3          	fmv.d.x	fs7,a5
   1a27c:	eb0fe0ef          	jal	1892c <__ulp>
   1a280:	f20487d3          	fmv.d.x	fa5,s1
   1a284:	01013603          	ld	a2,16(sp)
   1a288:	7aabf7c3          	fmadd.d	fa5,fs7,fa0,fa5
   1a28c:	e2078953          	fmv.x.d	s2,fa5
   1a290:	42095713          	srai	a4,s2,0x20
   1a294:	000c9863          	bnez	s9,1a2a4 <_strtod_r+0x924>
   1a298:	7ff007b7          	lui	a5,0x7ff00
   1a29c:	00f777b3          	and	a5,a4,a5
   1a2a0:	28f60c63          	beq	a2,a5,1a538 <_strtod_r+0xbb8>
   1a2a4:	04013583          	ld	a1,64(sp)
   1a2a8:	00040513          	mv	a0,s0
   1a2ac:	bc5fd0ef          	jal	17e70 <_Bfree>
   1a2b0:	000b0593          	mv	a1,s6
   1a2b4:	00040513          	mv	a0,s0
   1a2b8:	bb9fd0ef          	jal	17e70 <_Bfree>
   1a2bc:	000a0593          	mv	a1,s4
   1a2c0:	00040513          	mv	a0,s0
   1a2c4:	badfd0ef          	jal	17e70 <_Bfree>
   1a2c8:	000c0593          	mv	a1,s8
   1a2cc:	00040513          	mv	a0,s0
   1a2d0:	ba1fd0ef          	jal	17e70 <_Bfree>
   1a2d4:	d11ff06f          	j	19fe4 <_strtod_r+0x664>
   1a2d8:	000c0693          	mv	a3,s8
   1a2dc:	00000613          	li	a2,0
   1a2e0:	00000593          	li	a1,0
   1a2e4:	fd04851b          	addiw	a0,s1,-48
   1a2e8:	00900793          	li	a5,9
   1a2ec:	b6a7eee3          	bltu	a5,a0,19e68 <_strtod_r+0x4e8>
   1a2f0:	0016071b          	addiw	a4,a2,1
   1a2f4:	00050493          	mv	s1,a0
   1a2f8:	46051863          	bnez	a0,1a768 <_strtod_r+0xde8>
   1a2fc:	03813803          	ld	a6,56(sp)
   1a300:	00070613          	mv	a2,a4
   1a304:	00180793          	addi	a5,a6,1
   1a308:	02f13c23          	sd	a5,56(sp)
   1a30c:	00184483          	lbu	s1,1(a6)
   1a310:	fd5ff06f          	j	1a2e4 <_strtod_r+0x964>
   1a314:	04e00793          	li	a5,78
   1a318:	00f48c63          	beq	s1,a5,1a330 <_strtod_r+0x9b0>
   1a31c:	5497d463          	ble	s1,a5,1a864 <_strtod_r+0xee4>
   1a320:	06900793          	li	a5,105
   1a324:	54f48463          	beq	s1,a5,1a86c <_strtod_r+0xeec>
   1a328:	06e00793          	li	a5,110
   1a32c:	8cf49ce3          	bne	s1,a5,19c04 <_strtod_r+0x284>
   1a330:	03813603          	ld	a2,56(sp)
   1a334:	00022737          	lui	a4,0x22
   1a338:	d7870713          	addi	a4,a4,-648 # 21d78 <zeroes.4123+0x710>
   1a33c:	01900813          	li	a6,25
   1a340:	00170713          	addi	a4,a4,1
   1a344:	fff74583          	lbu	a1,-1(a4)
   1a348:	5a058663          	beqz	a1,1a8f4 <_strtod_r+0xf74>
   1a34c:	00160613          	addi	a2,a2,1
   1a350:	00064683          	lbu	a3,0(a2)
   1a354:	fbf6879b          	addiw	a5,a3,-65
   1a358:	0ff7f793          	andi	a5,a5,255
   1a35c:	00068513          	mv	a0,a3
   1a360:	00f86463          	bltu	a6,a5,1a368 <_strtod_r+0x9e8>
   1a364:	0206851b          	addiw	a0,a3,32
   1a368:	fcb50ce3          	beq	a0,a1,1a340 <_strtod_r+0x9c0>
   1a36c:	899ff06f          	j	19c04 <_strtod_r+0x284>
   1a370:	00100893          	li	a7,1
   1a374:	002c8793          	addi	a5,s9,2
   1a378:	02f13c23          	sd	a5,56(sp)
   1a37c:	002cc483          	lbu	s1,2(s9)
   1a380:	fa4ff06f          	j	19b24 <_strtod_r+0x1a4>
   1a384:	02200793          	li	a5,34
   1a388:	7ff00493          	li	s1,2047
   1a38c:	00f42023          	sw	a5,0(s0)
   1a390:	03449493          	slli	s1,s1,0x34
   1a394:	a05ff06f          	j	19d98 <_strtod_r+0x418>
   1a398:	04013503          	ld	a0,64(sp)
   1a39c:	02200793          	li	a5,34
   1a3a0:	7ff00493          	li	s1,2047
   1a3a4:	00f42023          	sw	a5,0(s0)
   1a3a8:	03449493          	slli	s1,s1,0x34
   1a3ac:	00050593          	mv	a1,a0
   1a3b0:	00040513          	mv	a0,s0
   1a3b4:	abdfd0ef          	jal	17e70 <_Bfree>
   1a3b8:	000b0593          	mv	a1,s6
   1a3bc:	00040513          	mv	a0,s0
   1a3c0:	ab1fd0ef          	jal	17e70 <_Bfree>
   1a3c4:	000a0593          	mv	a1,s4
   1a3c8:	00040513          	mv	a0,s0
   1a3cc:	aa5fd0ef          	jal	17e70 <_Bfree>
   1a3d0:	000d0593          	mv	a1,s10
   1a3d4:	00040513          	mv	a0,s0
   1a3d8:	a99fd0ef          	jal	17e70 <_Bfree>
   1a3dc:	000c0593          	mv	a1,s8
   1a3e0:	00040513          	mv	a0,s0
   1a3e4:	a8dfd0ef          	jal	17e70 <_Bfree>
   1a3e8:	9b1ff06f          	j	19d98 <_strtod_r+0x418>
   1a3ec:	13257453          	fmul.d	fs0,fa0,fs2
   1a3f0:	e20407d3          	fmv.x.d	a5,fs0
   1a3f4:	e00b98e3          	bnez	s7,1a204 <_strtod_r+0x884>
   1a3f8:	228417d3          	fneg.d	fa5,fs0
   1a3fc:	e20787d3          	fmv.x.d	a5,fa5
   1a400:	e05ff06f          	j	1a204 <_strtod_r+0x884>
   1a404:	00812783          	lw	a5,8(sp)
   1a408:	00c12d83          	lw	s11,12(sp)
   1a40c:	40e785bb          	subw	a1,a5,a4
   1a410:	c49ff06f          	j	1a058 <_strtod_r+0x6d8>
   1a414:	01012683          	lw	a3,16(sp)
   1a418:	be200613          	li	a2,-1054
   1a41c:	40e6073b          	subw	a4,a2,a4
   1a420:	00e6973b          	sllw	a4,a3,a4
   1a424:	00e12c23          	sw	a4,24(sp)
   1a428:	c75ff06f          	j	1a09c <_strtod_r+0x71c>
   1a42c:	00c91793          	slli	a5,s2,0xc
   1a430:	12078e63          	beqz	a5,1a56c <_strtod_r+0xbec>
   1a434:	00100793          	li	a5,1
   1a438:	5cf90a63          	beq	s2,a5,1aa0c <_strtod_r+0x108c>
   1a43c:	bff00793          	li	a5,-1025
   1a440:	00024737          	lui	a4,0x24
   1a444:	03479793          	slli	a5,a5,0x34
   1a448:	4a873407          	fld	fs0,1192(a4) # 244a8 <mask+0x28>
   1a44c:	db9ff06f          	j	1a204 <_strtod_r+0x884>
   1a450:	03913c23          	sd	s9,56(sp)
   1a454:	00000b93          	li	s7,0
   1a458:	f9cff06f          	j	19bf4 <_strtod_r+0x274>
   1a45c:	00021637          	lui	a2,0x21
   1a460:	000a8793          	mv	a5,s5
   1a464:	04010713          	addi	a4,sp,64
   1a468:	03410693          	addi	a3,sp,52
   1a46c:	08860613          	addi	a2,a2,136 # 21088 <fpi.2617>
   1a470:	03810593          	addi	a1,sp,56
   1a474:	00040513          	mv	a0,s0
   1a478:	200040ef          	jal	1e678 <__gethex>
   1a47c:	00757a13          	andi	s4,a0,7
   1a480:	00050b13          	mv	s6,a0
   1a484:	00000493          	li	s1,0
   1a488:	900a08e3          	beqz	s4,19d98 <_strtod_r+0x418>
   1a48c:	00600793          	li	a5,6
   1a490:	1efa1e63          	bne	s4,a5,1a68c <_strtod_r+0xd0c>
   1a494:	001b8713          	addi	a4,s7,1
   1a498:	02e13c23          	sd	a4,56(sp)
   1a49c:	00000a93          	li	s5,0
   1a4a0:	8f9ff06f          	j	19d98 <_strtod_r+0x418>
   1a4a4:	fcb005b7          	lui	a1,0xfcb00
   1a4a8:	00b7073b          	addw	a4,a4,a1
   1a4ac:	fff00593          	li	a1,-1
   1a4b0:	0205d593          	srli	a1,a1,0x20
   1a4b4:	02071713          	slli	a4,a4,0x20
   1a4b8:	00b97933          	and	s2,s2,a1
   1a4bc:	00e96933          	or	s2,s2,a4
   1a4c0:	f2090553          	fmv.d.x	fa0,s2
   1a4c4:	f2078bd3          	fmv.d.x	fs7,a5
   1a4c8:	00d13c23          	sd	a3,24(sp)
   1a4cc:	00c13823          	sd	a2,16(sp)
   1a4d0:	02b13023          	sd	a1,32(sp)
   1a4d4:	c58fe0ef          	jal	1892c <__ulp>
   1a4d8:	f20907d3          	fmv.d.x	fa5,s2
   1a4dc:	01813683          	ld	a3,24(sp)
   1a4e0:	7ca00737          	lui	a4,0x7ca00
   1a4e4:	7aabf7c3          	fmadd.d	fa5,fs7,fa0,fa5
   1a4e8:	01013603          	ld	a2,16(sp)
   1a4ec:	e2078953          	fmv.x.d	s2,fa5
   1a4f0:	42095793          	srai	a5,s2,0x20
   1a4f4:	00d7f6b3          	and	a3,a5,a3
   1a4f8:	16e6ec63          	bltu	a3,a4,1a670 <_strtod_r+0xcf0>
   1a4fc:	7ff00793          	li	a5,2047
   1a500:	03479793          	slli	a5,a5,0x34
   1a504:	fff78793          	addi	a5,a5,-1 # 7fefffff <_end+0x7fed9207>
   1a508:	02013583          	ld	a1,32(sp)
   1a50c:	e8f486e3          	beq	s1,a5,1a398 <_strtod_r+0xa18>
   1a510:	7ff007b7          	lui	a5,0x7ff00
   1a514:	02091913          	slli	s2,s2,0x20
   1a518:	fff78793          	addi	a5,a5,-1 # 7fefffff <_end+0x7fed9207>
   1a51c:	02095913          	srli	s2,s2,0x20
   1a520:	02079793          	slli	a5,a5,0x20
   1a524:	00f96933          	or	s2,s2,a5
   1a528:	00b96933          	or	s2,s2,a1
   1a52c:	d79ff06f          	j	1a2a4 <_strtod_r+0x924>
   1a530:	00000893          	li	a7,0
   1a534:	e41ff06f          	j	1a374 <_strtod_r+0x9f4>
   1a538:	c20417d3          	fcvt.w.d	a5,fs0,rtz
   1a53c:	d2078553          	fcvt.d.w	fa0,a5
   1a540:	0aa47553          	fsub.d	fa0,fs0,fa0
   1a544:	0e0b9c63          	bnez	s7,1a63c <_strtod_r+0xcbc>
   1a548:	00c91793          	slli	a5,s2,0xc
   1a54c:	0e079863          	bnez	a5,1a63c <_strtod_r+0xcbc>
   1a550:	000247b7          	lui	a5,0x24
   1a554:	5107b787          	fld	fa5,1296(a5) # 24510 <mask+0x90>
   1a558:	a2f517d3          	flt.d	a5,fa0,fa5
   1a55c:	d40784e3          	beqz	a5,1a2a4 <_strtod_r+0x924>
   1a560:	04013503          	ld	a0,64(sp)
   1a564:	00090493          	mv	s1,s2
   1a568:	e45ff06f          	j	1a3ac <_strtod_r+0xa2c>
   1a56c:	a33517d3          	flt.d	a5,fa0,fs3
   1a570:	36079c63          	bnez	a5,1a8e8 <_strtod_r+0xf68>
   1a574:	000247b7          	lui	a5,0x24
   1a578:	4c87b407          	fld	fs0,1224(a5) # 244c8 <mask+0x48>
   1a57c:	12857453          	fmul.d	fs0,fa0,fs0
   1a580:	228417d3          	fneg.d	fa5,fs0
   1a584:	e20787d3          	fmv.x.d	a5,fa5
   1a588:	c7dff06f          	j	1a204 <_strtod_r+0x884>
   1a58c:	9e0706e3          	beqz	a4,19f78 <_strtod_r+0x5f8>
   1a590:	40e007bb          	negw	a5,a4
   1a594:	00f7f713          	andi	a4,a5,15
   1a598:	02070263          	beqz	a4,1a5bc <_strtod_r+0xc3c>
   1a59c:	00021637          	lui	a2,0x21
   1a5a0:	00371713          	slli	a4,a4,0x3
   1a5a4:	e9860613          	addi	a2,a2,-360 # 20e98 <__mprec_tens>
   1a5a8:	00c70733          	add	a4,a4,a2
   1a5ac:	f2090753          	fmv.d.x	fa4,s2
   1a5b0:	00073787          	fld	fa5,0(a4) # 7ca00000 <_end+0x7c9d9208>
   1a5b4:	1af777d3          	fdiv.d	fa5,fa4,fa5
   1a5b8:	e2078953          	fmv.x.d	s2,fa5
   1a5bc:	4047d79b          	sraiw	a5,a5,0x4
   1a5c0:	9a078ce3          	beqz	a5,19f78 <_strtod_r+0x5f8>
   1a5c4:	01f00713          	li	a4,31
   1a5c8:	06f74263          	blt	a4,a5,1a62c <_strtod_r+0xcac>
   1a5cc:	0107f713          	andi	a4,a5,16
   1a5d0:	54070a63          	beqz	a4,1ab24 <_strtod_r+0x11a4>
   1a5d4:	06a00c93          	li	s9,106
   1a5d8:	50f05663          	blez	a5,1aae4 <_strtod_r+0x1164>
   1a5dc:	00021737          	lui	a4,0x21
   1a5e0:	00090593          	mv	a1,s2
   1a5e4:	0b870713          	addi	a4,a4,184 # 210b8 <tinytens>
   1a5e8:	00000513          	li	a0,0
   1a5ec:	0017f613          	andi	a2,a5,1
   1a5f0:	00060c63          	beqz	a2,1a608 <_strtod_r+0xc88>
   1a5f4:	f2058753          	fmv.d.x	fa4,a1
   1a5f8:	00073787          	fld	fa5,0(a4)
   1a5fc:	00100513          	li	a0,1
   1a600:	12f777d3          	fmul.d	fa5,fa4,fa5
   1a604:	e20785d3          	fmv.x.d	a1,fa5
   1a608:	4017d79b          	sraiw	a5,a5,0x1
   1a60c:	00870713          	addi	a4,a4,8
   1a610:	fc079ee3          	bnez	a5,1a5ec <_strtod_r+0xc6c>
   1a614:	60051463          	bnez	a0,1ac1c <_strtod_r+0x129c>
   1a618:	4c0c9663          	bnez	s9,1aae4 <_strtod_r+0x1164>
   1a61c:	f20007d3          	fmv.d.x	fa5,zero
   1a620:	f2090753          	fmv.d.x	fa4,s2
   1a624:	a2f727d3          	feq.d	a5,fa4,fa5
   1a628:	94078ae3          	beqz	a5,19f7c <_strtod_r+0x5fc>
   1a62c:	02200793          	li	a5,34
   1a630:	00f42023          	sw	a5,0(s0)
   1a634:	00000493          	li	s1,0
   1a638:	f60ff06f          	j	19d98 <_strtod_r+0x418>
   1a63c:	a34517d3          	flt.d	a5,fa0,fs4
   1a640:	f20790e3          	bnez	a5,1a560 <_strtod_r+0xbe0>
   1a644:	000247b7          	lui	a5,0x24
   1a648:	5087b787          	fld	fa5,1288(a5) # 24508 <mask+0x88>
   1a64c:	a2a797d3          	flt.d	a5,fa5,fa0
   1a650:	c4078ae3          	beqz	a5,1a2a4 <_strtod_r+0x924>
   1a654:	f0dff06f          	j	1a560 <_strtod_r+0xbe0>
   1a658:	00078493          	mv	s1,a5
   1a65c:	000a0913          	mv	s2,s4
   1a660:	00000d93          	li	s11,0
   1a664:	00000d13          	li	s10,0
   1a668:	00000c13          	li	s8,0
   1a66c:	c34ff06f          	j	19aa0 <_strtod_r+0x120>
   1a670:	03500737          	lui	a4,0x3500
   1a674:	00e7873b          	addw	a4,a5,a4
   1a678:	02091913          	slli	s2,s2,0x20
   1a67c:	02071793          	slli	a5,a4,0x20
   1a680:	02095913          	srli	s2,s2,0x20
   1a684:	00f96933          	or	s2,s2,a5
   1a688:	c0dff06f          	j	1a294 <_strtod_r+0x914>
   1a68c:	04013603          	ld	a2,64(sp)
   1a690:	00060e63          	beqz	a2,1a6ac <_strtod_r+0xd2c>
   1a694:	03500593          	li	a1,53
   1a698:	04810513          	addi	a0,sp,72
   1a69c:	ea0fe0ef          	jal	18d3c <__copybits>
   1a6a0:	04013583          	ld	a1,64(sp)
   1a6a4:	00040513          	mv	a0,s0
   1a6a8:	fc8fd0ef          	jal	17e70 <_Bfree>
   1a6ac:	00600793          	li	a5,6
   1a6b0:	0347e463          	bltu	a5,s4,1a6d8 <_strtod_r+0xd58>
   1a6b4:	020a1793          	slli	a5,s4,0x20
   1a6b8:	00021737          	lui	a4,0x21
   1a6bc:	01e7d793          	srli	a5,a5,0x1e
   1a6c0:	06870713          	addi	a4,a4,104 # 21068 <__mprec_bigtens+0xe0>
   1a6c4:	00e787b3          	add	a5,a5,a4
   1a6c8:	0007a783          	lw	a5,0(a5)
   1a6cc:	00078067          	jr	a5
   1a6d0:	7ff00913          	li	s2,2047
   1a6d4:	03491913          	slli	s2,s2,0x34
   1a6d8:	008b7b13          	andi	s6,s6,8
   1a6dc:	f00b0e63          	beqz	s6,19df8 <_strtod_r+0x478>
   1a6e0:	42095713          	srai	a4,s2,0x20
   1a6e4:	800007b7          	lui	a5,0x80000
   1a6e8:	00f767b3          	or	a5,a4,a5
   1a6ec:	02091493          	slli	s1,s2,0x20
   1a6f0:	02079793          	slli	a5,a5,0x20
   1a6f4:	0204d493          	srli	s1,s1,0x20
   1a6f8:	00f4e4b3          	or	s1,s1,a5
   1a6fc:	e9cff06f          	j	19d98 <_strtod_r+0x418>
   1a700:	04c16783          	lwu	a5,76(sp)
   1a704:	04816903          	lwu	s2,72(sp)
   1a708:	02079793          	slli	a5,a5,0x20
   1a70c:	00f96933          	or	s2,s2,a5
   1a710:	fc9ff06f          	j	1a6d8 <_strtod_r+0xd58>
   1a714:	03412783          	lw	a5,52(sp)
   1a718:	04c12683          	lw	a3,76(sp)
   1a71c:	fff00737          	lui	a4,0xfff00
   1a720:	4337879b          	addiw	a5,a5,1075
   1a724:	fff7071b          	addiw	a4,a4,-1
   1a728:	00e6f733          	and	a4,a3,a4
   1a72c:	0147979b          	slliw	a5,a5,0x14
   1a730:	04816903          	lwu	s2,72(sp)
   1a734:	00f767b3          	or	a5,a4,a5
   1a738:	02079793          	slli	a5,a5,0x20
   1a73c:	00f96933          	or	s2,s2,a5
   1a740:	f99ff06f          	j	1a6d8 <_strtod_r+0xd58>
   1a744:	800007b7          	lui	a5,0x80000
   1a748:	fff7c793          	not	a5,a5
   1a74c:	fff00913          	li	s2,-1
   1a750:	02079793          	slli	a5,a5,0x20
   1a754:	02095913          	srli	s2,s2,0x20
   1a758:	0127e933          	or	s2,a5,s2
   1a75c:	f7dff06f          	j	1a6d8 <_strtod_r+0xd58>
   1a760:	00000913          	li	s2,0
   1a764:	f75ff06f          	j	1a6d8 <_strtod_r+0xd58>
   1a768:	00100793          	li	a5,1
   1a76c:	00e585bb          	addw	a1,a1,a4
   1a770:	00d6063b          	addw	a2,a2,a3
   1a774:	00800813          	li	a6,8
   1a778:	01000313          	li	t1,16
   1a77c:	48f70863          	beq	a4,a5,1ac0c <_strtod_r+0x128c>
   1a780:	0016869b          	addiw	a3,a3,1
   1a784:	fff6871b          	addiw	a4,a3,-1
   1a788:	06e86863          	bltu	a6,a4,1a7f8 <_strtod_r+0xe78>
   1a78c:	001d189b          	slliw	a7,s10,0x1
   1a790:	003d171b          	slliw	a4,s10,0x3
   1a794:	00e88d3b          	addw	s10,a7,a4
   1a798:	fec694e3          	bne	a3,a2,1a780 <_strtod_r+0xe00>
   1a79c:	03813803          	ld	a6,56(sp)
   1a7a0:	0016869b          	addiw	a3,a3,1
   1a7a4:	00800713          	li	a4,8
   1a7a8:	02c75c63          	ble	a2,a4,1a7e0 <_strtod_r+0xe60>
   1a7ac:	01000793          	li	a5,16
   1a7b0:	00000613          	li	a2,0
   1a7b4:	b4d7c8e3          	blt	a5,a3,1a304 <_strtod_r+0x984>
   1a7b8:	001d971b          	slliw	a4,s11,0x1
   1a7bc:	003d979b          	slliw	a5,s11,0x3
   1a7c0:	00f707bb          	addw	a5,a4,a5
   1a7c4:	00f50dbb          	addw	s11,a0,a5
   1a7c8:	b3dff06f          	j	1a304 <_strtod_r+0x984>
   1a7cc:	03813a03          	ld	s4,56(sp)
   1a7d0:	fd04849b          	addiw	s1,s1,-48
   1a7d4:	0016059b          	addiw	a1,a2,1
   1a7d8:	000a0813          	mv	a6,s4
   1a7dc:	00100693          	li	a3,1
   1a7e0:	001d161b          	slliw	a2,s10,0x1
   1a7e4:	003d171b          	slliw	a4,s10,0x3
   1a7e8:	00e6073b          	addw	a4,a2,a4
   1a7ec:	00e48d3b          	addw	s10,s1,a4
   1a7f0:	00000613          	li	a2,0
   1a7f4:	b11ff06f          	j	1a304 <_strtod_r+0x984>
   1a7f8:	fad340e3          	blt	t1,a3,1a798 <_strtod_r+0xe18>
   1a7fc:	001d971b          	slliw	a4,s11,0x1
   1a800:	003d979b          	slliw	a5,s11,0x3
   1a804:	00f70dbb          	addw	s11,a4,a5
   1a808:	f91ff06f          	j	1a798 <_strtod_r+0xe18>
   1a80c:	02500613          	li	a2,37
   1a810:	40d6063b          	subw	a2,a2,a3
   1a814:	e5764e63          	blt	a2,s7,19e70 <_strtod_r+0x4f0>
   1a818:	40d787bb          	subw	a5,a5,a3
   1a81c:	00078713          	mv	a4,a5
   1a820:	000216b7          	lui	a3,0x21
   1a824:	e9868693          	addi	a3,a3,-360 # 20e98 <__mprec_tens>
   1a828:	00371713          	slli	a4,a4,0x3
   1a82c:	00d70733          	add	a4,a4,a3
   1a830:	00073787          	fld	fa5,0(a4) # fffffffffff00000 <_end+0xffffffffffed9208>
   1a834:	f2090753          	fmv.d.x	fa4,s2
   1a838:	40fb87bb          	subw	a5,s7,a5
   1a83c:	00379793          	slli	a5,a5,0x3
   1a840:	12e7f753          	fmul.d	fa4,fa5,fa4
   1a844:	00d787b3          	add	a5,a5,a3
   1a848:	0007b787          	fld	fa5,0(a5) # ffffffff80000000 <_end+0xffffffff7ffd9208>
   1a84c:	12f777d3          	fmul.d	fa5,fa4,fa5
   1a850:	e20784d3          	fmv.x.d	s1,fa5
   1a854:	d44ff06f          	j	19d98 <_strtod_r+0x418>
   1a858:	000247b7          	lui	a5,0x24
   1a85c:	4a87b407          	fld	fs0,1192(a5) # 244a8 <mask+0x28>
   1a860:	9e1ff06f          	j	1a240 <_strtod_r+0x8c0>
   1a864:	04900793          	li	a5,73
   1a868:	b8f49e63          	bne	s1,a5,19c04 <_strtod_r+0x284>
   1a86c:	03813683          	ld	a3,56(sp)
   1a870:	00022737          	lui	a4,0x22
   1a874:	d6870713          	addi	a4,a4,-664 # 21d68 <zeroes.4123+0x700>
   1a878:	01900813          	li	a6,25
   1a87c:	00170713          	addi	a4,a4,1
   1a880:	fff74583          	lbu	a1,-1(a4)
   1a884:	d2058263          	beqz	a1,19da8 <_strtod_r+0x428>
   1a888:	00168693          	addi	a3,a3,1
   1a88c:	0006c603          	lbu	a2,0(a3)
   1a890:	fbf6079b          	addiw	a5,a2,-65
   1a894:	0ff7f793          	andi	a5,a5,255
   1a898:	00060513          	mv	a0,a2
   1a89c:	00f86463          	bltu	a6,a5,1a8a4 <_strtod_r+0xf24>
   1a8a0:	0206051b          	addiw	a0,a2,32
   1a8a4:	fcb50ce3          	beq	a0,a1,1a87c <_strtod_r+0xefc>
   1a8a8:	b5cff06f          	j	19c04 <_strtod_r+0x284>
   1a8ac:	00012423          	sw	zero,8(sp)
   1a8b0:	f00ff06f          	j	19fb0 <_strtod_r+0x630>
   1a8b4:	fea00793          	li	a5,-22
   1a8b8:	dafbcc63          	blt	s7,a5,19e70 <_strtod_r+0x4f0>
   1a8bc:	41700bbb          	negw	s7,s7
   1a8c0:	000b8793          	mv	a5,s7
   1a8c4:	00021737          	lui	a4,0x21
   1a8c8:	00379793          	slli	a5,a5,0x3
   1a8cc:	e9870713          	addi	a4,a4,-360 # 20e98 <__mprec_tens>
   1a8d0:	00e787b3          	add	a5,a5,a4
   1a8d4:	0007b787          	fld	fa5,0(a5)
   1a8d8:	f2090753          	fmv.d.x	fa4,s2
   1a8dc:	1af777d3          	fdiv.d	fa5,fa4,fa5
   1a8e0:	e20784d3          	fmv.x.d	s1,fa5
   1a8e4:	cb4ff06f          	j	19d98 <_strtod_r+0x418>
   1a8e8:	e20b07d3          	fmv.x.d	a5,fs6
   1a8ec:	235a8453          	fmv.d	fs0,fs5
   1a8f0:	915ff06f          	j	1a204 <_strtod_r+0x884>
   1a8f4:	00160793          	addi	a5,a2,1
   1a8f8:	02f13c23          	sd	a5,56(sp)
   1a8fc:	00164703          	lbu	a4,1(a2)
   1a900:	02800793          	li	a5,40
   1a904:	18f70063          	beq	a4,a5,1aa84 <_strtod_r+0x1104>
   1a908:	fff00913          	li	s2,-1
   1a90c:	03391913          	slli	s2,s2,0x33
   1a910:	00090493          	mv	s1,s2
   1a914:	c84ff06f          	j	19d98 <_strtod_r+0x418>
   1a918:	00000613          	li	a2,0
   1a91c:	d38ff06f          	j	19e54 <_strtod_r+0x4d4>
   1a920:	120b8863          	beqz	s7,1aa50 <_strtod_r+0x10d0>
   1a924:	42095693          	srai	a3,s2,0x20
   1a928:	fff6c793          	not	a5,a3
   1a92c:	02c79713          	slli	a4,a5,0x2c
   1a930:	26070063          	beqz	a4,1ab90 <_strtod_r+0x1210>
   1a934:	01812703          	lw	a4,24(sp)
   1a938:	12070463          	beqz	a4,1aa60 <_strtod_r+0x10e0>
   1a93c:	42095793          	srai	a5,s2,0x20
   1a940:	00e7f7b3          	and	a5,a5,a4
   1a944:	02078063          	beqz	a5,1a964 <_strtod_r+0xfe4>
   1a948:	000c8593          	mv	a1,s9
   1a94c:	00090513          	mv	a0,s2
   1a950:	160b8863          	beqz	s7,1aac0 <_strtod_r+0x1140>
   1a954:	5bd050ef          	jal	20710 <sulp>
   1a958:	f20487d3          	fmv.d.x	fa5,s1
   1a95c:	02a7f7d3          	fadd.d	fa5,fa5,fa0
   1a960:	e20784d3          	fmv.x.d	s1,fa5
   1a964:	0c0c8e63          	beqz	s9,1aa40 <_strtod_r+0x10c0>
   1a968:	39500793          	li	a5,917
   1a96c:	03479793          	slli	a5,a5,0x34
   1a970:	f20487d3          	fmv.d.x	fa5,s1
   1a974:	f2078753          	fmv.d.x	fa4,a5
   1a978:	04013503          	ld	a0,64(sp)
   1a97c:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   1a980:	e20784d3          	fmv.x.d	s1,fa5
   1a984:	a20494e3          	bnez	s1,1a3ac <_strtod_r+0xa2c>
   1a988:	02200793          	li	a5,34
   1a98c:	00f42023          	sw	a5,0(s0)
   1a990:	a1dff06f          	j	1a3ac <_strtod_r+0xa2c>
   1a994:	fc0b98e3          	bnez	s7,1a964 <_strtod_r+0xfe4>
   1a998:	00c91793          	slli	a5,s2,0xc
   1a99c:	fc0794e3          	bnez	a5,1a964 <_strtod_r+0xfe4>
   1a9a0:	02095913          	srli	s2,s2,0x20
   1a9a4:	0009071b          	sext.w	a4,s2
   1a9a8:	7ff007b7          	lui	a5,0x7ff00
   1a9ac:	00f777b3          	and	a5,a4,a5
   1a9b0:	06b00737          	lui	a4,0x6b00
   1a9b4:	faf778e3          	bleu	a5,a4,1a964 <_strtod_r+0xfe4>
   1a9b8:	018c2783          	lw	a5,24(s8)
   1a9bc:	00079863          	bnez	a5,1a9cc <_strtod_r+0x104c>
   1a9c0:	014c2703          	lw	a4,20(s8)
   1a9c4:	00100793          	li	a5,1
   1a9c8:	f8e7dee3          	ble	a4,a5,1a964 <_strtod_r+0xfe4>
   1a9cc:	000c0593          	mv	a1,s8
   1a9d0:	00100613          	li	a2,1
   1a9d4:	00040513          	mv	a0,s0
   1a9d8:	b85fd0ef          	jal	1855c <__lshift>
   1a9dc:	000a0593          	mv	a1,s4
   1a9e0:	00050c13          	mv	s8,a0
   1a9e4:	cd9fd0ef          	jal	186bc <__mcmp>
   1a9e8:	f6a05ee3          	blez	a0,1a964 <_strtod_r+0xfe4>
   1a9ec:	140c8263          	beqz	s9,1ab30 <_strtod_r+0x11b0>
   1a9f0:	0009071b          	sext.w	a4,s2
   1a9f4:	7ff007b7          	lui	a5,0x7ff00
   1a9f8:	00f777b3          	and	a5,a4,a5
   1a9fc:	06b00737          	lui	a4,0x6b00
   1aa00:	12f74863          	blt	a4,a5,1ab30 <_strtod_r+0x11b0>
   1aa04:	03700737          	lui	a4,0x3700
   1aa08:	f6f740e3          	blt	a4,a5,1a968 <_strtod_r+0xfe8>
   1aa0c:	02200793          	li	a5,34
   1aa10:	00f42023          	sw	a5,0(s0)
   1aa14:	04013503          	ld	a0,64(sp)
   1aa18:	00000493          	li	s1,0
   1aa1c:	991ff06f          	j	1a3ac <_strtod_r+0xa2c>
   1aa20:	035007b7          	lui	a5,0x3500
   1aa24:	00f607bb          	addw	a5,a2,a5
   1aa28:	02091913          	slli	s2,s2,0x20
   1aa2c:	02079793          	slli	a5,a5,0x20
   1aa30:	02095913          	srli	s2,s2,0x20
   1aa34:	00f96933          	or	s2,s2,a5
   1aa38:	00000c93          	li	s9,0
   1aa3c:	d40ff06f          	j	19f7c <_strtod_r+0x5fc>
   1aa40:	04013503          	ld	a0,64(sp)
   1aa44:	969ff06f          	j	1a3ac <_strtod_r+0xa2c>
   1aa48:	02c13c23          	sd	a2,56(sp)
   1aa4c:	ba4ff06f          	j	19df0 <_strtod_r+0x470>
   1aa50:	00c91793          	slli	a5,s2,0xc
   1aa54:	ee0790e3          	bnez	a5,1a934 <_strtod_r+0xfb4>
   1aa58:	02095913          	srli	s2,s2,0x20
   1aa5c:	f91ff06f          	j	1a9ec <_strtod_r+0x106c>
   1aa60:	01012703          	lw	a4,16(sp)
   1aa64:	0009079b          	sext.w	a5,s2
   1aa68:	00e7f7b3          	and	a5,a5,a4
   1aa6c:	ee078ce3          	beqz	a5,1a964 <_strtod_r+0xfe4>
   1aa70:	ed9ff06f          	j	1a948 <_strtod_r+0xfc8>
   1aa74:	00021337          	lui	t1,0x21
   1aa78:	00000613          	li	a2,0
   1aa7c:	f8830313          	addi	t1,t1,-120 # 20f88 <__mprec_bigtens>
   1aa80:	c88ff06f          	j	19f08 <_strtod_r+0x588>
   1aa84:	000215b7          	lui	a1,0x21
   1aa88:	04810613          	addi	a2,sp,72
   1aa8c:	0a058593          	addi	a1,a1,160 # 210a0 <fpinan.2653>
   1aa90:	03810513          	addi	a0,sp,56
   1aa94:	374040ef          	jal	1ee08 <__hexnan>
   1aa98:	00500793          	li	a5,5
   1aa9c:	e6f516e3          	bne	a0,a5,1a908 <_strtod_r+0xf88>
   1aaa0:	04c12703          	lw	a4,76(sp)
   1aaa4:	04816903          	lwu	s2,72(sp)
   1aaa8:	7ff007b7          	lui	a5,0x7ff00
   1aaac:	00f767b3          	or	a5,a4,a5
   1aab0:	02079793          	slli	a5,a5,0x20
   1aab4:	0127e933          	or	s2,a5,s2
   1aab8:	00090493          	mv	s1,s2
   1aabc:	adcff06f          	j	19d98 <_strtod_r+0x418>
   1aac0:	451050ef          	jal	20710 <sulp>
   1aac4:	f20487d3          	fmv.d.x	fa5,s1
   1aac8:	0aa7f7d3          	fsub.d	fa5,fa5,fa0
   1aacc:	e20784d3          	fmv.x.d	s1,fa5
   1aad0:	f20007d3          	fmv.d.x	fa5,zero
   1aad4:	f2048753          	fmv.d.x	fa4,s1
   1aad8:	a2f727d3          	feq.d	a5,fa4,fa5
   1aadc:	f20798e3          	bnez	a5,1aa0c <_strtod_r+0x108c>
   1aae0:	e85ff06f          	j	1a964 <_strtod_r+0xfe4>
   1aae4:	42095613          	srai	a2,s2,0x20
   1aae8:	02161793          	slli	a5,a2,0x21
   1aaec:	0357d713          	srli	a4,a5,0x35
   1aaf0:	06b00793          	li	a5,107
   1aaf4:	40e787bb          	subw	a5,a5,a4
   1aaf8:	b2f052e3          	blez	a5,1a61c <_strtod_r+0xc9c>
   1aafc:	01f00713          	li	a4,31
   1ab00:	06f75263          	ble	a5,a4,1ab64 <_strtod_r+0x11e4>
   1ab04:	fff00713          	li	a4,-1
   1ab08:	02071593          	slli	a1,a4,0x20
   1ab0c:	00b97933          	and	s2,s2,a1
   1ab10:	03400593          	li	a1,52
   1ab14:	0cf5da63          	ble	a5,a1,1abe8 <_strtod_r+0x1268>
   1ab18:	03700913          	li	s2,55
   1ab1c:	03491913          	slli	s2,s2,0x34
   1ab20:	afdff06f          	j	1a61c <_strtod_r+0xc9c>
   1ab24:	00000c93          	li	s9,0
   1ab28:	aaf04ae3          	bgtz	a5,1a5dc <_strtod_r+0xc5c>
   1ab2c:	af1ff06f          	j	1a61c <_strtod_r+0xc9c>
   1ab30:	7ff00737          	lui	a4,0x7ff00
   1ab34:	0009091b          	sext.w	s2,s2
   1ab38:	fff007b7          	lui	a5,0xfff00
   1ab3c:	00e97933          	and	s2,s2,a4
   1ab40:	00f9073b          	addw	a4,s2,a5
   1ab44:	001007b7          	lui	a5,0x100
   1ab48:	fff7879b          	addiw	a5,a5,-1
   1ab4c:	00f767b3          	or	a5,a4,a5
   1ab50:	fff00493          	li	s1,-1
   1ab54:	02079793          	slli	a5,a5,0x20
   1ab58:	0204d493          	srli	s1,s1,0x20
   1ab5c:	00f4e4b3          	or	s1,s1,a5
   1ab60:	e05ff06f          	j	1a964 <_strtod_r+0xfe4>
   1ab64:	fff00713          	li	a4,-1
   1ab68:	0009061b          	sext.w	a2,s2
   1ab6c:	00f717bb          	sllw	a5,a4,a5
   1ab70:	00f677b3          	and	a5,a2,a5
   1ab74:	fff00713          	li	a4,-1
   1ab78:	02079793          	slli	a5,a5,0x20
   1ab7c:	02071713          	slli	a4,a4,0x20
   1ab80:	0207d793          	srli	a5,a5,0x20
   1ab84:	00e97933          	and	s2,s2,a4
   1ab88:	00f96933          	or	s2,s2,a5
   1ab8c:	a91ff06f          	j	1a61c <_strtod_r+0xc9c>
   1ab90:	0009059b          	sext.w	a1,s2
   1ab94:	fff00713          	li	a4,-1
   1ab98:	020c8263          	beqz	s9,1abbc <_strtod_r+0x123c>
   1ab9c:	7ff007b7          	lui	a5,0x7ff00
   1aba0:	00f6f7b3          	and	a5,a3,a5
   1aba4:	06a00637          	lui	a2,0x6a00
   1aba8:	00f66a63          	bltu	a2,a5,1abbc <_strtod_r+0x123c>
   1abac:	0147d79b          	srliw	a5,a5,0x14
   1abb0:	06b00613          	li	a2,107
   1abb4:	40f607bb          	subw	a5,a2,a5
   1abb8:	00f7173b          	sllw	a4,a4,a5
   1abbc:	d6b71ce3          	bne	a4,a1,1a934 <_strtod_r+0xfb4>
   1abc0:	7ff00713          	li	a4,2047
   1abc4:	03471713          	slli	a4,a4,0x34
   1abc8:	fff70713          	addi	a4,a4,-1 # 7fefffff <_end+0x7fed9207>
   1abcc:	fce90663          	beq	s2,a4,1a398 <_strtod_r+0xa18>
   1abd0:	7ff007b7          	lui	a5,0x7ff00
   1abd4:	00f6f7b3          	and	a5,a3,a5
   1abd8:	001004b7          	lui	s1,0x100
   1abdc:	009784bb          	addw	s1,a5,s1
   1abe0:	02049493          	slli	s1,s1,0x20
   1abe4:	d81ff06f          	j	1a964 <_strtod_r+0xfe4>
   1abe8:	00f717bb          	sllw	a5,a4,a5
   1abec:	00c7f7b3          	and	a5,a5,a2
   1abf0:	02075713          	srli	a4,a4,0x20
   1abf4:	02079793          	slli	a5,a5,0x20
   1abf8:	00e97933          	and	s2,s2,a4
   1abfc:	00f96933          	or	s2,s2,a5
   1ac00:	a1dff06f          	j	1a61c <_strtod_r+0xc9c>
   1ac04:	00080913          	mv	s2,a6
   1ac08:	b00ff06f          	j	19f08 <_strtod_r+0x588>
   1ac0c:	00068613          	mv	a2,a3
   1ac10:	03813803          	ld	a6,56(sp)
   1ac14:	00f686bb          	addw	a3,a3,a5
   1ac18:	b8dff06f          	j	1a7a4 <_strtod_r+0xe24>
   1ac1c:	00058913          	mv	s2,a1
   1ac20:	9f9ff06f          	j	1a618 <_strtod_r+0xc98>

000000000001ac24 <strtod>:
   1ac24:	00058613          	mv	a2,a1
   1ac28:	00050593          	mv	a1,a0
   1ac2c:	8181b503          	ld	a0,-2024(gp) # 24438 <_impure_ptr>
   1ac30:	d51fe06f          	j	19980 <_strtod_r>

000000000001ac34 <strtof>:
   1ac34:	00058613          	mv	a2,a1
   1ac38:	00050593          	mv	a1,a0
   1ac3c:	8181b503          	ld	a0,-2024(gp) # 24438 <_impure_ptr>
   1ac40:	fe010113          	addi	sp,sp,-32
   1ac44:	00813427          	fsd	fs0,8(sp)
   1ac48:	00113c23          	sd	ra,24(sp)
   1ac4c:	d35fe0ef          	jal	19980 <_strtod_r>
   1ac50:	22a50453          	fmv.d	fs0,fa0
   1ac54:	a79fe0ef          	jal	196cc <__fpclassifyd>
   1ac58:	00050c63          	beqz	a0,1ac70 <strtof+0x3c>
   1ac5c:	01813083          	ld	ra,24(sp)
   1ac60:	40147553          	fcvt.s.d	fa0,fs0
   1ac64:	00813407          	fld	fs0,8(sp)
   1ac68:	02010113          	addi	sp,sp,32
   1ac6c:	00008067          	ret
   1ac70:	01813083          	ld	ra,24(sp)
   1ac74:	00813407          	fld	fs0,8(sp)
   1ac78:	00000513          	li	a0,0
   1ac7c:	02010113          	addi	sp,sp,32
   1ac80:	a41fe06f          	j	196c0 <nanf>

000000000001ac84 <_strtol_r>:
   1ac84:	8301be83          	ld	t4,-2000(gp) # 24450 <__ctype_ptr__>
   1ac88:	00058313          	mv	t1,a1
   1ac8c:	0080006f          	j	1ac94 <_strtol_r+0x10>
   1ac90:	00080313          	mv	t1,a6
   1ac94:	00130813          	addi	a6,t1,1
   1ac98:	fff84783          	lbu	a5,-1(a6)
   1ac9c:	00fe8733          	add	a4,t4,a5
   1aca0:	00174703          	lbu	a4,1(a4)
   1aca4:	00877713          	andi	a4,a4,8
   1aca8:	fe0714e3          	bnez	a4,1ac90 <_strtol_r+0xc>
   1acac:	ff010113          	addi	sp,sp,-16
   1acb0:	00078893          	mv	a7,a5
   1acb4:	00813423          	sd	s0,8(sp)
   1acb8:	00913023          	sd	s1,0(sp)
   1acbc:	02d00793          	li	a5,45
   1acc0:	14f88063          	beq	a7,a5,1ae00 <_strtol_r+0x17c>
   1acc4:	02b00793          	li	a5,43
   1acc8:	00000393          	li	t2,0
   1accc:	12f88463          	beq	a7,a5,1adf4 <_strtol_r+0x170>
   1acd0:	0e068263          	beqz	a3,1adb4 <_strtol_r+0x130>
   1acd4:	01000793          	li	a5,16
   1acd8:	00068413          	mv	s0,a3
   1acdc:	14f68863          	beq	a3,a5,1ae2c <_strtol_r+0x1a8>
   1ace0:	fff00793          	li	a5,-1
   1ace4:	0017df13          	srli	t5,a5,0x1
   1ace8:	00038463          	beqz	t2,1acf0 <_strtol_r+0x6c>
   1acec:	03f79f13          	slli	t5,a5,0x3f
   1acf0:	028f74b3          	remu	s1,t5,s0
   1acf4:	011e8733          	add	a4,t4,a7
   1acf8:	00174783          	lbu	a5,1(a4)
   1acfc:	00000e13          	li	t3,0
   1ad00:	00000313          	li	t1,0
   1ad04:	0047f713          	andi	a4,a5,4
   1ad08:	00100293          	li	t0,1
   1ad0c:	fff00f93          	li	t6,-1
   1ad10:	028f5f33          	divu	t5,t5,s0
   1ad14:	0004849b          	sext.w	s1,s1
   1ad18:	04070063          	beqz	a4,1ad58 <_strtol_r+0xd4>
   1ad1c:	fd08879b          	addiw	a5,a7,-48
   1ad20:	04d7de63          	ble	a3,a5,1ad7c <_strtol_r+0xf8>
   1ad24:	01fe0e63          	beq	t3,t6,1ad40 <_strtol_r+0xbc>
   1ad28:	fff00e13          	li	t3,-1
   1ad2c:	006f6a63          	bltu	t5,t1,1ad40 <_strtol_r+0xbc>
   1ad30:	07e30e63          	beq	t1,t5,1adac <_strtol_r+0x128>
   1ad34:	00100e13          	li	t3,1
   1ad38:	02830333          	mul	t1,t1,s0
   1ad3c:	00678333          	add	t1,a5,t1
   1ad40:	00180813          	addi	a6,a6,1
   1ad44:	fff84883          	lbu	a7,-1(a6)
   1ad48:	011e8733          	add	a4,t4,a7
   1ad4c:	00174783          	lbu	a5,1(a4)
   1ad50:	0047f713          	andi	a4,a5,4
   1ad54:	fc0714e3          	bnez	a4,1ad1c <_strtol_r+0x98>
   1ad58:	0037f713          	andi	a4,a5,3
   1ad5c:	02070063          	beqz	a4,1ad7c <_strtol_r+0xf8>
   1ad60:	40e2873b          	subw	a4,t0,a4
   1ad64:	00e03733          	snez	a4,a4
   1ad68:	40e0073b          	negw	a4,a4
   1ad6c:	02077713          	andi	a4,a4,32
   1ad70:	0377071b          	addiw	a4,a4,55
   1ad74:	40e887bb          	subw	a5,a7,a4
   1ad78:	fad7c6e3          	blt	a5,a3,1ad24 <_strtol_r+0xa0>
   1ad7c:	fff00793          	li	a5,-1
   1ad80:	04fe0863          	beq	t3,a5,1add0 <_strtol_r+0x14c>
   1ad84:	04039263          	bnez	t2,1adc8 <_strtol_r+0x144>
   1ad88:	00030793          	mv	a5,t1
   1ad8c:	00060663          	beqz	a2,1ad98 <_strtol_r+0x114>
   1ad90:	040e1e63          	bnez	t3,1adec <_strtol_r+0x168>
   1ad94:	00b63023          	sd	a1,0(a2) # 6a00000 <_end+0x69d9208>
   1ad98:	00078513          	mv	a0,a5
   1ad9c:	00813403          	ld	s0,8(sp)
   1ada0:	00013483          	ld	s1,0(sp)
   1ada4:	01010113          	addi	sp,sp,16
   1ada8:	00008067          	ret
   1adac:	f8f4cae3          	blt	s1,a5,1ad40 <_strtol_r+0xbc>
   1adb0:	f85ff06f          	j	1ad34 <_strtol_r+0xb0>
   1adb4:	03000793          	li	a5,48
   1adb8:	04f88c63          	beq	a7,a5,1ae10 <_strtol_r+0x18c>
   1adbc:	00a00413          	li	s0,10
   1adc0:	00040693          	mv	a3,s0
   1adc4:	f1dff06f          	j	1ace0 <_strtol_r+0x5c>
   1adc8:	40600333          	neg	t1,t1
   1adcc:	fbdff06f          	j	1ad88 <_strtol_r+0x104>
   1add0:	fff00713          	li	a4,-1
   1add4:	00175793          	srli	a5,a4,0x1
   1add8:	00038463          	beqz	t2,1ade0 <_strtol_r+0x15c>
   1addc:	03f71793          	slli	a5,a4,0x3f
   1ade0:	02200713          	li	a4,34
   1ade4:	00e52023          	sw	a4,0(a0)
   1ade8:	fa0608e3          	beqz	a2,1ad98 <_strtol_r+0x114>
   1adec:	fff80593          	addi	a1,a6,-1
   1adf0:	fa5ff06f          	j	1ad94 <_strtol_r+0x110>
   1adf4:	00134883          	lbu	a7,1(t1)
   1adf8:	00230813          	addi	a6,t1,2
   1adfc:	ed5ff06f          	j	1acd0 <_strtol_r+0x4c>
   1ae00:	00230813          	addi	a6,t1,2
   1ae04:	00134883          	lbu	a7,1(t1)
   1ae08:	00100393          	li	t2,1
   1ae0c:	ec5ff06f          	j	1acd0 <_strtol_r+0x4c>
   1ae10:	00084783          	lbu	a5,0(a6)
   1ae14:	05800713          	li	a4,88
   1ae18:	0df7f793          	andi	a5,a5,223
   1ae1c:	02e78463          	beq	a5,a4,1ae44 <_strtol_r+0x1c0>
   1ae20:	00800413          	li	s0,8
   1ae24:	00040693          	mv	a3,s0
   1ae28:	eb9ff06f          	j	1ace0 <_strtol_r+0x5c>
   1ae2c:	03000793          	li	a5,48
   1ae30:	02f89463          	bne	a7,a5,1ae58 <_strtol_r+0x1d4>
   1ae34:	00084783          	lbu	a5,0(a6)
   1ae38:	05800713          	li	a4,88
   1ae3c:	0df7f793          	andi	a5,a5,223
   1ae40:	00e79c63          	bne	a5,a4,1ae58 <_strtol_r+0x1d4>
   1ae44:	01000413          	li	s0,16
   1ae48:	00184883          	lbu	a7,1(a6)
   1ae4c:	00040693          	mv	a3,s0
   1ae50:	00280813          	addi	a6,a6,2
   1ae54:	e8dff06f          	j	1ace0 <_strtol_r+0x5c>
   1ae58:	01000413          	li	s0,16
   1ae5c:	e85ff06f          	j	1ace0 <_strtol_r+0x5c>

000000000001ae60 <strtol>:
   1ae60:	00060693          	mv	a3,a2
   1ae64:	00058613          	mv	a2,a1
   1ae68:	00050593          	mv	a1,a0
   1ae6c:	8181b503          	ld	a0,-2024(gp) # 24438 <_impure_ptr>
   1ae70:	e15ff06f          	j	1ac84 <_strtol_r>

000000000001ae74 <_strtoul_r>:
   1ae74:	00050f13          	mv	t5,a0
   1ae78:	8301be03          	ld	t3,-2000(gp) # 24450 <__ctype_ptr__>
   1ae7c:	00058313          	mv	t1,a1
   1ae80:	0080006f          	j	1ae88 <_strtoul_r+0x14>
   1ae84:	00080313          	mv	t1,a6
   1ae88:	00130813          	addi	a6,t1,1
   1ae8c:	fff84783          	lbu	a5,-1(a6)
   1ae90:	00fe0733          	add	a4,t3,a5
   1ae94:	00174703          	lbu	a4,1(a4)
   1ae98:	00877713          	andi	a4,a4,8
   1ae9c:	fe0714e3          	bnez	a4,1ae84 <_strtoul_r+0x10>
   1aea0:	ff010113          	addi	sp,sp,-16
   1aea4:	00078893          	mv	a7,a5
   1aea8:	00813423          	sd	s0,8(sp)
   1aeac:	00913023          	sd	s1,0(sp)
   1aeb0:	02d00793          	li	a5,45
   1aeb4:	12f88263          	beq	a7,a5,1afd8 <_strtoul_r+0x164>
   1aeb8:	02b00793          	li	a5,43
   1aebc:	00000f93          	li	t6,0
   1aec0:	0ef88663          	beq	a7,a5,1afac <_strtoul_r+0x138>
   1aec4:	02068263          	beqz	a3,1aee8 <_strtoul_r+0x74>
   1aec8:	01000793          	li	a5,16
   1aecc:	14f68263          	beq	a3,a5,1b010 <_strtoul_r+0x19c>
   1aed0:	fff00e93          	li	t4,-1
   1aed4:	02def3b3          	remu	t2,t4,a3
   1aed8:	00068293          	mv	t0,a3
   1aedc:	02dedeb3          	divu	t4,t4,a3
   1aee0:	0003839b          	sext.w	t2,t2
   1aee4:	0200006f          	j	1af04 <_strtoul_r+0x90>
   1aee8:	03000793          	li	a5,48
   1aeec:	0ef88e63          	beq	a7,a5,1afe8 <_strtoul_r+0x174>
   1aef0:	000247b7          	lui	a5,0x24
   1aef4:	5187be83          	ld	t4,1304(a5) # 24518 <mask+0x98>
   1aef8:	00a00293          	li	t0,10
   1aefc:	00500393          	li	t2,5
   1af00:	00028693          	mv	a3,t0
   1af04:	011e0733          	add	a4,t3,a7
   1af08:	00174783          	lbu	a5,1(a4)
   1af0c:	00000313          	li	t1,0
   1af10:	00000513          	li	a0,0
   1af14:	0047f713          	andi	a4,a5,4
   1af18:	00100493          	li	s1,1
   1af1c:	fff00413          	li	s0,-1
   1af20:	04070063          	beqz	a4,1af60 <_strtoul_r+0xec>
   1af24:	fd08879b          	addiw	a5,a7,-48
   1af28:	04d7de63          	ble	a3,a5,1af84 <_strtoul_r+0x110>
   1af2c:	00830e63          	beq	t1,s0,1af48 <_strtoul_r+0xd4>
   1af30:	fff00313          	li	t1,-1
   1af34:	00aeea63          	bltu	t4,a0,1af48 <_strtoul_r+0xd4>
   1af38:	09d50063          	beq	a0,t4,1afb8 <_strtoul_r+0x144>
   1af3c:	02550733          	mul	a4,a0,t0
   1af40:	00100313          	li	t1,1
   1af44:	00e78533          	add	a0,a5,a4
   1af48:	00180813          	addi	a6,a6,1
   1af4c:	fff84883          	lbu	a7,-1(a6)
   1af50:	011e0733          	add	a4,t3,a7
   1af54:	00174783          	lbu	a5,1(a4)
   1af58:	0047f713          	andi	a4,a5,4
   1af5c:	fc0714e3          	bnez	a4,1af24 <_strtoul_r+0xb0>
   1af60:	0037f713          	andi	a4,a5,3
   1af64:	02070063          	beqz	a4,1af84 <_strtoul_r+0x110>
   1af68:	40e4873b          	subw	a4,s1,a4
   1af6c:	00e03733          	snez	a4,a4
   1af70:	40e0073b          	negw	a4,a4
   1af74:	02077713          	andi	a4,a4,32
   1af78:	0377071b          	addiw	a4,a4,55
   1af7c:	40e887bb          	subw	a5,a7,a4
   1af80:	fad7c6e3          	blt	a5,a3,1af2c <_strtoul_r+0xb8>
   1af84:	02034e63          	bltz	t1,1afc0 <_strtoul_r+0x14c>
   1af88:	000f8463          	beqz	t6,1af90 <_strtoul_r+0x11c>
   1af8c:	40a00533          	neg	a0,a0
   1af90:	00060663          	beqz	a2,1af9c <_strtoul_r+0x128>
   1af94:	02031e63          	bnez	t1,1afd0 <_strtoul_r+0x15c>
   1af98:	00b63023          	sd	a1,0(a2)
   1af9c:	00813403          	ld	s0,8(sp)
   1afa0:	00013483          	ld	s1,0(sp)
   1afa4:	01010113          	addi	sp,sp,16
   1afa8:	00008067          	ret
   1afac:	00134883          	lbu	a7,1(t1)
   1afb0:	00230813          	addi	a6,t1,2
   1afb4:	f11ff06f          	j	1aec4 <_strtoul_r+0x50>
   1afb8:	f8f3c8e3          	blt	t2,a5,1af48 <_strtoul_r+0xd4>
   1afbc:	f81ff06f          	j	1af3c <_strtoul_r+0xc8>
   1afc0:	02200793          	li	a5,34
   1afc4:	00ff2023          	sw	a5,0(t5)
   1afc8:	fff00513          	li	a0,-1
   1afcc:	fc0608e3          	beqz	a2,1af9c <_strtoul_r+0x128>
   1afd0:	fff80593          	addi	a1,a6,-1
   1afd4:	fc5ff06f          	j	1af98 <_strtoul_r+0x124>
   1afd8:	00230813          	addi	a6,t1,2
   1afdc:	00134883          	lbu	a7,1(t1)
   1afe0:	00100f93          	li	t6,1
   1afe4:	ee1ff06f          	j	1aec4 <_strtoul_r+0x50>
   1afe8:	00084783          	lbu	a5,0(a6)
   1afec:	05800713          	li	a4,88
   1aff0:	0df7f793          	andi	a5,a5,223
   1aff4:	02e78a63          	beq	a5,a4,1b028 <_strtoul_r+0x1b4>
   1aff8:	00800293          	li	t0,8
   1affc:	fff00e93          	li	t4,-1
   1b000:	00700393          	li	t2,7
   1b004:	003ede93          	srli	t4,t4,0x3
   1b008:	00028693          	mv	a3,t0
   1b00c:	ef9ff06f          	j	1af04 <_strtoul_r+0x90>
   1b010:	03000793          	li	a5,48
   1b014:	02f89a63          	bne	a7,a5,1b048 <_strtoul_r+0x1d4>
   1b018:	00084783          	lbu	a5,0(a6)
   1b01c:	05800713          	li	a4,88
   1b020:	0df7f793          	andi	a5,a5,223
   1b024:	02e79263          	bne	a5,a4,1b048 <_strtoul_r+0x1d4>
   1b028:	01000293          	li	t0,16
   1b02c:	fff00e93          	li	t4,-1
   1b030:	00184883          	lbu	a7,1(a6)
   1b034:	00f00393          	li	t2,15
   1b038:	00280813          	addi	a6,a6,2
   1b03c:	004ede93          	srli	t4,t4,0x4
   1b040:	00028693          	mv	a3,t0
   1b044:	ec1ff06f          	j	1af04 <_strtoul_r+0x90>
   1b048:	fff00e93          	li	t4,-1
   1b04c:	00f00393          	li	t2,15
   1b050:	004ede93          	srli	t4,t4,0x4
   1b054:	01000293          	li	t0,16
   1b058:	eadff06f          	j	1af04 <_strtoul_r+0x90>

000000000001b05c <strtoul>:
   1b05c:	00060693          	mv	a3,a2
   1b060:	00058613          	mv	a2,a1
   1b064:	00050593          	mv	a1,a0
   1b068:	8181b503          	ld	a0,-2024(gp) # 24438 <_impure_ptr>
   1b06c:	e09ff06f          	j	1ae74 <_strtoul_r>

000000000001b070 <_svfprintf_r>:
   1b070:	e1010113          	addi	sp,sp,-496
   1b074:	1e113423          	sd	ra,488(sp)
   1b078:	1d313423          	sd	s3,456(sp)
   1b07c:	1b713423          	sd	s7,424(sp)
   1b080:	1b813023          	sd	s8,416(sp)
   1b084:	00058b93          	mv	s7,a1
   1b088:	00060993          	mv	s3,a2
   1b08c:	02d13423          	sd	a3,40(sp)
   1b090:	1e813023          	sd	s0,480(sp)
   1b094:	1c913c23          	sd	s1,472(sp)
   1b098:	1d213823          	sd	s2,464(sp)
   1b09c:	1d413023          	sd	s4,448(sp)
   1b0a0:	1b513c23          	sd	s5,440(sp)
   1b0a4:	1b613823          	sd	s6,432(sp)
   1b0a8:	19913c23          	sd	s9,408(sp)
   1b0ac:	19a13823          	sd	s10,400(sp)
   1b0b0:	19b13423          	sd	s11,392(sp)
   1b0b4:	16813c27          	fsd	fs0,376(sp)
   1b0b8:	00050c13          	mv	s8,a0
   1b0bc:	cd4fc0ef          	jal	17590 <_localeconv_r>
   1b0c0:	00053783          	ld	a5,0(a0)
   1b0c4:	00078513          	mv	a0,a5
   1b0c8:	06f13023          	sd	a5,96(sp)
   1b0cc:	89df60ef          	jal	11968 <strlen>
   1b0d0:	010bd783          	lhu	a5,16(s7)
   1b0d4:	06a13423          	sd	a0,104(sp)
   1b0d8:	0807f793          	andi	a5,a5,128
   1b0dc:	00078863          	beqz	a5,1b0ec <_svfprintf_r+0x7c>
   1b0e0:	018bb783          	ld	a5,24(s7)
   1b0e4:	00079463          	bnez	a5,1b0ec <_svfprintf_r+0x7c>
   1b0e8:	5b00106f          	j	1c698 <_svfprintf_r+0x1628>
   1b0ec:	000217b7          	lui	a5,0x21
   1b0f0:	0e078793          	addi	a5,a5,224 # 210e0 <tinytens+0x28>
   1b0f4:	0f010a93          	addi	s5,sp,240
   1b0f8:	02f13823          	sd	a5,48(sp)
   1b0fc:	0ef10793          	addi	a5,sp,239
   1b100:	00021a37          	lui	s4,0x21
   1b104:	000214b7          	lui	s1,0x21
   1b108:	40fa87b3          	sub	a5,s5,a5
   1b10c:	04013c23          	sd	zero,88(sp)
   1b110:	0b513823          	sd	s5,176(sp)
   1b114:	0c013023          	sd	zero,192(sp)
   1b118:	0a012c23          	sw	zero,184(sp)
   1b11c:	06012823          	sw	zero,112(sp)
   1b120:	000a8893          	mv	a7,s5
   1b124:	02013c23          	sd	zero,56(sp)
   1b128:	06012a23          	sw	zero,116(sp)
   1b12c:	00012e23          	sw	zero,28(sp)
   1b130:	248a0a13          	addi	s4,s4,584 # 21248 <blanks.4178>
   1b134:	25848493          	addi	s1,s1,600 # 21258 <zeroes.4179>
   1b138:	06f13c23          	sd	a5,120(sp)
   1b13c:	0009c783          	lbu	a5,0(s3)
   1b140:	000780e3          	beqz	a5,1b940 <_svfprintf_r+0x8d0>
   1b144:	02500713          	li	a4,37
   1b148:	00098413          	mv	s0,s3
   1b14c:	00e79663          	bne	a5,a4,1b158 <_svfprintf_r+0xe8>
   1b150:	0580006f          	j	1b1a8 <_svfprintf_r+0x138>
   1b154:	00e78863          	beq	a5,a4,1b164 <_svfprintf_r+0xf4>
   1b158:	00140413          	addi	s0,s0,1
   1b15c:	00044783          	lbu	a5,0(s0)
   1b160:	fe079ae3          	bnez	a5,1b154 <_svfprintf_r+0xe4>
   1b164:	4134093b          	subw	s2,s0,s3
   1b168:	04090063          	beqz	s2,1b1a8 <_svfprintf_r+0x138>
   1b16c:	0c013703          	ld	a4,192(sp)
   1b170:	0b812783          	lw	a5,184(sp)
   1b174:	00090693          	mv	a3,s2
   1b178:	00d70733          	add	a4,a4,a3
   1b17c:	0017879b          	addiw	a5,a5,1
   1b180:	0138b023          	sd	s3,0(a7)
   1b184:	00d8b423          	sd	a3,8(a7)
   1b188:	0ce13023          	sd	a4,192(sp)
   1b18c:	0af12c23          	sw	a5,184(sp)
   1b190:	00700713          	li	a4,7
   1b194:	01088893          	addi	a7,a7,16
   1b198:	14f74263          	blt	a4,a5,1b2dc <_svfprintf_r+0x26c>
   1b19c:	01c12783          	lw	a5,28(sp)
   1b1a0:	012787bb          	addw	a5,a5,s2
   1b1a4:	00f12e23          	sw	a5,28(sp)
   1b1a8:	00044783          	lbu	a5,0(s0)
   1b1ac:	14078663          	beqz	a5,1b2f8 <_svfprintf_r+0x288>
   1b1b0:	00140993          	addi	s3,s0,1
   1b1b4:	080107a3          	sb	zero,143(sp)
   1b1b8:	00000613          	li	a2,0
   1b1bc:	00000593          	li	a1,0
   1b1c0:	fff00413          	li	s0,-1
   1b1c4:	00012c23          	sw	zero,24(sp)
   1b1c8:	00000b13          	li	s6,0
   1b1cc:	05800713          	li	a4,88
   1b1d0:	00900693          	li	a3,9
   1b1d4:	02a00513          	li	a0,42
   1b1d8:	0009cd03          	lbu	s10,0(s3)
   1b1dc:	00198993          	addi	s3,s3,1
   1b1e0:	fe0d079b          	addiw	a5,s10,-32
   1b1e4:	14f766e3          	bltu	a4,a5,1bb30 <_svfprintf_r+0xac0>
   1b1e8:	03013803          	ld	a6,48(sp)
   1b1ec:	02079793          	slli	a5,a5,0x20
   1b1f0:	01e7d793          	srli	a5,a5,0x1e
   1b1f4:	010787b3          	add	a5,a5,a6
   1b1f8:	0007a783          	lw	a5,0(a5)
   1b1fc:	00078067          	jr	a5
   1b200:	010b6b13          	ori	s6,s6,16
   1b204:	fd5ff06f          	j	1b1d8 <_svfprintf_r+0x168>
   1b208:	02813783          	ld	a5,40(sp)
   1b20c:	0007a803          	lw	a6,0(a5)
   1b210:	00878793          	addi	a5,a5,8
   1b214:	02f13423          	sd	a5,40(sp)
   1b218:	01012c23          	sw	a6,24(sp)
   1b21c:	fa085ee3          	bgez	a6,1b1d8 <_svfprintf_r+0x168>
   1b220:	410007bb          	negw	a5,a6
   1b224:	00f12c23          	sw	a5,24(sp)
   1b228:	004b6b13          	ori	s6,s6,4
   1b22c:	fadff06f          	j	1b1d8 <_svfprintf_r+0x168>
   1b230:	03000793          	li	a5,48
   1b234:	08f10823          	sb	a5,144(sp)
   1b238:	07800793          	li	a5,120
   1b23c:	08f108a3          	sb	a5,145(sp)
   1b240:	02813783          	ld	a5,40(sp)
   1b244:	080107a3          	sb	zero,143(sp)
   1b248:	002b6693          	ori	a3,s6,2
   1b24c:	00878713          	addi	a4,a5,8
   1b250:	0007b783          	ld	a5,0(a5)
   1b254:	100448e3          	bltz	s0,1bb64 <_svfprintf_r+0xaf4>
   1b258:	f7fb7b13          	andi	s6,s6,-129
   1b25c:	02e13423          	sd	a4,40(sp)
   1b260:	002b6b13          	ori	s6,s6,2
   1b264:	0a079ae3          	bnez	a5,1bb18 <_svfprintf_r+0xaa8>
   1b268:	000227b7          	lui	a5,0x22
   1b26c:	d1078793          	addi	a5,a5,-752 # 21d10 <zeroes.4123+0x6a8>
   1b270:	02f13c23          	sd	a5,56(sp)
   1b274:	07800d13          	li	s10,120
   1b278:	00000613          	li	a2,0
   1b27c:	00000793          	li	a5,0
   1b280:	70040063          	beqz	s0,1b980 <_svfprintf_r+0x910>
   1b284:	000a8913          	mv	s2,s5
   1b288:	03813683          	ld	a3,56(sp)
   1b28c:	00f7f713          	andi	a4,a5,15
   1b290:	fff90913          	addi	s2,s2,-1
   1b294:	00e68733          	add	a4,a3,a4
   1b298:	00074703          	lbu	a4,0(a4)
   1b29c:	0047d793          	srli	a5,a5,0x4
   1b2a0:	00e90023          	sb	a4,0(s2)
   1b2a4:	fe0792e3          	bnez	a5,1b288 <_svfprintf_r+0x218>
   1b2a8:	412a87b3          	sub	a5,s5,s2
   1b2ac:	02f12023          	sw	a5,32(sp)
   1b2b0:	02012783          	lw	a5,32(sp)
   1b2b4:	00078d93          	mv	s11,a5
   1b2b8:	0087d463          	ble	s0,a5,1b2c0 <_svfprintf_r+0x250>
   1b2bc:	00040d93          	mv	s11,s0
   1b2c0:	01b12423          	sw	s11,8(sp)
   1b2c4:	04012623          	sw	zero,76(sp)
   1b2c8:	32060263          	beqz	a2,1b5ec <_svfprintf_r+0x57c>
   1b2cc:	00812783          	lw	a5,8(sp)
   1b2d0:	0017879b          	addiw	a5,a5,1
   1b2d4:	00f12423          	sw	a5,8(sp)
   1b2d8:	3140006f          	j	1b5ec <_svfprintf_r+0x57c>
   1b2dc:	0b010613          	addi	a2,sp,176
   1b2e0:	000b8593          	mv	a1,s7
   1b2e4:	000c0513          	mv	a0,s8
   1b2e8:	659030ef          	jal	1f140 <__ssprint_r>
   1b2ec:	02051263          	bnez	a0,1b310 <_svfprintf_r+0x2a0>
   1b2f0:	000a8893          	mv	a7,s5
   1b2f4:	ea9ff06f          	j	1b19c <_svfprintf_r+0x12c>
   1b2f8:	0c013783          	ld	a5,192(sp)
   1b2fc:	00078a63          	beqz	a5,1b310 <_svfprintf_r+0x2a0>
   1b300:	0b010613          	addi	a2,sp,176
   1b304:	000b8593          	mv	a1,s7
   1b308:	000c0513          	mv	a0,s8
   1b30c:	635030ef          	jal	1f140 <__ssprint_r>
   1b310:	010bd783          	lhu	a5,16(s7)
   1b314:	01c12503          	lw	a0,28(sp)
   1b318:	0407f793          	andi	a5,a5,64
   1b31c:	00078463          	beqz	a5,1b324 <_svfprintf_r+0x2b4>
   1b320:	4f80106f          	j	1c818 <_svfprintf_r+0x17a8>
   1b324:	1e813083          	ld	ra,488(sp)
   1b328:	1e013403          	ld	s0,480(sp)
   1b32c:	1d813483          	ld	s1,472(sp)
   1b330:	1d013903          	ld	s2,464(sp)
   1b334:	1c813983          	ld	s3,456(sp)
   1b338:	1c013a03          	ld	s4,448(sp)
   1b33c:	1b813a83          	ld	s5,440(sp)
   1b340:	1b013b03          	ld	s6,432(sp)
   1b344:	1a813b83          	ld	s7,424(sp)
   1b348:	1a013c03          	ld	s8,416(sp)
   1b34c:	19813c83          	ld	s9,408(sp)
   1b350:	19013d03          	ld	s10,400(sp)
   1b354:	18813d83          	ld	s11,392(sp)
   1b358:	17813407          	fld	fs0,376(sp)
   1b35c:	1f010113          	addi	sp,sp,496
   1b360:	00008067          	ret
   1b364:	00100613          	li	a2,1
   1b368:	02b00593          	li	a1,43
   1b36c:	e6dff06f          	j	1b1d8 <_svfprintf_r+0x168>
   1b370:	00060463          	beqz	a2,1b378 <_svfprintf_r+0x308>
   1b374:	0990106f          	j	1cc0c <_svfprintf_r+0x1b9c>
   1b378:	010b7793          	andi	a5,s6,16
   1b37c:	16078863          	beqz	a5,1b4ec <_svfprintf_r+0x47c>
   1b380:	02813783          	ld	a5,40(sp)
   1b384:	080107a3          	sb	zero,143(sp)
   1b388:	00878713          	addi	a4,a5,8
   1b38c:	0007b783          	ld	a5,0(a5)
   1b390:	16044c63          	bltz	s0,1b508 <_svfprintf_r+0x498>
   1b394:	02e13423          	sd	a4,40(sp)
   1b398:	f7fb7b13          	andi	s6,s6,-129
   1b39c:	3a0794e3          	bnez	a5,1bf44 <_svfprintf_r+0xed4>
   1b3a0:	00000613          	li	a2,0
   1b3a4:	00000793          	li	a5,0
   1b3a8:	00041463          	bnez	s0,1b3b0 <_svfprintf_r+0x340>
   1b3ac:	3780106f          	j	1c724 <_svfprintf_r+0x16b4>
   1b3b0:	000a8913          	mv	s2,s5
   1b3b4:	0077f713          	andi	a4,a5,7
   1b3b8:	fff90913          	addi	s2,s2,-1
   1b3bc:	0307071b          	addiw	a4,a4,48
   1b3c0:	00e90023          	sb	a4,0(s2)
   1b3c4:	0037d793          	srli	a5,a5,0x3
   1b3c8:	fe0796e3          	bnez	a5,1b3b4 <_svfprintf_r+0x344>
   1b3cc:	001b7793          	andi	a5,s6,1
   1b3d0:	ec078ce3          	beqz	a5,1b2a8 <_svfprintf_r+0x238>
   1b3d4:	03000793          	li	a5,48
   1b3d8:	ecf708e3          	beq	a4,a5,1b2a8 <_svfprintf_r+0x238>
   1b3dc:	fff90713          	addi	a4,s2,-1
   1b3e0:	40ea86b3          	sub	a3,s5,a4
   1b3e4:	fef90fa3          	sb	a5,-1(s2)
   1b3e8:	02d12023          	sw	a3,32(sp)
   1b3ec:	00070913          	mv	s2,a4
   1b3f0:	ec1ff06f          	j	1b2b0 <_svfprintf_r+0x240>
   1b3f4:	00060463          	beqz	a2,1b3fc <_svfprintf_r+0x38c>
   1b3f8:	0710106f          	j	1cc68 <_svfprintf_r+0x1bf8>
   1b3fc:	000227b7          	lui	a5,0x22
   1b400:	d1078793          	addi	a5,a5,-752 # 21d10 <zeroes.4123+0x6a8>
   1b404:	02f13c23          	sd	a5,56(sp)
   1b408:	010b7793          	andi	a5,s6,16
   1b40c:	18078863          	beqz	a5,1b59c <_svfprintf_r+0x52c>
   1b410:	02813703          	ld	a4,40(sp)
   1b414:	00073783          	ld	a5,0(a4)
   1b418:	00870713          	addi	a4,a4,8
   1b41c:	02e13423          	sd	a4,40(sp)
   1b420:	001b7713          	andi	a4,s6,1
   1b424:	300704e3          	beqz	a4,1bf2c <_svfprintf_r+0xebc>
   1b428:	00079463          	bnez	a5,1b430 <_svfprintf_r+0x3c0>
   1b42c:	7b10006f          	j	1c3dc <_svfprintf_r+0x136c>
   1b430:	03000713          	li	a4,48
   1b434:	08e10823          	sb	a4,144(sp)
   1b438:	09a108a3          	sb	s10,145(sp)
   1b43c:	080107a3          	sb	zero,143(sp)
   1b440:	002b6713          	ori	a4,s6,2
   1b444:	00045463          	bgez	s0,1b44c <_svfprintf_r+0x3dc>
   1b448:	4840106f          	j	1c8cc <_svfprintf_r+0x185c>
   1b44c:	f7fb7b13          	andi	s6,s6,-129
   1b450:	002b6b13          	ori	s6,s6,2
   1b454:	00000613          	li	a2,0
   1b458:	e2dff06f          	j	1b284 <_svfprintf_r+0x214>
   1b45c:	00060463          	beqz	a2,1b464 <_svfprintf_r+0x3f4>
   1b460:	7980106f          	j	1cbf8 <_svfprintf_r+0x1b88>
   1b464:	010b7793          	andi	a5,s6,16
   1b468:	720788e3          	beqz	a5,1c398 <_svfprintf_r+0x1328>
   1b46c:	02813683          	ld	a3,40(sp)
   1b470:	01c12703          	lw	a4,28(sp)
   1b474:	0006b783          	ld	a5,0(a3)
   1b478:	00868693          	addi	a3,a3,8
   1b47c:	02d13423          	sd	a3,40(sp)
   1b480:	00e7b023          	sd	a4,0(a5)
   1b484:	cb9ff06f          	j	1b13c <_svfprintf_r+0xcc>
   1b488:	0009cd03          	lbu	s10,0(s3)
   1b48c:	00198993          	addi	s3,s3,1
   1b490:	00ad1463          	bne	s10,a0,1b498 <_svfprintf_r+0x428>
   1b494:	6f80106f          	j	1cb8c <_svfprintf_r+0x1b1c>
   1b498:	fd0d079b          	addiw	a5,s10,-48
   1b49c:	00000413          	li	s0,0
   1b4a0:	d4f6e0e3          	bltu	a3,a5,1b1e0 <_svfprintf_r+0x170>
   1b4a4:	00198993          	addi	s3,s3,1
   1b4a8:	fff9cd03          	lbu	s10,-1(s3)
   1b4ac:	0014181b          	slliw	a6,s0,0x1
   1b4b0:	0034141b          	slliw	s0,s0,0x3
   1b4b4:	0088043b          	addw	s0,a6,s0
   1b4b8:	00f4043b          	addw	s0,s0,a5
   1b4bc:	fd0d079b          	addiw	a5,s10,-48
   1b4c0:	fef6f2e3          	bleu	a5,a3,1b4a4 <_svfprintf_r+0x434>
   1b4c4:	d0045ee3          	bgez	s0,1b1e0 <_svfprintf_r+0x170>
   1b4c8:	fff00413          	li	s0,-1
   1b4cc:	d15ff06f          	j	1b1e0 <_svfprintf_r+0x170>
   1b4d0:	080b6b13          	ori	s6,s6,128
   1b4d4:	d05ff06f          	j	1b1d8 <_svfprintf_r+0x168>
   1b4d8:	00060463          	beqz	a2,1b4e0 <_svfprintf_r+0x470>
   1b4dc:	7240106f          	j	1cc00 <_svfprintf_r+0x1b90>
   1b4e0:	010b6b13          	ori	s6,s6,16
   1b4e4:	010b7793          	andi	a5,s6,16
   1b4e8:	e8079ce3          	bnez	a5,1b380 <_svfprintf_r+0x310>
   1b4ec:	040b7793          	andi	a5,s6,64
   1b4f0:	080107a3          	sb	zero,143(sp)
   1b4f4:	600784e3          	beqz	a5,1c2fc <_svfprintf_r+0x128c>
   1b4f8:	02813783          	ld	a5,40(sp)
   1b4fc:	00878713          	addi	a4,a5,8
   1b500:	0007d783          	lhu	a5,0(a5)
   1b504:	e80458e3          	bgez	s0,1b394 <_svfprintf_r+0x324>
   1b508:	02e13423          	sd	a4,40(sp)
   1b50c:	22079ce3          	bnez	a5,1bf44 <_svfprintf_r+0xed4>
   1b510:	00000613          	li	a2,0
   1b514:	00000713          	li	a4,0
   1b518:	6700006f          	j	1bb88 <_svfprintf_r+0xb18>
   1b51c:	00060463          	beqz	a2,1b524 <_svfprintf_r+0x4b4>
   1b520:	7040106f          	j	1cc24 <_svfprintf_r+0x1bb4>
   1b524:	010b6b13          	ori	s6,s6,16
   1b528:	010b7793          	andi	a5,s6,16
   1b52c:	38078ae3          	beqz	a5,1c0c0 <_svfprintf_r+0x1050>
   1b530:	02813783          	ld	a5,40(sp)
   1b534:	080107a3          	sb	zero,143(sp)
   1b538:	00878713          	addi	a4,a5,8
   1b53c:	0007b783          	ld	a5,0(a5)
   1b540:	38044ee3          	bltz	s0,1c0dc <_svfprintf_r+0x106c>
   1b544:	02e13423          	sd	a4,40(sp)
   1b548:	f7fb7b13          	andi	s6,s6,-129
   1b54c:	00000613          	li	a2,0
   1b550:	42078663          	beqz	a5,1b97c <_svfprintf_r+0x90c>
   1b554:	00900713          	li	a4,9
   1b558:	000a8913          	mv	s2,s5
   1b55c:	00a00693          	li	a3,10
   1b560:	62f77a63          	bleu	a5,a4,1bb94 <_svfprintf_r+0xb24>
   1b564:	02d7f733          	remu	a4,a5,a3
   1b568:	fff90913          	addi	s2,s2,-1
   1b56c:	02d7d7b3          	divu	a5,a5,a3
   1b570:	0307071b          	addiw	a4,a4,48
   1b574:	00e90023          	sb	a4,0(s2)
   1b578:	fe0796e3          	bnez	a5,1b564 <_svfprintf_r+0x4f4>
   1b57c:	d2dff06f          	j	1b2a8 <_svfprintf_r+0x238>
   1b580:	00060463          	beqz	a2,1b588 <_svfprintf_r+0x518>
   1b584:	6980106f          	j	1cc1c <_svfprintf_r+0x1bac>
   1b588:	000227b7          	lui	a5,0x22
   1b58c:	cf878793          	addi	a5,a5,-776 # 21cf8 <zeroes.4123+0x690>
   1b590:	02f13c23          	sd	a5,56(sp)
   1b594:	010b7793          	andi	a5,s6,16
   1b598:	e6079ce3          	bnez	a5,1b410 <_svfprintf_r+0x3a0>
   1b59c:	040b7793          	andi	a5,s6,64
   1b5a0:	02813703          	ld	a4,40(sp)
   1b5a4:	620784e3          	beqz	a5,1c3cc <_svfprintf_r+0x135c>
   1b5a8:	00075783          	lhu	a5,0(a4)
   1b5ac:	00870713          	addi	a4,a4,8
   1b5b0:	02e13423          	sd	a4,40(sp)
   1b5b4:	e6dff06f          	j	1b420 <_svfprintf_r+0x3b0>
   1b5b8:	02813703          	ld	a4,40(sp)
   1b5bc:	00100693          	li	a3,1
   1b5c0:	00d12423          	sw	a3,8(sp)
   1b5c4:	00072783          	lw	a5,0(a4)
   1b5c8:	080107a3          	sb	zero,143(sp)
   1b5cc:	00000613          	li	a2,0
   1b5d0:	0cf10423          	sb	a5,200(sp)
   1b5d4:	00870793          	addi	a5,a4,8
   1b5d8:	02f13423          	sd	a5,40(sp)
   1b5dc:	02d12023          	sw	a3,32(sp)
   1b5e0:	00000413          	li	s0,0
   1b5e4:	04012623          	sw	zero,76(sp)
   1b5e8:	0c810913          	addi	s2,sp,200
   1b5ec:	002b7793          	andi	a5,s6,2
   1b5f0:	04f12023          	sw	a5,64(sp)
   1b5f4:	00078863          	beqz	a5,1b604 <_svfprintf_r+0x594>
   1b5f8:	00812783          	lw	a5,8(sp)
   1b5fc:	0027879b          	addiw	a5,a5,2
   1b600:	00f12423          	sw	a5,8(sp)
   1b604:	084b7793          	andi	a5,s6,132
   1b608:	04f12423          	sw	a5,72(sp)
   1b60c:	5a079063          	bnez	a5,1bbac <_svfprintf_r+0xb3c>
   1b610:	01812783          	lw	a5,24(sp)
   1b614:	00812703          	lw	a4,8(sp)
   1b618:	40e78cbb          	subw	s9,a5,a4
   1b61c:	59905863          	blez	s9,1bbac <_svfprintf_r+0xb3c>
   1b620:	01000793          	li	a5,16
   1b624:	0197c463          	blt	a5,s9,1b62c <_svfprintf_r+0x5bc>
   1b628:	1f80106f          	j	1c820 <_svfprintf_r+0x17b0>
   1b62c:	01000813          	li	a6,16
   1b630:	0c013783          	ld	a5,192(sp)
   1b634:	0b812703          	lw	a4,184(sp)
   1b638:	05413823          	sd	s4,80(sp)
   1b63c:	00700313          	li	t1,7
   1b640:	00080d93          	mv	s11,a6
   1b644:	00c0006f          	j	1b650 <_svfprintf_r+0x5e0>
   1b648:	ff0c8c9b          	addiw	s9,s9,-16
   1b64c:	059dde63          	ble	s9,s11,1b6a8 <_svfprintf_r+0x638>
   1b650:	01078793          	addi	a5,a5,16
   1b654:	0017071b          	addiw	a4,a4,1
   1b658:	0148b023          	sd	s4,0(a7)
   1b65c:	0108b423          	sd	a6,8(a7)
   1b660:	0cf13023          	sd	a5,192(sp)
   1b664:	0ae12c23          	sw	a4,184(sp)
   1b668:	01088893          	addi	a7,a7,16
   1b66c:	fce35ee3          	ble	a4,t1,1b648 <_svfprintf_r+0x5d8>
   1b670:	0b010613          	addi	a2,sp,176
   1b674:	000b8593          	mv	a1,s7
   1b678:	000c0513          	mv	a0,s8
   1b67c:	00613823          	sd	t1,16(sp)
   1b680:	01013023          	sd	a6,0(sp)
   1b684:	2bd030ef          	jal	1f140 <__ssprint_r>
   1b688:	c80514e3          	bnez	a0,1b310 <_svfprintf_r+0x2a0>
   1b68c:	ff0c8c9b          	addiw	s9,s9,-16
   1b690:	0c013783          	ld	a5,192(sp)
   1b694:	0b812703          	lw	a4,184(sp)
   1b698:	000a8893          	mv	a7,s5
   1b69c:	01013303          	ld	t1,16(sp)
   1b6a0:	00013803          	ld	a6,0(sp)
   1b6a4:	fb9dc6e3          	blt	s11,s9,1b650 <_svfprintf_r+0x5e0>
   1b6a8:	05013603          	ld	a2,80(sp)
   1b6ac:	00fc87b3          	add	a5,s9,a5
   1b6b0:	0017071b          	addiw	a4,a4,1
   1b6b4:	00c8b023          	sd	a2,0(a7)
   1b6b8:	0198b423          	sd	s9,8(a7)
   1b6bc:	0cf13023          	sd	a5,192(sp)
   1b6c0:	0ae12c23          	sw	a4,184(sp)
   1b6c4:	00700693          	li	a3,7
   1b6c8:	14e6cce3          	blt	a3,a4,1c020 <_svfprintf_r+0xfb0>
   1b6cc:	08f14603          	lbu	a2,143(sp)
   1b6d0:	01088893          	addi	a7,a7,16
   1b6d4:	02060a63          	beqz	a2,1b708 <_svfprintf_r+0x698>
   1b6d8:	0b812703          	lw	a4,184(sp)
   1b6dc:	08f10693          	addi	a3,sp,143
   1b6e0:	00d8b023          	sd	a3,0(a7)
   1b6e4:	00178793          	addi	a5,a5,1
   1b6e8:	00100693          	li	a3,1
   1b6ec:	0017071b          	addiw	a4,a4,1
   1b6f0:	00d8b423          	sd	a3,8(a7)
   1b6f4:	0cf13023          	sd	a5,192(sp)
   1b6f8:	0ae12c23          	sw	a4,184(sp)
   1b6fc:	00700693          	li	a3,7
   1b700:	01088893          	addi	a7,a7,16
   1b704:	7ee6c463          	blt	a3,a4,1beec <_svfprintf_r+0xe7c>
   1b708:	04012703          	lw	a4,64(sp)
   1b70c:	02070a63          	beqz	a4,1b740 <_svfprintf_r+0x6d0>
   1b710:	0b812703          	lw	a4,184(sp)
   1b714:	09010693          	addi	a3,sp,144
   1b718:	00d8b023          	sd	a3,0(a7)
   1b71c:	00278793          	addi	a5,a5,2
   1b720:	00200693          	li	a3,2
   1b724:	0017071b          	addiw	a4,a4,1
   1b728:	00d8b423          	sd	a3,8(a7)
   1b72c:	0cf13023          	sd	a5,192(sp)
   1b730:	0ae12c23          	sw	a4,184(sp)
   1b734:	00700693          	li	a3,7
   1b738:	01088893          	addi	a7,a7,16
   1b73c:	7ce6c863          	blt	a3,a4,1bf0c <_svfprintf_r+0xe9c>
   1b740:	04812683          	lw	a3,72(sp)
   1b744:	08000713          	li	a4,128
   1b748:	66e68463          	beq	a3,a4,1bdb0 <_svfprintf_r+0xd40>
   1b74c:	02012703          	lw	a4,32(sp)
   1b750:	40e4043b          	subw	s0,s0,a4
   1b754:	0c805063          	blez	s0,1b814 <_svfprintf_r+0x7a4>
   1b758:	01000713          	li	a4,16
   1b75c:	488758e3          	ble	s0,a4,1c3ec <_svfprintf_r+0x137c>
   1b760:	01000c93          	li	s9,16
   1b764:	0b812703          	lw	a4,184(sp)
   1b768:	00913823          	sd	s1,16(sp)
   1b76c:	00700813          	li	a6,7
   1b770:	000c8d93          	mv	s11,s9
   1b774:	00c0006f          	j	1b780 <_svfprintf_r+0x710>
   1b778:	ff04041b          	addiw	s0,s0,-16
   1b77c:	048dda63          	ble	s0,s11,1b7d0 <_svfprintf_r+0x760>
   1b780:	01078793          	addi	a5,a5,16
   1b784:	0017071b          	addiw	a4,a4,1
   1b788:	0098b023          	sd	s1,0(a7)
   1b78c:	0198b423          	sd	s9,8(a7)
   1b790:	0cf13023          	sd	a5,192(sp)
   1b794:	0ae12c23          	sw	a4,184(sp)
   1b798:	01088893          	addi	a7,a7,16
   1b79c:	fce85ee3          	ble	a4,a6,1b778 <_svfprintf_r+0x708>
   1b7a0:	0b010613          	addi	a2,sp,176
   1b7a4:	000b8593          	mv	a1,s7
   1b7a8:	000c0513          	mv	a0,s8
   1b7ac:	01013023          	sd	a6,0(sp)
   1b7b0:	191030ef          	jal	1f140 <__ssprint_r>
   1b7b4:	b4051ee3          	bnez	a0,1b310 <_svfprintf_r+0x2a0>
   1b7b8:	ff04041b          	addiw	s0,s0,-16
   1b7bc:	0c013783          	ld	a5,192(sp)
   1b7c0:	0b812703          	lw	a4,184(sp)
   1b7c4:	000a8893          	mv	a7,s5
   1b7c8:	00013803          	ld	a6,0(sp)
   1b7cc:	fa8dcae3          	blt	s11,s0,1b780 <_svfprintf_r+0x710>
   1b7d0:	01013683          	ld	a3,16(sp)
   1b7d4:	008787b3          	add	a5,a5,s0
   1b7d8:	0017071b          	addiw	a4,a4,1
   1b7dc:	00d8b023          	sd	a3,0(a7)
   1b7e0:	0088b423          	sd	s0,8(a7)
   1b7e4:	0cf13023          	sd	a5,192(sp)
   1b7e8:	0ae12c23          	sw	a4,184(sp)
   1b7ec:	00700693          	li	a3,7
   1b7f0:	01088893          	addi	a7,a7,16
   1b7f4:	02e6d063          	ble	a4,a3,1b814 <_svfprintf_r+0x7a4>
   1b7f8:	0b010613          	addi	a2,sp,176
   1b7fc:	000b8593          	mv	a1,s7
   1b800:	000c0513          	mv	a0,s8
   1b804:	13d030ef          	jal	1f140 <__ssprint_r>
   1b808:	b00514e3          	bnez	a0,1b310 <_svfprintf_r+0x2a0>
   1b80c:	0c013783          	ld	a5,192(sp)
   1b810:	000a8893          	mv	a7,s5
   1b814:	100b7713          	andi	a4,s6,256
   1b818:	48071463          	bnez	a4,1bca0 <_svfprintf_r+0xc30>
   1b81c:	02012703          	lw	a4,32(sp)
   1b820:	0b812683          	lw	a3,184(sp)
   1b824:	0128b023          	sd	s2,0(a7)
   1b828:	00e787b3          	add	a5,a5,a4
   1b82c:	0016869b          	addiw	a3,a3,1
   1b830:	00e8b423          	sd	a4,8(a7)
   1b834:	0cf13023          	sd	a5,192(sp)
   1b838:	0ad12c23          	sw	a3,184(sp)
   1b83c:	00700713          	li	a4,7
   1b840:	44d74063          	blt	a4,a3,1bc80 <_svfprintf_r+0xc10>
   1b844:	01088893          	addi	a7,a7,16
   1b848:	004b7b13          	andi	s6,s6,4
   1b84c:	0c0b0263          	beqz	s6,1b910 <_svfprintf_r+0x8a0>
   1b850:	01812703          	lw	a4,24(sp)
   1b854:	00812683          	lw	a3,8(sp)
   1b858:	40d7043b          	subw	s0,a4,a3
   1b85c:	0a805a63          	blez	s0,1b910 <_svfprintf_r+0x8a0>
   1b860:	01000713          	li	a4,16
   1b864:	00874463          	blt	a4,s0,1b86c <_svfprintf_r+0x7fc>
   1b868:	02c0106f          	j	1c894 <_svfprintf_r+0x1824>
   1b86c:	01000913          	li	s2,16
   1b870:	0b812703          	lw	a4,184(sp)
   1b874:	05413823          	sd	s4,80(sp)
   1b878:	00700b13          	li	s6,7
   1b87c:	00090d13          	mv	s10,s2
   1b880:	00c0006f          	j	1b88c <_svfprintf_r+0x81c>
   1b884:	ff04041b          	addiw	s0,s0,-16
   1b888:	048d5663          	ble	s0,s10,1b8d4 <_svfprintf_r+0x864>
   1b88c:	01078793          	addi	a5,a5,16
   1b890:	0017071b          	addiw	a4,a4,1
   1b894:	0148b023          	sd	s4,0(a7)
   1b898:	0128b423          	sd	s2,8(a7)
   1b89c:	0cf13023          	sd	a5,192(sp)
   1b8a0:	0ae12c23          	sw	a4,184(sp)
   1b8a4:	01088893          	addi	a7,a7,16
   1b8a8:	fceb5ee3          	ble	a4,s6,1b884 <_svfprintf_r+0x814>
   1b8ac:	0b010613          	addi	a2,sp,176
   1b8b0:	000b8593          	mv	a1,s7
   1b8b4:	000c0513          	mv	a0,s8
   1b8b8:	089030ef          	jal	1f140 <__ssprint_r>
   1b8bc:	a4051ae3          	bnez	a0,1b310 <_svfprintf_r+0x2a0>
   1b8c0:	ff04041b          	addiw	s0,s0,-16
   1b8c4:	0c013783          	ld	a5,192(sp)
   1b8c8:	0b812703          	lw	a4,184(sp)
   1b8cc:	000a8893          	mv	a7,s5
   1b8d0:	fa8d4ee3          	blt	s10,s0,1b88c <_svfprintf_r+0x81c>
   1b8d4:	05013683          	ld	a3,80(sp)
   1b8d8:	008787b3          	add	a5,a5,s0
   1b8dc:	0017071b          	addiw	a4,a4,1
   1b8e0:	00d8b023          	sd	a3,0(a7)
   1b8e4:	0088b423          	sd	s0,8(a7)
   1b8e8:	0cf13023          	sd	a5,192(sp)
   1b8ec:	0ae12c23          	sw	a4,184(sp)
   1b8f0:	00700693          	li	a3,7
   1b8f4:	00e6de63          	ble	a4,a3,1b910 <_svfprintf_r+0x8a0>
   1b8f8:	0b010613          	addi	a2,sp,176
   1b8fc:	000b8593          	mv	a1,s7
   1b900:	000c0513          	mv	a0,s8
   1b904:	03d030ef          	jal	1f140 <__ssprint_r>
   1b908:	a00514e3          	bnez	a0,1b310 <_svfprintf_r+0x2a0>
   1b90c:	0c013783          	ld	a5,192(sp)
   1b910:	01812c83          	lw	s9,24(sp)
   1b914:	00812703          	lw	a4,8(sp)
   1b918:	00ecd463          	ble	a4,s9,1b920 <_svfprintf_r+0x8b0>
   1b91c:	00070c93          	mv	s9,a4
   1b920:	01c12703          	lw	a4,28(sp)
   1b924:	0197073b          	addw	a4,a4,s9
   1b928:	00e12e23          	sw	a4,28(sp)
   1b92c:	5a079463          	bnez	a5,1bed4 <_svfprintf_r+0xe64>
   1b930:	0009c783          	lbu	a5,0(s3)
   1b934:	0a012c23          	sw	zero,184(sp)
   1b938:	000a8893          	mv	a7,s5
   1b93c:	800794e3          	bnez	a5,1b144 <_svfprintf_r+0xd4>
   1b940:	00098413          	mv	s0,s3
   1b944:	865ff06f          	j	1b1a8 <_svfprintf_r+0x138>
   1b948:	00060463          	beqz	a2,1b950 <_svfprintf_r+0x8e0>
   1b94c:	2f00106f          	j	1cc3c <_svfprintf_r+0x1bcc>
   1b950:	010b7793          	andi	a5,s6,16
   1b954:	0e078e63          	beqz	a5,1ba50 <_svfprintf_r+0x9e0>
   1b958:	02813703          	ld	a4,40(sp)
   1b95c:	00073783          	ld	a5,0(a4)
   1b960:	00870713          	addi	a4,a4,8
   1b964:	02e13423          	sd	a4,40(sp)
   1b968:	1007c263          	bltz	a5,1ba6c <_svfprintf_r+0x9fc>
   1b96c:	08f14603          	lbu	a2,143(sp)
   1b970:	76044a63          	bltz	s0,1c0e4 <_svfprintf_r+0x1074>
   1b974:	f7fb7b13          	andi	s6,s6,-129
   1b978:	bc079ee3          	bnez	a5,1b554 <_svfprintf_r+0x4e4>
   1b97c:	1a041ee3          	bnez	s0,1c338 <_svfprintf_r+0x12c8>
   1b980:	00000413          	li	s0,0
   1b984:	02012023          	sw	zero,32(sp)
   1b988:	000a8913          	mv	s2,s5
   1b98c:	925ff06f          	j	1b2b0 <_svfprintf_r+0x240>
   1b990:	040b6b13          	ori	s6,s6,64
   1b994:	845ff06f          	j	1b1d8 <_svfprintf_r+0x168>
   1b998:	001b6b13          	ori	s6,s6,1
   1b99c:	83dff06f          	j	1b1d8 <_svfprintf_r+0x168>
   1b9a0:	b80604e3          	beqz	a2,1b528 <_svfprintf_r+0x4b8>
   1b9a4:	08b107a3          	sb	a1,143(sp)
   1b9a8:	b81ff06f          	j	1b528 <_svfprintf_r+0x4b8>
   1b9ac:	820596e3          	bnez	a1,1b1d8 <_svfprintf_r+0x168>
   1b9b0:	00100613          	li	a2,1
   1b9b4:	02000593          	li	a1,32
   1b9b8:	821ff06f          	j	1b1d8 <_svfprintf_r+0x168>
   1b9bc:	00060463          	beqz	a2,1b9c4 <_svfprintf_r+0x954>
   1b9c0:	2540106f          	j	1cc14 <_svfprintf_r+0x1ba4>
   1b9c4:	02813783          	ld	a5,40(sp)
   1b9c8:	00100913          	li	s2,1
   1b9cc:	0007b787          	fld	fa5,0(a5)
   1b9d0:	00878793          	addi	a5,a5,8
   1b9d4:	01113023          	sd	a7,0(sp)
   1b9d8:	04f13c27          	fsd	fa5,88(sp)
   1b9dc:	05813c83          	ld	s9,88(sp)
   1b9e0:	02f13423          	sd	a5,40(sp)
   1b9e4:	f20c8553          	fmv.d.x	fa0,s9
   1b9e8:	ce5fd0ef          	jal	196cc <__fpclassifyd>
   1b9ec:	00013883          	ld	a7,0(sp)
   1b9f0:	172512e3          	bne	a0,s2,1c354 <_svfprintf_r+0x12e4>
   1b9f4:	f20007d3          	fmv.d.x	fa5,zero
   1b9f8:	f20c8753          	fmv.d.x	fa4,s9
   1b9fc:	a2f717d3          	flt.d	a5,fa4,fa5
   1ba00:	6a0794e3          	bnez	a5,1c8a8 <_svfprintf_r+0x1838>
   1ba04:	08f14603          	lbu	a2,143(sp)
   1ba08:	04700793          	li	a5,71
   1ba0c:	45a7dee3          	ble	s10,a5,1c668 <_svfprintf_r+0x15f8>
   1ba10:	00022937          	lui	s2,0x22
   1ba14:	ce090913          	addi	s2,s2,-800 # 21ce0 <zeroes.4123+0x678>
   1ba18:	00300793          	li	a5,3
   1ba1c:	00f12423          	sw	a5,8(sp)
   1ba20:	f7fb7b13          	andi	s6,s6,-129
   1ba24:	02f12023          	sw	a5,32(sp)
   1ba28:	00000413          	li	s0,0
   1ba2c:	04012623          	sw	zero,76(sp)
   1ba30:	899ff06f          	j	1b2c8 <_svfprintf_r+0x258>
   1ba34:	008b6b13          	ori	s6,s6,8
   1ba38:	fa0ff06f          	j	1b1d8 <_svfprintf_r+0x168>
   1ba3c:	00060463          	beqz	a2,1ba44 <_svfprintf_r+0x9d4>
   1ba40:	21c0106f          	j	1cc5c <_svfprintf_r+0x1bec>
   1ba44:	010b6b13          	ori	s6,s6,16
   1ba48:	010b7793          	andi	a5,s6,16
   1ba4c:	f00796e3          	bnez	a5,1b958 <_svfprintf_r+0x8e8>
   1ba50:	040b7793          	andi	a5,s6,64
   1ba54:	02813703          	ld	a4,40(sp)
   1ba58:	160782e3          	beqz	a5,1c3bc <_svfprintf_r+0x134c>
   1ba5c:	00071783          	lh	a5,0(a4)
   1ba60:	00870713          	addi	a4,a4,8
   1ba64:	02e13423          	sd	a4,40(sp)
   1ba68:	f007d2e3          	bgez	a5,1b96c <_svfprintf_r+0x8fc>
   1ba6c:	02d00713          	li	a4,45
   1ba70:	08e107a3          	sb	a4,143(sp)
   1ba74:	40f007b3          	neg	a5,a5
   1ba78:	5c0440e3          	bltz	s0,1c838 <_svfprintf_r+0x17c8>
   1ba7c:	f7fb7b13          	andi	s6,s6,-129
   1ba80:	02d00613          	li	a2,45
   1ba84:	ad1ff06f          	j	1b554 <_svfprintf_r+0x4e4>
   1ba88:	02813783          	ld	a5,40(sp)
   1ba8c:	080107a3          	sb	zero,143(sp)
   1ba90:	0007b903          	ld	s2,0(a5)
   1ba94:	00878c93          	addi	s9,a5,8
   1ba98:	5c0902e3          	beqz	s2,1c85c <_svfprintf_r+0x17ec>
   1ba9c:	01113023          	sd	a7,0(sp)
   1baa0:	54044ae3          	bltz	s0,1c7f4 <_svfprintf_r+0x1784>
   1baa4:	00040613          	mv	a2,s0
   1baa8:	00000593          	li	a1,0
   1baac:	00090513          	mv	a0,s2
   1bab0:	f11fb0ef          	jal	179c0 <memchr>
   1bab4:	00013883          	ld	a7,0(sp)
   1bab8:	660502e3          	beqz	a0,1c91c <_svfprintf_r+0x18ac>
   1babc:	412507bb          	subw	a5,a0,s2
   1bac0:	02f12023          	sw	a5,32(sp)
   1bac4:	00078d93          	mv	s11,a5
   1bac8:	5407c4e3          	bltz	a5,1c810 <_svfprintf_r+0x17a0>
   1bacc:	08f14603          	lbu	a2,143(sp)
   1bad0:	01b12423          	sw	s11,8(sp)
   1bad4:	03913423          	sd	s9,40(sp)
   1bad8:	00000413          	li	s0,0
   1badc:	04012623          	sw	zero,76(sp)
   1bae0:	fe8ff06f          	j	1b2c8 <_svfprintf_r+0x258>
   1bae4:	00012c23          	sw	zero,24(sp)
   1bae8:	fd0d079b          	addiw	a5,s10,-48
   1baec:	01812303          	lw	t1,24(sp)
   1baf0:	00198993          	addi	s3,s3,1
   1baf4:	fff9cd03          	lbu	s10,-1(s3)
   1baf8:	0013181b          	slliw	a6,t1,0x1
   1bafc:	00331c9b          	slliw	s9,t1,0x3
   1bb00:	01980cbb          	addw	s9,a6,s9
   1bb04:	019787bb          	addw	a5,a5,s9
   1bb08:	00f12c23          	sw	a5,24(sp)
   1bb0c:	fd0d079b          	addiw	a5,s10,-48
   1bb10:	fcf6fee3          	bleu	a5,a3,1baec <_svfprintf_r+0xa7c>
   1bb14:	eccff06f          	j	1b1e0 <_svfprintf_r+0x170>
   1bb18:	00022737          	lui	a4,0x22
   1bb1c:	d1070713          	addi	a4,a4,-752 # 21d10 <zeroes.4123+0x6a8>
   1bb20:	00000613          	li	a2,0
   1bb24:	02e13c23          	sd	a4,56(sp)
   1bb28:	07800d13          	li	s10,120
   1bb2c:	f58ff06f          	j	1b284 <_svfprintf_r+0x214>
   1bb30:	00060463          	beqz	a2,1bb38 <_svfprintf_r+0xac8>
   1bb34:	1100106f          	j	1cc44 <_svfprintf_r+0x1bd4>
   1bb38:	fc0d0063          	beqz	s10,1b2f8 <_svfprintf_r+0x288>
   1bb3c:	00100793          	li	a5,1
   1bb40:	00f12423          	sw	a5,8(sp)
   1bb44:	0da10423          	sb	s10,200(sp)
   1bb48:	080107a3          	sb	zero,143(sp)
   1bb4c:	00000613          	li	a2,0
   1bb50:	02f12023          	sw	a5,32(sp)
   1bb54:	00000413          	li	s0,0
   1bb58:	04012623          	sw	zero,76(sp)
   1bb5c:	0c810913          	addi	s2,sp,200
   1bb60:	a8dff06f          	j	1b5ec <_svfprintf_r+0x57c>
   1bb64:	02e13423          	sd	a4,40(sp)
   1bb68:	00022737          	lui	a4,0x22
   1bb6c:	d1070713          	addi	a4,a4,-752 # 21d10 <zeroes.4123+0x6a8>
   1bb70:	00068b13          	mv	s6,a3
   1bb74:	02e13c23          	sd	a4,56(sp)
   1bb78:	07800d13          	li	s10,120
   1bb7c:	3c079063          	bnez	a5,1bf3c <_svfprintf_r+0xecc>
   1bb80:	00000613          	li	a2,0
   1bb84:	00200713          	li	a4,2
   1bb88:	00100693          	li	a3,1
   1bb8c:	00000793          	li	a5,0
   1bb90:	4ad71ee3          	bne	a4,a3,1c84c <_svfprintf_r+0x17dc>
   1bb94:	0307879b          	addiw	a5,a5,48
   1bb98:	0ef107a3          	sb	a5,239(sp)
   1bb9c:	07813783          	ld	a5,120(sp)
   1bba0:	0ef10913          	addi	s2,sp,239
   1bba4:	02f12023          	sw	a5,32(sp)
   1bba8:	f08ff06f          	j	1b2b0 <_svfprintf_r+0x240>
   1bbac:	0c013783          	ld	a5,192(sp)
   1bbb0:	b25ff06f          	j	1b6d4 <_svfprintf_r+0x664>
   1bbb4:	07012683          	lw	a3,112(sp)
   1bbb8:	00100713          	li	a4,1
   1bbbc:	00178793          	addi	a5,a5,1
   1bbc0:	6ed75263          	ble	a3,a4,1c2a4 <_svfprintf_r+0x1234>
   1bbc4:	0b812703          	lw	a4,184(sp)
   1bbc8:	00100693          	li	a3,1
   1bbcc:	00d8b423          	sd	a3,8(a7)
   1bbd0:	0017071b          	addiw	a4,a4,1
   1bbd4:	0128b023          	sd	s2,0(a7)
   1bbd8:	0cf13023          	sd	a5,192(sp)
   1bbdc:	0ae12c23          	sw	a4,184(sp)
   1bbe0:	00700693          	li	a3,7
   1bbe4:	01088893          	addi	a7,a7,16
   1bbe8:	6ee6c663          	blt	a3,a4,1c2d4 <_svfprintf_r+0x1264>
   1bbec:	06813683          	ld	a3,104(sp)
   1bbf0:	06013603          	ld	a2,96(sp)
   1bbf4:	0017071b          	addiw	a4,a4,1
   1bbf8:	00f687b3          	add	a5,a3,a5
   1bbfc:	00d8b423          	sd	a3,8(a7)
   1bc00:	00c8b023          	sd	a2,0(a7)
   1bc04:	0cf13023          	sd	a5,192(sp)
   1bc08:	0ae12c23          	sw	a4,184(sp)
   1bc0c:	00700693          	li	a3,7
   1bc10:	01088893          	addi	a7,a7,16
   1bc14:	6ee6ce63          	blt	a3,a4,1c310 <_svfprintf_r+0x12a0>
   1bc18:	f20007d3          	fmv.d.x	fa5,zero
   1bc1c:	05813707          	fld	fa4,88(sp)
   1bc20:	a2f726d3          	feq.d	a3,fa4,fa5
   1bc24:	42069063          	bnez	a3,1c044 <_svfprintf_r+0xfd4>
   1bc28:	07012683          	lw	a3,112(sp)
   1bc2c:	00190913          	addi	s2,s2,1
   1bc30:	0017071b          	addiw	a4,a4,1
   1bc34:	fff6869b          	addiw	a3,a3,-1
   1bc38:	00d787b3          	add	a5,a5,a3
   1bc3c:	0128b023          	sd	s2,0(a7)
   1bc40:	00d8b423          	sd	a3,8(a7)
   1bc44:	0cf13023          	sd	a5,192(sp)
   1bc48:	0ae12c23          	sw	a4,184(sp)
   1bc4c:	00700693          	li	a3,7
   1bc50:	26e6c063          	blt	a3,a4,1beb0 <_svfprintf_r+0xe40>
   1bc54:	01088893          	addi	a7,a7,16
   1bc58:	07412683          	lw	a3,116(sp)
   1bc5c:	0a010613          	addi	a2,sp,160
   1bc60:	0017071b          	addiw	a4,a4,1
   1bc64:	00f687b3          	add	a5,a3,a5
   1bc68:	00c8b023          	sd	a2,0(a7)
   1bc6c:	00d8b423          	sd	a3,8(a7)
   1bc70:	0cf13023          	sd	a5,192(sp)
   1bc74:	0ae12c23          	sw	a4,184(sp)
   1bc78:	00700693          	li	a3,7
   1bc7c:	bce6d4e3          	ble	a4,a3,1b844 <_svfprintf_r+0x7d4>
   1bc80:	0b010613          	addi	a2,sp,176
   1bc84:	000b8593          	mv	a1,s7
   1bc88:	000c0513          	mv	a0,s8
   1bc8c:	4b4030ef          	jal	1f140 <__ssprint_r>
   1bc90:	e8051063          	bnez	a0,1b310 <_svfprintf_r+0x2a0>
   1bc94:	0c013783          	ld	a5,192(sp)
   1bc98:	000a8893          	mv	a7,s5
   1bc9c:	badff06f          	j	1b848 <_svfprintf_r+0x7d8>
   1bca0:	06500713          	li	a4,101
   1bca4:	f1a758e3          	ble	s10,a4,1bbb4 <_svfprintf_r+0xb44>
   1bca8:	f20007d3          	fmv.d.x	fa5,zero
   1bcac:	05813707          	fld	fa4,88(sp)
   1bcb0:	a2f72753          	feq.d	a4,fa4,fa5
   1bcb4:	28070c63          	beqz	a4,1bf4c <_svfprintf_r+0xedc>
   1bcb8:	0b812703          	lw	a4,184(sp)
   1bcbc:	000226b7          	lui	a3,0x22
   1bcc0:	d3068693          	addi	a3,a3,-720 # 21d30 <zeroes.4123+0x6c8>
   1bcc4:	00d8b023          	sd	a3,0(a7)
   1bcc8:	00178793          	addi	a5,a5,1
   1bccc:	00100693          	li	a3,1
   1bcd0:	0017071b          	addiw	a4,a4,1
   1bcd4:	00d8b423          	sd	a3,8(a7)
   1bcd8:	0cf13023          	sd	a5,192(sp)
   1bcdc:	0ae12c23          	sw	a4,184(sp)
   1bce0:	00700693          	li	a3,7
   1bce4:	01088893          	addi	a7,a7,16
   1bce8:	70e6c863          	blt	a3,a4,1c3f8 <_svfprintf_r+0x1388>
   1bcec:	09812703          	lw	a4,152(sp)
   1bcf0:	07012683          	lw	a3,112(sp)
   1bcf4:	00d74663          	blt	a4,a3,1bd00 <_svfprintf_r+0xc90>
   1bcf8:	001b7713          	andi	a4,s6,1
   1bcfc:	b40706e3          	beqz	a4,1b848 <_svfprintf_r+0x7d8>
   1bd00:	06013703          	ld	a4,96(sp)
   1bd04:	06813683          	ld	a3,104(sp)
   1bd08:	01088893          	addi	a7,a7,16
   1bd0c:	fee8b823          	sd	a4,-16(a7)
   1bd10:	0b812703          	lw	a4,184(sp)
   1bd14:	00d787b3          	add	a5,a5,a3
   1bd18:	fed8bc23          	sd	a3,-8(a7)
   1bd1c:	0017071b          	addiw	a4,a4,1
   1bd20:	0cf13023          	sd	a5,192(sp)
   1bd24:	0ae12c23          	sw	a4,184(sp)
   1bd28:	00700693          	li	a3,7
   1bd2c:	7ee6c663          	blt	a3,a4,1c518 <_svfprintf_r+0x14a8>
   1bd30:	07012703          	lw	a4,112(sp)
   1bd34:	fff7041b          	addiw	s0,a4,-1
   1bd38:	b08058e3          	blez	s0,1b848 <_svfprintf_r+0x7d8>
   1bd3c:	01000713          	li	a4,16
   1bd40:	3a875863          	ble	s0,a4,1c0f0 <_svfprintf_r+0x1080>
   1bd44:	01000913          	li	s2,16
   1bd48:	0b812703          	lw	a4,184(sp)
   1bd4c:	00913823          	sd	s1,16(sp)
   1bd50:	00700d13          	li	s10,7
   1bd54:	00090693          	mv	a3,s2
   1bd58:	00c0006f          	j	1bd64 <_svfprintf_r+0xcf4>
   1bd5c:	ff04041b          	addiw	s0,s0,-16
   1bd60:	3886dc63          	ble	s0,a3,1c0f8 <_svfprintf_r+0x1088>
   1bd64:	01078793          	addi	a5,a5,16
   1bd68:	0017071b          	addiw	a4,a4,1
   1bd6c:	0098b023          	sd	s1,0(a7)
   1bd70:	0128b423          	sd	s2,8(a7)
   1bd74:	0cf13023          	sd	a5,192(sp)
   1bd78:	0ae12c23          	sw	a4,184(sp)
   1bd7c:	01088893          	addi	a7,a7,16
   1bd80:	fced5ee3          	ble	a4,s10,1bd5c <_svfprintf_r+0xcec>
   1bd84:	0b010613          	addi	a2,sp,176
   1bd88:	000b8593          	mv	a1,s7
   1bd8c:	000c0513          	mv	a0,s8
   1bd90:	00d13023          	sd	a3,0(sp)
   1bd94:	3ac030ef          	jal	1f140 <__ssprint_r>
   1bd98:	d6051c63          	bnez	a0,1b310 <_svfprintf_r+0x2a0>
   1bd9c:	0c013783          	ld	a5,192(sp)
   1bda0:	0b812703          	lw	a4,184(sp)
   1bda4:	000a8893          	mv	a7,s5
   1bda8:	00013683          	ld	a3,0(sp)
   1bdac:	fb1ff06f          	j	1bd5c <_svfprintf_r+0xcec>
   1bdb0:	01812703          	lw	a4,24(sp)
   1bdb4:	00812683          	lw	a3,8(sp)
   1bdb8:	40d70cbb          	subw	s9,a4,a3
   1bdbc:	999058e3          	blez	s9,1b74c <_svfprintf_r+0x6dc>
   1bdc0:	01000713          	li	a4,16
   1bdc4:	359756e3          	ble	s9,a4,1c910 <_svfprintf_r+0x18a0>
   1bdc8:	01000813          	li	a6,16
   1bdcc:	0b812703          	lw	a4,184(sp)
   1bdd0:	00913823          	sd	s1,16(sp)
   1bdd4:	00700313          	li	t1,7
   1bdd8:	00080d93          	mv	s11,a6
   1bddc:	00c0006f          	j	1bde8 <_svfprintf_r+0xd78>
   1bde0:	ff0c8c9b          	addiw	s9,s9,-16
   1bde4:	059dde63          	ble	s9,s11,1be40 <_svfprintf_r+0xdd0>
   1bde8:	01078793          	addi	a5,a5,16
   1bdec:	0017071b          	addiw	a4,a4,1
   1bdf0:	0098b023          	sd	s1,0(a7)
   1bdf4:	0108b423          	sd	a6,8(a7)
   1bdf8:	0cf13023          	sd	a5,192(sp)
   1bdfc:	0ae12c23          	sw	a4,184(sp)
   1be00:	01088893          	addi	a7,a7,16
   1be04:	fce35ee3          	ble	a4,t1,1bde0 <_svfprintf_r+0xd70>
   1be08:	0b010613          	addi	a2,sp,176
   1be0c:	000b8593          	mv	a1,s7
   1be10:	000c0513          	mv	a0,s8
   1be14:	04613023          	sd	t1,64(sp)
   1be18:	01013023          	sd	a6,0(sp)
   1be1c:	324030ef          	jal	1f140 <__ssprint_r>
   1be20:	ce051863          	bnez	a0,1b310 <_svfprintf_r+0x2a0>
   1be24:	ff0c8c9b          	addiw	s9,s9,-16
   1be28:	0c013783          	ld	a5,192(sp)
   1be2c:	0b812703          	lw	a4,184(sp)
   1be30:	000a8893          	mv	a7,s5
   1be34:	04013303          	ld	t1,64(sp)
   1be38:	00013803          	ld	a6,0(sp)
   1be3c:	fb9dc6e3          	blt	s11,s9,1bde8 <_svfprintf_r+0xd78>
   1be40:	01013603          	ld	a2,16(sp)
   1be44:	019787b3          	add	a5,a5,s9
   1be48:	0017071b          	addiw	a4,a4,1
   1be4c:	00c8b023          	sd	a2,0(a7)
   1be50:	0198b423          	sd	s9,8(a7)
   1be54:	0cf13023          	sd	a5,192(sp)
   1be58:	0ae12c23          	sw	a4,184(sp)
   1be5c:	00700693          	li	a3,7
   1be60:	01088893          	addi	a7,a7,16
   1be64:	8ee6d4e3          	ble	a4,a3,1b74c <_svfprintf_r+0x6dc>
   1be68:	0b010613          	addi	a2,sp,176
   1be6c:	000b8593          	mv	a1,s7
   1be70:	000c0513          	mv	a0,s8
   1be74:	2cc030ef          	jal	1f140 <__ssprint_r>
   1be78:	c8051c63          	bnez	a0,1b310 <_svfprintf_r+0x2a0>
   1be7c:	0c013783          	ld	a5,192(sp)
   1be80:	000a8893          	mv	a7,s5
   1be84:	8c9ff06f          	j	1b74c <_svfprintf_r+0x6dc>
   1be88:	00913823          	sd	s1,16(sp)
   1be8c:	01013683          	ld	a3,16(sp)
   1be90:	008787b3          	add	a5,a5,s0
   1be94:	0017071b          	addiw	a4,a4,1
   1be98:	00d8b023          	sd	a3,0(a7)
   1be9c:	0088b423          	sd	s0,8(a7)
   1bea0:	0cf13023          	sd	a5,192(sp)
   1bea4:	0ae12c23          	sw	a4,184(sp)
   1bea8:	00700693          	li	a3,7
   1beac:	dae6d4e3          	ble	a4,a3,1bc54 <_svfprintf_r+0xbe4>
   1beb0:	0b010613          	addi	a2,sp,176
   1beb4:	000b8593          	mv	a1,s7
   1beb8:	000c0513          	mv	a0,s8
   1bebc:	284030ef          	jal	1f140 <__ssprint_r>
   1bec0:	c4051863          	bnez	a0,1b310 <_svfprintf_r+0x2a0>
   1bec4:	0c013783          	ld	a5,192(sp)
   1bec8:	0b812703          	lw	a4,184(sp)
   1becc:	000a8893          	mv	a7,s5
   1bed0:	d89ff06f          	j	1bc58 <_svfprintf_r+0xbe8>
   1bed4:	0b010613          	addi	a2,sp,176
   1bed8:	000b8593          	mv	a1,s7
   1bedc:	000c0513          	mv	a0,s8
   1bee0:	260030ef          	jal	1f140 <__ssprint_r>
   1bee4:	a40506e3          	beqz	a0,1b930 <_svfprintf_r+0x8c0>
   1bee8:	c28ff06f          	j	1b310 <_svfprintf_r+0x2a0>
   1beec:	0b010613          	addi	a2,sp,176
   1bef0:	000b8593          	mv	a1,s7
   1bef4:	000c0513          	mv	a0,s8
   1bef8:	248030ef          	jal	1f140 <__ssprint_r>
   1befc:	c0051a63          	bnez	a0,1b310 <_svfprintf_r+0x2a0>
   1bf00:	0c013783          	ld	a5,192(sp)
   1bf04:	000a8893          	mv	a7,s5
   1bf08:	801ff06f          	j	1b708 <_svfprintf_r+0x698>
   1bf0c:	0b010613          	addi	a2,sp,176
   1bf10:	000b8593          	mv	a1,s7
   1bf14:	000c0513          	mv	a0,s8
   1bf18:	228030ef          	jal	1f140 <__ssprint_r>
   1bf1c:	be051a63          	bnez	a0,1b310 <_svfprintf_r+0x2a0>
   1bf20:	0c013783          	ld	a5,192(sp)
   1bf24:	000a8893          	mv	a7,s5
   1bf28:	819ff06f          	j	1b740 <_svfprintf_r+0x6d0>
   1bf2c:	080107a3          	sb	zero,143(sp)
   1bf30:	c40446e3          	bltz	s0,1bb7c <_svfprintf_r+0xb0c>
   1bf34:	f7fb7b13          	andi	s6,s6,-129
   1bf38:	b4078063          	beqz	a5,1b278 <_svfprintf_r+0x208>
   1bf3c:	00000613          	li	a2,0
   1bf40:	b44ff06f          	j	1b284 <_svfprintf_r+0x214>
   1bf44:	00000613          	li	a2,0
   1bf48:	c68ff06f          	j	1b3b0 <_svfprintf_r+0x340>
   1bf4c:	09812403          	lw	s0,152(sp)
   1bf50:	4c805663          	blez	s0,1c41c <_svfprintf_r+0x13ac>
   1bf54:	04c12703          	lw	a4,76(sp)
   1bf58:	07012683          	lw	a3,112(sp)
   1bf5c:	00070413          	mv	s0,a4
   1bf60:	00e6d463          	ble	a4,a3,1bf68 <_svfprintf_r+0xef8>
   1bf64:	00068413          	mv	s0,a3
   1bf68:	02805663          	blez	s0,1bf94 <_svfprintf_r+0xf24>
   1bf6c:	0b812703          	lw	a4,184(sp)
   1bf70:	008787b3          	add	a5,a5,s0
   1bf74:	0128b023          	sd	s2,0(a7)
   1bf78:	0017071b          	addiw	a4,a4,1
   1bf7c:	0088b423          	sd	s0,8(a7)
   1bf80:	0cf13023          	sd	a5,192(sp)
   1bf84:	0ae12c23          	sw	a4,184(sp)
   1bf88:	00700693          	li	a3,7
   1bf8c:	01088893          	addi	a7,a7,16
   1bf90:	6ee6c263          	blt	a3,a4,1c674 <_svfprintf_r+0x1604>
   1bf94:	08044ee3          	bltz	s0,1c830 <_svfprintf_r+0x17c0>
   1bf98:	04c12703          	lw	a4,76(sp)
   1bf9c:	4087043b          	subw	s0,a4,s0
   1bfa0:	1c805663          	blez	s0,1c16c <_svfprintf_r+0x10fc>
   1bfa4:	01000713          	li	a4,16
   1bfa8:	16875c63          	ble	s0,a4,1c120 <_svfprintf_r+0x10b0>
   1bfac:	01000d13          	li	s10,16
   1bfb0:	0b812703          	lw	a4,184(sp)
   1bfb4:	00913823          	sd	s1,16(sp)
   1bfb8:	00700693          	li	a3,7
   1bfbc:	000d0813          	mv	a6,s10
   1bfc0:	00c0006f          	j	1bfcc <_svfprintf_r+0xf5c>
   1bfc4:	ff04041b          	addiw	s0,s0,-16
   1bfc8:	16885063          	ble	s0,a6,1c128 <_svfprintf_r+0x10b8>
   1bfcc:	01078793          	addi	a5,a5,16
   1bfd0:	0017071b          	addiw	a4,a4,1
   1bfd4:	0098b023          	sd	s1,0(a7)
   1bfd8:	01a8b423          	sd	s10,8(a7)
   1bfdc:	0cf13023          	sd	a5,192(sp)
   1bfe0:	0ae12c23          	sw	a4,184(sp)
   1bfe4:	01088893          	addi	a7,a7,16
   1bfe8:	fce6dee3          	ble	a4,a3,1bfc4 <_svfprintf_r+0xf54>
   1bfec:	0b010613          	addi	a2,sp,176
   1bff0:	000b8593          	mv	a1,s7
   1bff4:	000c0513          	mv	a0,s8
   1bff8:	03013023          	sd	a6,32(sp)
   1bffc:	00d13023          	sd	a3,0(sp)
   1c000:	140030ef          	jal	1f140 <__ssprint_r>
   1c004:	b0051663          	bnez	a0,1b310 <_svfprintf_r+0x2a0>
   1c008:	0c013783          	ld	a5,192(sp)
   1c00c:	0b812703          	lw	a4,184(sp)
   1c010:	000a8893          	mv	a7,s5
   1c014:	02013803          	ld	a6,32(sp)
   1c018:	00013683          	ld	a3,0(sp)
   1c01c:	fa9ff06f          	j	1bfc4 <_svfprintf_r+0xf54>
   1c020:	0b010613          	addi	a2,sp,176
   1c024:	000b8593          	mv	a1,s7
   1c028:	000c0513          	mv	a0,s8
   1c02c:	114030ef          	jal	1f140 <__ssprint_r>
   1c030:	ae051063          	bnez	a0,1b310 <_svfprintf_r+0x2a0>
   1c034:	08f14603          	lbu	a2,143(sp)
   1c038:	0c013783          	ld	a5,192(sp)
   1c03c:	000a8893          	mv	a7,s5
   1c040:	e94ff06f          	j	1b6d4 <_svfprintf_r+0x664>
   1c044:	07012683          	lw	a3,112(sp)
   1c048:	fff6841b          	addiw	s0,a3,-1
   1c04c:	c08056e3          	blez	s0,1bc58 <_svfprintf_r+0xbe8>
   1c050:	01000693          	li	a3,16
   1c054:	e286dae3          	ble	s0,a3,1be88 <_svfprintf_r+0xe18>
   1c058:	01000913          	li	s2,16
   1c05c:	00913823          	sd	s1,16(sp)
   1c060:	00700d13          	li	s10,7
   1c064:	00090693          	mv	a3,s2
   1c068:	00c0006f          	j	1c074 <_svfprintf_r+0x1004>
   1c06c:	ff04041b          	addiw	s0,s0,-16
   1c070:	e086dee3          	ble	s0,a3,1be8c <_svfprintf_r+0xe1c>
   1c074:	01078793          	addi	a5,a5,16
   1c078:	0017071b          	addiw	a4,a4,1
   1c07c:	0098b023          	sd	s1,0(a7)
   1c080:	0128b423          	sd	s2,8(a7)
   1c084:	0cf13023          	sd	a5,192(sp)
   1c088:	0ae12c23          	sw	a4,184(sp)
   1c08c:	01088893          	addi	a7,a7,16
   1c090:	fced5ee3          	ble	a4,s10,1c06c <_svfprintf_r+0xffc>
   1c094:	0b010613          	addi	a2,sp,176
   1c098:	000b8593          	mv	a1,s7
   1c09c:	000c0513          	mv	a0,s8
   1c0a0:	00d13023          	sd	a3,0(sp)
   1c0a4:	09c030ef          	jal	1f140 <__ssprint_r>
   1c0a8:	a6051463          	bnez	a0,1b310 <_svfprintf_r+0x2a0>
   1c0ac:	0c013783          	ld	a5,192(sp)
   1c0b0:	0b812703          	lw	a4,184(sp)
   1c0b4:	000a8893          	mv	a7,s5
   1c0b8:	00013683          	ld	a3,0(sp)
   1c0bc:	fb1ff06f          	j	1c06c <_svfprintf_r+0xffc>
   1c0c0:	040b7793          	andi	a5,s6,64
   1c0c4:	080107a3          	sb	zero,143(sp)
   1c0c8:	1e078c63          	beqz	a5,1c2c0 <_svfprintf_r+0x1250>
   1c0cc:	02813783          	ld	a5,40(sp)
   1c0d0:	00878713          	addi	a4,a5,8
   1c0d4:	0007d783          	lhu	a5,0(a5)
   1c0d8:	c6045663          	bgez	s0,1b544 <_svfprintf_r+0x4d4>
   1c0dc:	02e13423          	sd	a4,40(sp)
   1c0e0:	00000613          	li	a2,0
   1c0e4:	00100713          	li	a4,1
   1c0e8:	aa0780e3          	beqz	a5,1bb88 <_svfprintf_r+0xb18>
   1c0ec:	c68ff06f          	j	1b554 <_svfprintf_r+0x4e4>
   1c0f0:	0b812703          	lw	a4,184(sp)
   1c0f4:	00913823          	sd	s1,16(sp)
   1c0f8:	01013683          	ld	a3,16(sp)
   1c0fc:	008787b3          	add	a5,a5,s0
   1c100:	0088b423          	sd	s0,8(a7)
   1c104:	00d8b023          	sd	a3,0(a7)
   1c108:	0017071b          	addiw	a4,a4,1
   1c10c:	0cf13023          	sd	a5,192(sp)
   1c110:	0ae12c23          	sw	a4,184(sp)
   1c114:	00700693          	li	a3,7
   1c118:	f2e6d663          	ble	a4,a3,1b844 <_svfprintf_r+0x7d4>
   1c11c:	b65ff06f          	j	1bc80 <_svfprintf_r+0xc10>
   1c120:	0b812703          	lw	a4,184(sp)
   1c124:	00913823          	sd	s1,16(sp)
   1c128:	01013683          	ld	a3,16(sp)
   1c12c:	008787b3          	add	a5,a5,s0
   1c130:	0017071b          	addiw	a4,a4,1
   1c134:	00d8b023          	sd	a3,0(a7)
   1c138:	0088b423          	sd	s0,8(a7)
   1c13c:	0cf13023          	sd	a5,192(sp)
   1c140:	0ae12c23          	sw	a4,184(sp)
   1c144:	00700693          	li	a3,7
   1c148:	01088893          	addi	a7,a7,16
   1c14c:	02e6d063          	ble	a4,a3,1c16c <_svfprintf_r+0x10fc>
   1c150:	0b010613          	addi	a2,sp,176
   1c154:	000b8593          	mv	a1,s7
   1c158:	000c0513          	mv	a0,s8
   1c15c:	7e5020ef          	jal	1f140 <__ssprint_r>
   1c160:	9a051863          	bnez	a0,1b310 <_svfprintf_r+0x2a0>
   1c164:	0c013783          	ld	a5,192(sp)
   1c168:	000a8893          	mv	a7,s5
   1c16c:	04c12d03          	lw	s10,76(sp)
   1c170:	09812703          	lw	a4,152(sp)
   1c174:	07012683          	lw	a3,112(sp)
   1c178:	01a90d33          	add	s10,s2,s10
   1c17c:	0cd74a63          	blt	a4,a3,1c250 <_svfprintf_r+0x11e0>
   1c180:	001b7693          	andi	a3,s6,1
   1c184:	0c069663          	bnez	a3,1c250 <_svfprintf_r+0x11e0>
   1c188:	07012683          	lw	a3,112(sp)
   1c18c:	00d90433          	add	s0,s2,a3
   1c190:	41a40433          	sub	s0,s0,s10
   1c194:	40e6873b          	subw	a4,a3,a4
   1c198:	0004041b          	sext.w	s0,s0
   1c19c:	00875463          	ble	s0,a4,1c1a4 <_svfprintf_r+0x1134>
   1c1a0:	00070413          	mv	s0,a4
   1c1a4:	02805663          	blez	s0,1c1d0 <_svfprintf_r+0x1160>
   1c1a8:	0b812683          	lw	a3,184(sp)
   1c1ac:	008787b3          	add	a5,a5,s0
   1c1b0:	01a8b023          	sd	s10,0(a7)
   1c1b4:	0016869b          	addiw	a3,a3,1
   1c1b8:	0088b423          	sd	s0,8(a7)
   1c1bc:	0cf13023          	sd	a5,192(sp)
   1c1c0:	0ad12c23          	sw	a3,184(sp)
   1c1c4:	00700613          	li	a2,7
   1c1c8:	01088893          	addi	a7,a7,16
   1c1cc:	4ed64863          	blt	a2,a3,1c6bc <_svfprintf_r+0x164c>
   1c1d0:	6c044863          	bltz	s0,1c8a0 <_svfprintf_r+0x1830>
   1c1d4:	4087043b          	subw	s0,a4,s0
   1c1d8:	e6805863          	blez	s0,1b848 <_svfprintf_r+0x7d8>
   1c1dc:	01000713          	li	a4,16
   1c1e0:	f08758e3          	ble	s0,a4,1c0f0 <_svfprintf_r+0x1080>
   1c1e4:	01000913          	li	s2,16
   1c1e8:	0b812703          	lw	a4,184(sp)
   1c1ec:	00913823          	sd	s1,16(sp)
   1c1f0:	00700d13          	li	s10,7
   1c1f4:	00090693          	mv	a3,s2
   1c1f8:	00c0006f          	j	1c204 <_svfprintf_r+0x1194>
   1c1fc:	ff04041b          	addiw	s0,s0,-16
   1c200:	ee86dce3          	ble	s0,a3,1c0f8 <_svfprintf_r+0x1088>
   1c204:	01078793          	addi	a5,a5,16
   1c208:	0017071b          	addiw	a4,a4,1
   1c20c:	0098b023          	sd	s1,0(a7)
   1c210:	0128b423          	sd	s2,8(a7)
   1c214:	0cf13023          	sd	a5,192(sp)
   1c218:	0ae12c23          	sw	a4,184(sp)
   1c21c:	01088893          	addi	a7,a7,16
   1c220:	fced5ee3          	ble	a4,s10,1c1fc <_svfprintf_r+0x118c>
   1c224:	0b010613          	addi	a2,sp,176
   1c228:	000b8593          	mv	a1,s7
   1c22c:	000c0513          	mv	a0,s8
   1c230:	00d13023          	sd	a3,0(sp)
   1c234:	70d020ef          	jal	1f140 <__ssprint_r>
   1c238:	8c051c63          	bnez	a0,1b310 <_svfprintf_r+0x2a0>
   1c23c:	0c013783          	ld	a5,192(sp)
   1c240:	0b812703          	lw	a4,184(sp)
   1c244:	000a8893          	mv	a7,s5
   1c248:	00013683          	ld	a3,0(sp)
   1c24c:	fb1ff06f          	j	1c1fc <_svfprintf_r+0x118c>
   1c250:	06013683          	ld	a3,96(sp)
   1c254:	06813603          	ld	a2,104(sp)
   1c258:	01088893          	addi	a7,a7,16
   1c25c:	fed8b823          	sd	a3,-16(a7)
   1c260:	0b812683          	lw	a3,184(sp)
   1c264:	00c787b3          	add	a5,a5,a2
   1c268:	fec8bc23          	sd	a2,-8(a7)
   1c26c:	0016869b          	addiw	a3,a3,1
   1c270:	0cf13023          	sd	a5,192(sp)
   1c274:	0ad12c23          	sw	a3,184(sp)
   1c278:	00700613          	li	a2,7
   1c27c:	f0d656e3          	ble	a3,a2,1c188 <_svfprintf_r+0x1118>
   1c280:	0b010613          	addi	a2,sp,176
   1c284:	000b8593          	mv	a1,s7
   1c288:	000c0513          	mv	a0,s8
   1c28c:	6b5020ef          	jal	1f140 <__ssprint_r>
   1c290:	88051063          	bnez	a0,1b310 <_svfprintf_r+0x2a0>
   1c294:	09812703          	lw	a4,152(sp)
   1c298:	0c013783          	ld	a5,192(sp)
   1c29c:	000a8893          	mv	a7,s5
   1c2a0:	ee9ff06f          	j	1c188 <_svfprintf_r+0x1118>
   1c2a4:	00eb7733          	and	a4,s6,a4
   1c2a8:	90071ee3          	bnez	a4,1bbc4 <_svfprintf_r+0xb54>
   1c2ac:	0b812703          	lw	a4,184(sp)
   1c2b0:	0128b023          	sd	s2,0(a7)
   1c2b4:	00100693          	li	a3,1
   1c2b8:	0017071b          	addiw	a4,a4,1
   1c2bc:	985ff06f          	j	1bc40 <_svfprintf_r+0xbd0>
   1c2c0:	02813783          	ld	a5,40(sp)
   1c2c4:	00878713          	addi	a4,a5,8
   1c2c8:	0007e783          	lwu	a5,0(a5)
   1c2cc:	a6045c63          	bgez	s0,1b544 <_svfprintf_r+0x4d4>
   1c2d0:	e0dff06f          	j	1c0dc <_svfprintf_r+0x106c>
   1c2d4:	0b010613          	addi	a2,sp,176
   1c2d8:	000b8593          	mv	a1,s7
   1c2dc:	000c0513          	mv	a0,s8
   1c2e0:	661020ef          	jal	1f140 <__ssprint_r>
   1c2e4:	00050463          	beqz	a0,1c2ec <_svfprintf_r+0x127c>
   1c2e8:	828ff06f          	j	1b310 <_svfprintf_r+0x2a0>
   1c2ec:	0c013783          	ld	a5,192(sp)
   1c2f0:	0b812703          	lw	a4,184(sp)
   1c2f4:	000a8893          	mv	a7,s5
   1c2f8:	8f5ff06f          	j	1bbec <_svfprintf_r+0xb7c>
   1c2fc:	02813783          	ld	a5,40(sp)
   1c300:	00878713          	addi	a4,a5,8
   1c304:	0007e783          	lwu	a5,0(a5)
   1c308:	88045663          	bgez	s0,1b394 <_svfprintf_r+0x324>
   1c30c:	9fcff06f          	j	1b508 <_svfprintf_r+0x498>
   1c310:	0b010613          	addi	a2,sp,176
   1c314:	000b8593          	mv	a1,s7
   1c318:	000c0513          	mv	a0,s8
   1c31c:	625020ef          	jal	1f140 <__ssprint_r>
   1c320:	00050463          	beqz	a0,1c328 <_svfprintf_r+0x12b8>
   1c324:	fedfe06f          	j	1b310 <_svfprintf_r+0x2a0>
   1c328:	0c013783          	ld	a5,192(sp)
   1c32c:	0b812703          	lw	a4,184(sp)
   1c330:	000a8893          	mv	a7,s5
   1c334:	8e5ff06f          	j	1bc18 <_svfprintf_r+0xba8>
   1c338:	00000793          	li	a5,0
   1c33c:	0307879b          	addiw	a5,a5,48
   1c340:	0ef107a3          	sb	a5,239(sp)
   1c344:	07813783          	ld	a5,120(sp)
   1c348:	0ef10913          	addi	s2,sp,239
   1c34c:	02f12023          	sw	a5,32(sp)
   1c350:	f61fe06f          	j	1b2b0 <_svfprintf_r+0x240>
   1c354:	05813507          	fld	fa0,88(sp)
   1c358:	01113023          	sd	a7,0(sp)
   1c35c:	b70fd0ef          	jal	196cc <__fpclassifyd>
   1c360:	00013883          	ld	a7,0(sp)
   1c364:	1c051c63          	bnez	a0,1c53c <_svfprintf_r+0x14cc>
   1c368:	04700793          	li	a5,71
   1c36c:	39a7d063          	ble	s10,a5,1c6ec <_svfprintf_r+0x167c>
   1c370:	00022937          	lui	s2,0x22
   1c374:	cf090913          	addi	s2,s2,-784 # 21cf0 <zeroes.4123+0x688>
   1c378:	00300793          	li	a5,3
   1c37c:	00f12423          	sw	a5,8(sp)
   1c380:	f7fb7b13          	andi	s6,s6,-129
   1c384:	08f14603          	lbu	a2,143(sp)
   1c388:	02f12023          	sw	a5,32(sp)
   1c38c:	00000413          	li	s0,0
   1c390:	04012623          	sw	zero,76(sp)
   1c394:	f35fe06f          	j	1b2c8 <_svfprintf_r+0x258>
   1c398:	02813703          	ld	a4,40(sp)
   1c39c:	040b7b13          	andi	s6,s6,64
   1c3a0:	00073783          	ld	a5,0(a4)
   1c3a4:	00870713          	addi	a4,a4,8
   1c3a8:	02e13423          	sd	a4,40(sp)
   1c3ac:	420b0e63          	beqz	s6,1c7e8 <_svfprintf_r+0x1778>
   1c3b0:	01c15703          	lhu	a4,28(sp)
   1c3b4:	00e79023          	sh	a4,0(a5)
   1c3b8:	d85fe06f          	j	1b13c <_svfprintf_r+0xcc>
   1c3bc:	00072783          	lw	a5,0(a4)
   1c3c0:	00870713          	addi	a4,a4,8
   1c3c4:	02e13423          	sd	a4,40(sp)
   1c3c8:	da0ff06f          	j	1b968 <_svfprintf_r+0x8f8>
   1c3cc:	00076783          	lwu	a5,0(a4)
   1c3d0:	00870713          	addi	a4,a4,8
   1c3d4:	02e13423          	sd	a4,40(sp)
   1c3d8:	848ff06f          	j	1b420 <_svfprintf_r+0x3b0>
   1c3dc:	080107a3          	sb	zero,143(sp)
   1c3e0:	fa044063          	bltz	s0,1bb80 <_svfprintf_r+0xb10>
   1c3e4:	f7fb7b13          	andi	s6,s6,-129
   1c3e8:	e91fe06f          	j	1b278 <_svfprintf_r+0x208>
   1c3ec:	0b812703          	lw	a4,184(sp)
   1c3f0:	00913823          	sd	s1,16(sp)
   1c3f4:	bdcff06f          	j	1b7d0 <_svfprintf_r+0x760>
   1c3f8:	0b010613          	addi	a2,sp,176
   1c3fc:	000b8593          	mv	a1,s7
   1c400:	000c0513          	mv	a0,s8
   1c404:	53d020ef          	jal	1f140 <__ssprint_r>
   1c408:	00050463          	beqz	a0,1c410 <_svfprintf_r+0x13a0>
   1c40c:	f05fe06f          	j	1b310 <_svfprintf_r+0x2a0>
   1c410:	0c013783          	ld	a5,192(sp)
   1c414:	000a8893          	mv	a7,s5
   1c418:	8d5ff06f          	j	1bcec <_svfprintf_r+0xc7c>
   1c41c:	0b812703          	lw	a4,184(sp)
   1c420:	000226b7          	lui	a3,0x22
   1c424:	d3068693          	addi	a3,a3,-720 # 21d30 <zeroes.4123+0x6c8>
   1c428:	00d8b023          	sd	a3,0(a7)
   1c42c:	00178793          	addi	a5,a5,1
   1c430:	00100693          	li	a3,1
   1c434:	0017071b          	addiw	a4,a4,1
   1c438:	00d8b423          	sd	a3,8(a7)
   1c43c:	0cf13023          	sd	a5,192(sp)
   1c440:	0ae12c23          	sw	a4,184(sp)
   1c444:	00700693          	li	a3,7
   1c448:	01088893          	addi	a7,a7,16
   1c44c:	2ae6c663          	blt	a3,a4,1c6f8 <_svfprintf_r+0x1688>
   1c450:	00041a63          	bnez	s0,1c464 <_svfprintf_r+0x13f4>
   1c454:	07012703          	lw	a4,112(sp)
   1c458:	00071663          	bnez	a4,1c464 <_svfprintf_r+0x13f4>
   1c45c:	001b7713          	andi	a4,s6,1
   1c460:	be070463          	beqz	a4,1b848 <_svfprintf_r+0x7d8>
   1c464:	06013703          	ld	a4,96(sp)
   1c468:	06813683          	ld	a3,104(sp)
   1c46c:	01088893          	addi	a7,a7,16
   1c470:	fee8b823          	sd	a4,-16(a7)
   1c474:	0b812703          	lw	a4,184(sp)
   1c478:	00f687b3          	add	a5,a3,a5
   1c47c:	fed8bc23          	sd	a3,-8(a7)
   1c480:	0017071b          	addiw	a4,a4,1
   1c484:	0cf13023          	sd	a5,192(sp)
   1c488:	0ae12c23          	sw	a4,184(sp)
   1c48c:	00700693          	li	a3,7
   1c490:	30e6cc63          	blt	a3,a4,1c7a8 <_svfprintf_r+0x1738>
   1c494:	4080043b          	negw	s0,s0
   1c498:	2e805e63          	blez	s0,1c794 <_svfprintf_r+0x1724>
   1c49c:	01000693          	li	a3,16
   1c4a0:	2a86d263          	ble	s0,a3,1c744 <_svfprintf_r+0x16d4>
   1c4a4:	01000d13          	li	s10,16
   1c4a8:	00913823          	sd	s1,16(sp)
   1c4ac:	00700813          	li	a6,7
   1c4b0:	000d0693          	mv	a3,s10
   1c4b4:	00c0006f          	j	1c4c0 <_svfprintf_r+0x1450>
   1c4b8:	ff04041b          	addiw	s0,s0,-16
   1c4bc:	2886d663          	ble	s0,a3,1c748 <_svfprintf_r+0x16d8>
   1c4c0:	01078793          	addi	a5,a5,16
   1c4c4:	0017071b          	addiw	a4,a4,1
   1c4c8:	0098b023          	sd	s1,0(a7)
   1c4cc:	01a8b423          	sd	s10,8(a7)
   1c4d0:	0cf13023          	sd	a5,192(sp)
   1c4d4:	0ae12c23          	sw	a4,184(sp)
   1c4d8:	01088893          	addi	a7,a7,16
   1c4dc:	fce85ee3          	ble	a4,a6,1c4b8 <_svfprintf_r+0x1448>
   1c4e0:	0b010613          	addi	a2,sp,176
   1c4e4:	000b8593          	mv	a1,s7
   1c4e8:	000c0513          	mv	a0,s8
   1c4ec:	02d13023          	sd	a3,32(sp)
   1c4f0:	01013023          	sd	a6,0(sp)
   1c4f4:	44d020ef          	jal	1f140 <__ssprint_r>
   1c4f8:	00050463          	beqz	a0,1c500 <_svfprintf_r+0x1490>
   1c4fc:	e15fe06f          	j	1b310 <_svfprintf_r+0x2a0>
   1c500:	0c013783          	ld	a5,192(sp)
   1c504:	0b812703          	lw	a4,184(sp)
   1c508:	000a8893          	mv	a7,s5
   1c50c:	02013683          	ld	a3,32(sp)
   1c510:	00013803          	ld	a6,0(sp)
   1c514:	fa5ff06f          	j	1c4b8 <_svfprintf_r+0x1448>
   1c518:	0b010613          	addi	a2,sp,176
   1c51c:	000b8593          	mv	a1,s7
   1c520:	000c0513          	mv	a0,s8
   1c524:	41d020ef          	jal	1f140 <__ssprint_r>
   1c528:	00050463          	beqz	a0,1c530 <_svfprintf_r+0x14c0>
   1c52c:	de5fe06f          	j	1b310 <_svfprintf_r+0x2a0>
   1c530:	0c013783          	ld	a5,192(sp)
   1c534:	000a8893          	mv	a7,s5
   1c538:	ff8ff06f          	j	1bd30 <_svfprintf_r+0xcc0>
   1c53c:	fff00793          	li	a5,-1
   1c540:	fdfd7d93          	andi	s11,s10,-33
   1c544:	28f40863          	beq	s0,a5,1c7d4 <_svfprintf_r+0x1764>
   1c548:	04700793          	li	a5,71
   1c54c:	44fd8e63          	beq	s11,a5,1c9a8 <_svfprintf_r+0x1938>
   1c550:	05813703          	ld	a4,88(sp)
   1c554:	100b6693          	ori	a3,s6,256
   1c558:	00d12023          	sw	a3,0(sp)
   1c55c:	42075793          	srai	a5,a4,0x20
   1c560:	f2070453          	fmv.d.x	fs0,a4
   1c564:	00000c93          	li	s9,0
   1c568:	4407c663          	bltz	a5,1c9b4 <_svfprintf_r+0x1944>
   1c56c:	06600793          	li	a5,102
   1c570:	48fd0863          	beq	s10,a5,1ca00 <_svfprintf_r+0x1990>
   1c574:	04600793          	li	a5,70
   1c578:	4cfd0c63          	beq	s10,a5,1ca50 <_svfprintf_r+0x19e0>
   1c57c:	fbbd859b          	addiw	a1,s11,-69
   1c580:	0015b593          	seqz	a1,a1
   1c584:	228405d3          	fmv.d	fa1,fs0
   1c588:	00b405bb          	addw	a1,s0,a1
   1c58c:	09c10793          	addi	a5,sp,156
   1c590:	00058693          	mv	a3,a1
   1c594:	0a810813          	addi	a6,sp,168
   1c598:	09810713          	addi	a4,sp,152
   1c59c:	00200613          	li	a2,2
   1c5a0:	000c0513          	mv	a0,s8
   1c5a4:	01113823          	sd	a7,16(sp)
   1c5a8:	00b13423          	sd	a1,8(sp)
   1c5ac:	b09f80ef          	jal	150b4 <_dtoa_r>
   1c5b0:	06700793          	li	a5,103
   1c5b4:	00050913          	mv	s2,a0
   1c5b8:	00813583          	ld	a1,8(sp)
   1c5bc:	01013883          	ld	a7,16(sp)
   1c5c0:	2efd0c63          	beq	s10,a5,1c8b8 <_svfprintf_r+0x1848>
   1c5c4:	04700793          	li	a5,71
   1c5c8:	00b50733          	add	a4,a0,a1
   1c5cc:	60fd0663          	beq	s10,a5,1cbd8 <_svfprintf_r+0x1b68>
   1c5d0:	f20007d3          	fmv.d.x	fa5,zero
   1c5d4:	00070793          	mv	a5,a4
   1c5d8:	a2f426d3          	feq.d	a3,fs0,fa5
   1c5dc:	02069263          	bnez	a3,1c600 <_svfprintf_r+0x1590>
   1c5e0:	0a813783          	ld	a5,168(sp)
   1c5e4:	00e7fe63          	bleu	a4,a5,1c600 <_svfprintf_r+0x1590>
   1c5e8:	03000613          	li	a2,48
   1c5ec:	00178693          	addi	a3,a5,1
   1c5f0:	0ad13423          	sd	a3,168(sp)
   1c5f4:	00c78023          	sb	a2,0(a5)
   1c5f8:	0a813783          	ld	a5,168(sp)
   1c5fc:	fee7e8e3          	bltu	a5,a4,1c5ec <_svfprintf_r+0x157c>
   1c600:	412787b3          	sub	a5,a5,s2
   1c604:	06f12823          	sw	a5,112(sp)
   1c608:	04700793          	li	a5,71
   1c60c:	2efd8663          	beq	s11,a5,1c8f8 <_svfprintf_r+0x1888>
   1c610:	06500793          	li	a5,101
   1c614:	5da7de63          	ble	s10,a5,1cbf0 <_svfprintf_r+0x1b80>
   1c618:	06600793          	li	a5,102
   1c61c:	46fd0a63          	beq	s10,a5,1ca90 <_svfprintf_r+0x1a20>
   1c620:	09812783          	lw	a5,152(sp)
   1c624:	04f12623          	sw	a5,76(sp)
   1c628:	04c12703          	lw	a4,76(sp)
   1c62c:	07012683          	lw	a3,112(sp)
   1c630:	00070793          	mv	a5,a4
   1c634:	38d74663          	blt	a4,a3,1c9c0 <_svfprintf_r+0x1950>
   1c638:	001b7b13          	andi	s6,s6,1
   1c63c:	3a0b1463          	bnez	s6,1c9e4 <_svfprintf_r+0x1974>
   1c640:	60074a63          	bltz	a4,1cc54 <_svfprintf_r+0x1be4>
   1c644:	04c12703          	lw	a4,76(sp)
   1c648:	06700d13          	li	s10,103
   1c64c:	02e12023          	sw	a4,32(sp)
   1c650:	280c9663          	bnez	s9,1c8dc <_svfprintf_r+0x186c>
   1c654:	08f14603          	lbu	a2,143(sp)
   1c658:	00f12423          	sw	a5,8(sp)
   1c65c:	00012b03          	lw	s6,0(sp)
   1c660:	00000413          	li	s0,0
   1c664:	c65fe06f          	j	1b2c8 <_svfprintf_r+0x258>
   1c668:	00022937          	lui	s2,0x22
   1c66c:	cd890913          	addi	s2,s2,-808 # 21cd8 <zeroes.4123+0x670>
   1c670:	ba8ff06f          	j	1ba18 <_svfprintf_r+0x9a8>
   1c674:	0b010613          	addi	a2,sp,176
   1c678:	000b8593          	mv	a1,s7
   1c67c:	000c0513          	mv	a0,s8
   1c680:	2c1020ef          	jal	1f140 <__ssprint_r>
   1c684:	00050463          	beqz	a0,1c68c <_svfprintf_r+0x161c>
   1c688:	c89fe06f          	j	1b310 <_svfprintf_r+0x2a0>
   1c68c:	0c013783          	ld	a5,192(sp)
   1c690:	000a8893          	mv	a7,s5
   1c694:	901ff06f          	j	1bf94 <_svfprintf_r+0xf24>
   1c698:	04000593          	li	a1,64
   1c69c:	000c0513          	mv	a0,s8
   1c6a0:	ec4f40ef          	jal	10d64 <_malloc_r>
   1c6a4:	00abb023          	sd	a0,0(s7)
   1c6a8:	00abbc23          	sd	a0,24(s7)
   1c6ac:	58050063          	beqz	a0,1cc2c <_svfprintf_r+0x1bbc>
   1c6b0:	04000793          	li	a5,64
   1c6b4:	02fba023          	sw	a5,32(s7)
   1c6b8:	a35fe06f          	j	1b0ec <_svfprintf_r+0x7c>
   1c6bc:	0b010613          	addi	a2,sp,176
   1c6c0:	000b8593          	mv	a1,s7
   1c6c4:	000c0513          	mv	a0,s8
   1c6c8:	279020ef          	jal	1f140 <__ssprint_r>
   1c6cc:	00050463          	beqz	a0,1c6d4 <_svfprintf_r+0x1664>
   1c6d0:	c41fe06f          	j	1b310 <_svfprintf_r+0x2a0>
   1c6d4:	09812703          	lw	a4,152(sp)
   1c6d8:	07012683          	lw	a3,112(sp)
   1c6dc:	0c013783          	ld	a5,192(sp)
   1c6e0:	000a8893          	mv	a7,s5
   1c6e4:	40e6873b          	subw	a4,a3,a4
   1c6e8:	ae9ff06f          	j	1c1d0 <_svfprintf_r+0x1160>
   1c6ec:	00022937          	lui	s2,0x22
   1c6f0:	ce890913          	addi	s2,s2,-792 # 21ce8 <zeroes.4123+0x680>
   1c6f4:	c85ff06f          	j	1c378 <_svfprintf_r+0x1308>
   1c6f8:	0b010613          	addi	a2,sp,176
   1c6fc:	000b8593          	mv	a1,s7
   1c700:	000c0513          	mv	a0,s8
   1c704:	23d020ef          	jal	1f140 <__ssprint_r>
   1c708:	00050463          	beqz	a0,1c710 <_svfprintf_r+0x16a0>
   1c70c:	c05fe06f          	j	1b310 <_svfprintf_r+0x2a0>
   1c710:	09812403          	lw	s0,152(sp)
   1c714:	0c013783          	ld	a5,192(sp)
   1c718:	000a8893          	mv	a7,s5
   1c71c:	d40414e3          	bnez	s0,1c464 <_svfprintf_r+0x13f4>
   1c720:	d35ff06f          	j	1c454 <_svfprintf_r+0x13e4>
   1c724:	001b7793          	andi	a5,s6,1
   1c728:	0a078a63          	beqz	a5,1c7dc <_svfprintf_r+0x176c>
   1c72c:	03000793          	li	a5,48
   1c730:	0ef107a3          	sb	a5,239(sp)
   1c734:	07813783          	ld	a5,120(sp)
   1c738:	0ef10913          	addi	s2,sp,239
   1c73c:	02f12023          	sw	a5,32(sp)
   1c740:	b71fe06f          	j	1b2b0 <_svfprintf_r+0x240>
   1c744:	00913823          	sd	s1,16(sp)
   1c748:	01013683          	ld	a3,16(sp)
   1c74c:	008787b3          	add	a5,a5,s0
   1c750:	0017071b          	addiw	a4,a4,1
   1c754:	00d8b023          	sd	a3,0(a7)
   1c758:	0088b423          	sd	s0,8(a7)
   1c75c:	0cf13023          	sd	a5,192(sp)
   1c760:	0ae12c23          	sw	a4,184(sp)
   1c764:	00700693          	li	a3,7
   1c768:	01088893          	addi	a7,a7,16
   1c76c:	02e6d463          	ble	a4,a3,1c794 <_svfprintf_r+0x1724>
   1c770:	0b010613          	addi	a2,sp,176
   1c774:	000b8593          	mv	a1,s7
   1c778:	000c0513          	mv	a0,s8
   1c77c:	1c5020ef          	jal	1f140 <__ssprint_r>
   1c780:	00050463          	beqz	a0,1c788 <_svfprintf_r+0x1718>
   1c784:	b8dfe06f          	j	1b310 <_svfprintf_r+0x2a0>
   1c788:	0c013783          	ld	a5,192(sp)
   1c78c:	0b812703          	lw	a4,184(sp)
   1c790:	000a8893          	mv	a7,s5
   1c794:	07012683          	lw	a3,112(sp)
   1c798:	0017071b          	addiw	a4,a4,1
   1c79c:	0128b023          	sd	s2,0(a7)
   1c7a0:	00f687b3          	add	a5,a3,a5
   1c7a4:	cc8ff06f          	j	1bc6c <_svfprintf_r+0xbfc>
   1c7a8:	0b010613          	addi	a2,sp,176
   1c7ac:	000b8593          	mv	a1,s7
   1c7b0:	000c0513          	mv	a0,s8
   1c7b4:	18d020ef          	jal	1f140 <__ssprint_r>
   1c7b8:	00050463          	beqz	a0,1c7c0 <_svfprintf_r+0x1750>
   1c7bc:	b55fe06f          	j	1b310 <_svfprintf_r+0x2a0>
   1c7c0:	09812403          	lw	s0,152(sp)
   1c7c4:	0c013783          	ld	a5,192(sp)
   1c7c8:	0b812703          	lw	a4,184(sp)
   1c7cc:	000a8893          	mv	a7,s5
   1c7d0:	cc5ff06f          	j	1c494 <_svfprintf_r+0x1424>
   1c7d4:	00600413          	li	s0,6
   1c7d8:	d79ff06f          	j	1c550 <_svfprintf_r+0x14e0>
   1c7dc:	02012023          	sw	zero,32(sp)
   1c7e0:	000a8913          	mv	s2,s5
   1c7e4:	acdfe06f          	j	1b2b0 <_svfprintf_r+0x240>
   1c7e8:	01c12703          	lw	a4,28(sp)
   1c7ec:	00e7a023          	sw	a4,0(a5)
   1c7f0:	94dfe06f          	j	1b13c <_svfprintf_r+0xcc>
   1c7f4:	00090513          	mv	a0,s2
   1c7f8:	970f50ef          	jal	11968 <strlen>
   1c7fc:	0005079b          	sext.w	a5,a0
   1c800:	02f12023          	sw	a5,32(sp)
   1c804:	00078d93          	mv	s11,a5
   1c808:	00013883          	ld	a7,0(sp)
   1c80c:	ac07d063          	bgez	a5,1bacc <_svfprintf_r+0xa5c>
   1c810:	00000d93          	li	s11,0
   1c814:	ab8ff06f          	j	1bacc <_svfprintf_r+0xa5c>
   1c818:	fff00513          	li	a0,-1
   1c81c:	b09fe06f          	j	1b324 <_svfprintf_r+0x2b4>
   1c820:	0c013783          	ld	a5,192(sp)
   1c824:	0b812703          	lw	a4,184(sp)
   1c828:	05413823          	sd	s4,80(sp)
   1c82c:	e7dfe06f          	j	1b6a8 <_svfprintf_r+0x638>
   1c830:	00000413          	li	s0,0
   1c834:	f64ff06f          	j	1bf98 <_svfprintf_r+0xf28>
   1c838:	02d00613          	li	a2,45
   1c83c:	00100713          	li	a4,1
   1c840:	00100693          	li	a3,1
   1c844:	00d71463          	bne	a4,a3,1c84c <_svfprintf_r+0x17dc>
   1c848:	d0dfe06f          	j	1b554 <_svfprintf_r+0x4e4>
   1c84c:	00200693          	li	a3,2
   1c850:	00d70463          	beq	a4,a3,1c858 <_svfprintf_r+0x17e8>
   1c854:	b5dfe06f          	j	1b3b0 <_svfprintf_r+0x340>
   1c858:	a2dfe06f          	j	1b284 <_svfprintf_r+0x214>
   1c85c:	00600713          	li	a4,6
   1c860:	00877463          	bleu	s0,a4,1c868 <_svfprintf_r+0x17f8>
   1c864:	00070413          	mv	s0,a4
   1c868:	02812023          	sw	s0,32(sp)
   1c86c:	00040d93          	mv	s11,s0
   1c870:	2c044463          	bltz	s0,1cb38 <_svfprintf_r+0x1ac8>
   1c874:	00022937          	lui	s2,0x22
   1c878:	01b12423          	sw	s11,8(sp)
   1c87c:	03913423          	sd	s9,40(sp)
   1c880:	00000613          	li	a2,0
   1c884:	00000413          	li	s0,0
   1c888:	04012623          	sw	zero,76(sp)
   1c88c:	d2890913          	addi	s2,s2,-728 # 21d28 <zeroes.4123+0x6c0>
   1c890:	d5dfe06f          	j	1b5ec <_svfprintf_r+0x57c>
   1c894:	0b812703          	lw	a4,184(sp)
   1c898:	05413823          	sd	s4,80(sp)
   1c89c:	838ff06f          	j	1b8d4 <_svfprintf_r+0x864>
   1c8a0:	00000413          	li	s0,0
   1c8a4:	931ff06f          	j	1c1d4 <_svfprintf_r+0x1164>
   1c8a8:	02d00793          	li	a5,45
   1c8ac:	08f107a3          	sb	a5,143(sp)
   1c8b0:	02d00613          	li	a2,45
   1c8b4:	954ff06f          	j	1ba08 <_svfprintf_r+0x998>
   1c8b8:	001b7793          	andi	a5,s6,1
   1c8bc:	00b50733          	add	a4,a0,a1
   1c8c0:	d00798e3          	bnez	a5,1c5d0 <_svfprintf_r+0x1560>
   1c8c4:	0a813783          	ld	a5,168(sp)
   1c8c8:	d39ff06f          	j	1c600 <_svfprintf_r+0x1590>
   1c8cc:	00070b13          	mv	s6,a4
   1c8d0:	00000613          	li	a2,0
   1c8d4:	00200713          	li	a4,2
   1c8d8:	f69ff06f          	j	1c840 <_svfprintf_r+0x17d0>
   1c8dc:	02d00713          	li	a4,45
   1c8e0:	08e107a3          	sb	a4,143(sp)
   1c8e4:	00f12423          	sw	a5,8(sp)
   1c8e8:	00012b03          	lw	s6,0(sp)
   1c8ec:	02d00613          	li	a2,45
   1c8f0:	00000413          	li	s0,0
   1c8f4:	9d9fe06f          	j	1b2cc <_svfprintf_r+0x25c>
   1c8f8:	09812783          	lw	a5,152(sp)
   1c8fc:	ffd00713          	li	a4,-3
   1c900:	02e7cc63          	blt	a5,a4,1c938 <_svfprintf_r+0x18c8>
   1c904:	02f44a63          	blt	s0,a5,1c938 <_svfprintf_r+0x18c8>
   1c908:	04f12623          	sw	a5,76(sp)
   1c90c:	d1dff06f          	j	1c628 <_svfprintf_r+0x15b8>
   1c910:	0b812703          	lw	a4,184(sp)
   1c914:	00913823          	sd	s1,16(sp)
   1c918:	d28ff06f          	j	1be40 <_svfprintf_r+0xdd0>
   1c91c:	00812423          	sw	s0,8(sp)
   1c920:	02812023          	sw	s0,32(sp)
   1c924:	08f14603          	lbu	a2,143(sp)
   1c928:	03913423          	sd	s9,40(sp)
   1c92c:	00000413          	li	s0,0
   1c930:	04012623          	sw	zero,76(sp)
   1c934:	995fe06f          	j	1b2c8 <_svfprintf_r+0x258>
   1c938:	ffed0d1b          	addiw	s10,s10,-2
   1c93c:	fff7879b          	addiw	a5,a5,-1
   1c940:	08f12c23          	sw	a5,152(sp)
   1c944:	0ba10023          	sb	s10,160(sp)
   1c948:	2607c263          	bltz	a5,1cbac <_svfprintf_r+0x1b3c>
   1c94c:	02b00713          	li	a4,43
   1c950:	0ae100a3          	sb	a4,161(sp)
   1c954:	00900613          	li	a2,9
   1c958:	14f64c63          	blt	a2,a5,1cab0 <_svfprintf_r+0x1a40>
   1c95c:	0307879b          	addiw	a5,a5,48
   1c960:	03000713          	li	a4,48
   1c964:	0af101a3          	sb	a5,163(sp)
   1c968:	0ae10123          	sb	a4,162(sp)
   1c96c:	0a410793          	addi	a5,sp,164
   1c970:	0a010713          	addi	a4,sp,160
   1c974:	40e787bb          	subw	a5,a5,a4
   1c978:	07012703          	lw	a4,112(sp)
   1c97c:	06f12a23          	sw	a5,116(sp)
   1c980:	00e787bb          	addw	a5,a5,a4
   1c984:	02f12023          	sw	a5,32(sp)
   1c988:	00100793          	li	a5,1
   1c98c:	22e7d863          	ble	a4,a5,1cbbc <_svfprintf_r+0x1b4c>
   1c990:	02012783          	lw	a5,32(sp)
   1c994:	0017879b          	addiw	a5,a5,1
   1c998:	02f12023          	sw	a5,32(sp)
   1c99c:	2207ca63          	bltz	a5,1cbd0 <_svfprintf_r+0x1b60>
   1c9a0:	04012623          	sw	zero,76(sp)
   1c9a4:	cadff06f          	j	1c650 <_svfprintf_r+0x15e0>
   1c9a8:	ba0414e3          	bnez	s0,1c550 <_svfprintf_r+0x14e0>
   1c9ac:	00090413          	mv	s0,s2
   1c9b0:	ba1ff06f          	j	1c550 <_svfprintf_r+0x14e0>
   1c9b4:	22841453          	fneg.d	fs0,fs0
   1c9b8:	02d00c93          	li	s9,45
   1c9bc:	bb1ff06f          	j	1c56c <_svfprintf_r+0x14fc>
   1c9c0:	04c12703          	lw	a4,76(sp)
   1c9c4:	00100793          	li	a5,1
   1c9c8:	1ae05c63          	blez	a4,1cb80 <_svfprintf_r+0x1b10>
   1c9cc:	07012703          	lw	a4,112(sp)
   1c9d0:	00e787bb          	addw	a5,a5,a4
   1c9d4:	02f12023          	sw	a5,32(sp)
   1c9d8:	0007ce63          	bltz	a5,1c9f4 <_svfprintf_r+0x1984>
   1c9dc:	06700d13          	li	s10,103
   1c9e0:	c71ff06f          	j	1c650 <_svfprintf_r+0x15e0>
   1c9e4:	04c12783          	lw	a5,76(sp)
   1c9e8:	0017879b          	addiw	a5,a5,1
   1c9ec:	02f12023          	sw	a5,32(sp)
   1c9f0:	fe07d6e3          	bgez	a5,1c9dc <_svfprintf_r+0x196c>
   1c9f4:	00000793          	li	a5,0
   1c9f8:	06700d13          	li	s10,103
   1c9fc:	c55ff06f          	j	1c650 <_svfprintf_r+0x15e0>
   1ca00:	228405d3          	fmv.d	fa1,fs0
   1ca04:	09810713          	addi	a4,sp,152
   1ca08:	0a810813          	addi	a6,sp,168
   1ca0c:	09c10793          	addi	a5,sp,156
   1ca10:	00040693          	mv	a3,s0
   1ca14:	00300613          	li	a2,3
   1ca18:	000c0513          	mv	a0,s8
   1ca1c:	01113423          	sd	a7,8(sp)
   1ca20:	e94f80ef          	jal	150b4 <_dtoa_r>
   1ca24:	00813883          	ld	a7,8(sp)
   1ca28:	00040713          	mv	a4,s0
   1ca2c:	00050913          	mv	s2,a0
   1ca30:	00e50733          	add	a4,a0,a4
   1ca34:	00040593          	mv	a1,s0
   1ca38:	00094683          	lbu	a3,0(s2)
   1ca3c:	03000793          	li	a5,48
   1ca40:	0cf68c63          	beq	a3,a5,1cb18 <_svfprintf_r+0x1aa8>
   1ca44:	09812583          	lw	a1,152(sp)
   1ca48:	00b70733          	add	a4,a4,a1
   1ca4c:	b85ff06f          	j	1c5d0 <_svfprintf_r+0x1560>
   1ca50:	228405d3          	fmv.d	fa1,fs0
   1ca54:	0a810813          	addi	a6,sp,168
   1ca58:	09c10793          	addi	a5,sp,156
   1ca5c:	09810713          	addi	a4,sp,152
   1ca60:	00040693          	mv	a3,s0
   1ca64:	00300613          	li	a2,3
   1ca68:	000c0513          	mv	a0,s8
   1ca6c:	01113423          	sd	a7,8(sp)
   1ca70:	e44f80ef          	jal	150b4 <_dtoa_r>
   1ca74:	00813883          	ld	a7,8(sp)
   1ca78:	00050913          	mv	s2,a0
   1ca7c:	00040593          	mv	a1,s0
   1ca80:	04600793          	li	a5,70
   1ca84:	00b90733          	add	a4,s2,a1
   1ca88:	fafd08e3          	beq	s10,a5,1ca38 <_svfprintf_r+0x19c8>
   1ca8c:	b45ff06f          	j	1c5d0 <_svfprintf_r+0x1560>
   1ca90:	09812783          	lw	a5,152(sp)
   1ca94:	04f12623          	sw	a5,76(sp)
   1ca98:	0cf05263          	blez	a5,1cb5c <_svfprintf_r+0x1aec>
   1ca9c:	0a041263          	bnez	s0,1cb40 <_svfprintf_r+0x1ad0>
   1caa0:	001b7b13          	andi	s6,s6,1
   1caa4:	080b1e63          	bnez	s6,1cb40 <_svfprintf_r+0x1ad0>
   1caa8:	02f12023          	sw	a5,32(sp)
   1caac:	ba5ff06f          	j	1c650 <_svfprintf_r+0x15e0>
   1cab0:	0af10593          	addi	a1,sp,175
   1cab4:	00058713          	mv	a4,a1
   1cab8:	00a00513          	li	a0,10
   1cabc:	02a7e6bb          	remw	a3,a5,a0
   1cac0:	fff70713          	addi	a4,a4,-1
   1cac4:	02a7c7bb          	divw	a5,a5,a0
   1cac8:	0306869b          	addiw	a3,a3,48
   1cacc:	00d70023          	sb	a3,0(a4)
   1cad0:	fef646e3          	blt	a2,a5,1cabc <_svfprintf_r+0x1a4c>
   1cad4:	0307879b          	addiw	a5,a5,48
   1cad8:	0ff7f793          	andi	a5,a5,255
   1cadc:	fff70693          	addi	a3,a4,-1
   1cae0:	fef70fa3          	sb	a5,-1(a4)
   1cae4:	16b6f463          	bleu	a1,a3,1cc4c <_svfprintf_r+0x1bdc>
   1cae8:	0a210613          	addi	a2,sp,162
   1caec:	0080006f          	j	1caf4 <_svfprintf_r+0x1a84>
   1caf0:	0006c783          	lbu	a5,0(a3)
   1caf4:	00160613          	addi	a2,a2,1
   1caf8:	00168693          	addi	a3,a3,1
   1cafc:	fef60fa3          	sb	a5,-1(a2)
   1cb00:	feb698e3          	bne	a3,a1,1caf0 <_svfprintf_r+0x1a80>
   1cb04:	0b010793          	addi	a5,sp,176
   1cb08:	40e787b3          	sub	a5,a5,a4
   1cb0c:	0a210713          	addi	a4,sp,162
   1cb10:	00f707b3          	add	a5,a4,a5
   1cb14:	e5dff06f          	j	1c970 <_svfprintf_r+0x1900>
   1cb18:	f20007d3          	fmv.d.x	fa5,zero
   1cb1c:	a2f427d3          	feq.d	a5,fs0,fa5
   1cb20:	f20792e3          	bnez	a5,1ca44 <_svfprintf_r+0x19d4>
   1cb24:	00100793          	li	a5,1
   1cb28:	40b785bb          	subw	a1,a5,a1
   1cb2c:	08b12c23          	sw	a1,152(sp)
   1cb30:	00b70733          	add	a4,a4,a1
   1cb34:	a9dff06f          	j	1c5d0 <_svfprintf_r+0x1560>
   1cb38:	00000d93          	li	s11,0
   1cb3c:	d39ff06f          	j	1c874 <_svfprintf_r+0x1804>
   1cb40:	04c12783          	lw	a5,76(sp)
   1cb44:	0014041b          	addiw	s0,s0,1
   1cb48:	008787bb          	addw	a5,a5,s0
   1cb4c:	02f12023          	sw	a5,32(sp)
   1cb50:	b007d0e3          	bgez	a5,1c650 <_svfprintf_r+0x15e0>
   1cb54:	00000793          	li	a5,0
   1cb58:	af9ff06f          	j	1c650 <_svfprintf_r+0x15e0>
   1cb5c:	00041a63          	bnez	s0,1cb70 <_svfprintf_r+0x1b00>
   1cb60:	00100793          	li	a5,1
   1cb64:	00fb7b33          	and	s6,s6,a5
   1cb68:	02f12023          	sw	a5,32(sp)
   1cb6c:	ae0b02e3          	beqz	s6,1c650 <_svfprintf_r+0x15e0>
   1cb70:	0024079b          	addiw	a5,s0,2
   1cb74:	02f12023          	sw	a5,32(sp)
   1cb78:	ac07dce3          	bgez	a5,1c650 <_svfprintf_r+0x15e0>
   1cb7c:	fd9ff06f          	j	1cb54 <_svfprintf_r+0x1ae4>
   1cb80:	00200793          	li	a5,2
   1cb84:	40e787bb          	subw	a5,a5,a4
   1cb88:	e45ff06f          	j	1c9cc <_svfprintf_r+0x195c>
   1cb8c:	02813783          	ld	a5,40(sp)
   1cb90:	0007a403          	lw	s0,0(a5)
   1cb94:	00878793          	addi	a5,a5,8
   1cb98:	02f13423          	sd	a5,40(sp)
   1cb9c:	00044463          	bltz	s0,1cba4 <_svfprintf_r+0x1b34>
   1cba0:	e38fe06f          	j	1b1d8 <_svfprintf_r+0x168>
   1cba4:	fff00413          	li	s0,-1
   1cba8:	e30fe06f          	j	1b1d8 <_svfprintf_r+0x168>
   1cbac:	02d00713          	li	a4,45
   1cbb0:	40f007bb          	negw	a5,a5
   1cbb4:	0ae100a3          	sb	a4,161(sp)
   1cbb8:	d9dff06f          	j	1c954 <_svfprintf_r+0x18e4>
   1cbbc:	00fb7b33          	and	s6,s6,a5
   1cbc0:	dc0b18e3          	bnez	s6,1c990 <_svfprintf_r+0x1920>
   1cbc4:	02012703          	lw	a4,32(sp)
   1cbc8:	00070793          	mv	a5,a4
   1cbcc:	dc075ae3          	bgez	a4,1c9a0 <_svfprintf_r+0x1930>
   1cbd0:	00000793          	li	a5,0
   1cbd4:	dcdff06f          	j	1c9a0 <_svfprintf_r+0x1930>
   1cbd8:	001b7793          	andi	a5,s6,1
   1cbdc:	ea0792e3          	bnez	a5,1ca80 <_svfprintf_r+0x1a10>
   1cbe0:	0a813783          	ld	a5,168(sp)
   1cbe4:	412787b3          	sub	a5,a5,s2
   1cbe8:	06f12823          	sw	a5,112(sp)
   1cbec:	d1ad86e3          	beq	s11,s10,1c8f8 <_svfprintf_r+0x1888>
   1cbf0:	09812783          	lw	a5,152(sp)
   1cbf4:	d49ff06f          	j	1c93c <_svfprintf_r+0x18cc>
   1cbf8:	08b107a3          	sb	a1,143(sp)
   1cbfc:	869fe06f          	j	1b464 <_svfprintf_r+0x3f4>
   1cc00:	08b107a3          	sb	a1,143(sp)
   1cc04:	010b6b13          	ori	s6,s6,16
   1cc08:	8ddfe06f          	j	1b4e4 <_svfprintf_r+0x474>
   1cc0c:	08b107a3          	sb	a1,143(sp)
   1cc10:	f68fe06f          	j	1b378 <_svfprintf_r+0x308>
   1cc14:	08b107a3          	sb	a1,143(sp)
   1cc18:	dadfe06f          	j	1b9c4 <_svfprintf_r+0x954>
   1cc1c:	08b107a3          	sb	a1,143(sp)
   1cc20:	969fe06f          	j	1b588 <_svfprintf_r+0x518>
   1cc24:	08b107a3          	sb	a1,143(sp)
   1cc28:	8fdfe06f          	j	1b524 <_svfprintf_r+0x4b4>
   1cc2c:	00c00793          	li	a5,12
   1cc30:	00fc2023          	sw	a5,0(s8)
   1cc34:	fff00513          	li	a0,-1
   1cc38:	eecfe06f          	j	1b324 <_svfprintf_r+0x2b4>
   1cc3c:	08b107a3          	sb	a1,143(sp)
   1cc40:	d11fe06f          	j	1b950 <_svfprintf_r+0x8e0>
   1cc44:	08b107a3          	sb	a1,143(sp)
   1cc48:	ef1fe06f          	j	1bb38 <_svfprintf_r+0xac8>
   1cc4c:	0a210793          	addi	a5,sp,162
   1cc50:	d21ff06f          	j	1c970 <_svfprintf_r+0x1900>
   1cc54:	00000793          	li	a5,0
   1cc58:	9edff06f          	j	1c644 <_svfprintf_r+0x15d4>
   1cc5c:	08b107a3          	sb	a1,143(sp)
   1cc60:	010b6b13          	ori	s6,s6,16
   1cc64:	de5fe06f          	j	1ba48 <_svfprintf_r+0x9d8>
   1cc68:	08b107a3          	sb	a1,143(sp)
   1cc6c:	f90fe06f          	j	1b3fc <_svfprintf_r+0x38c>

000000000001cc70 <__submore>:
   1cc70:	fd010113          	addi	sp,sp,-48
   1cc74:	02813023          	sd	s0,32(sp)
   1cc78:	00058413          	mv	s0,a1
   1cc7c:	0585b583          	ld	a1,88(a1)
   1cc80:	02113423          	sd	ra,40(sp)
   1cc84:	00913c23          	sd	s1,24(sp)
   1cc88:	01213823          	sd	s2,16(sp)
   1cc8c:	01313423          	sd	s3,8(sp)
   1cc90:	01413023          	sd	s4,0(sp)
   1cc94:	07440793          	addi	a5,s0,116
   1cc98:	06f58063          	beq	a1,a5,1ccf8 <__submore+0x88>
   1cc9c:	06042983          	lw	s3,96(s0)
   1cca0:	00199a1b          	slliw	s4,s3,0x1
   1cca4:	000a0613          	mv	a2,s4
   1cca8:	980fc0ef          	jal	18e28 <_realloc_r>
   1ccac:	00050493          	mv	s1,a0
   1ccb0:	0a050463          	beqz	a0,1cd58 <__submore+0xe8>
   1ccb4:	01350933          	add	s2,a0,s3
   1ccb8:	00050593          	mv	a1,a0
   1ccbc:	00098613          	mv	a2,s3
   1ccc0:	00090513          	mv	a0,s2
   1ccc4:	de5fa0ef          	jal	17aa8 <memcpy>
   1ccc8:	00000513          	li	a0,0
   1cccc:	01243023          	sd	s2,0(s0)
   1ccd0:	04943c23          	sd	s1,88(s0)
   1ccd4:	07442023          	sw	s4,96(s0)
   1ccd8:	02813083          	ld	ra,40(sp)
   1ccdc:	02013403          	ld	s0,32(sp)
   1cce0:	01813483          	ld	s1,24(sp)
   1cce4:	01013903          	ld	s2,16(sp)
   1cce8:	00813983          	ld	s3,8(sp)
   1ccec:	00013a03          	ld	s4,0(sp)
   1ccf0:	03010113          	addi	sp,sp,48
   1ccf4:	00008067          	ret
   1ccf8:	40000593          	li	a1,1024
   1ccfc:	868f40ef          	jal	10d64 <_malloc_r>
   1cd00:	00050793          	mv	a5,a0
   1cd04:	04050a63          	beqz	a0,1cd58 <__submore+0xe8>
   1cd08:	07644703          	lbu	a4,118(s0)
   1cd0c:	40000693          	li	a3,1024
   1cd10:	04a43c23          	sd	a0,88(s0)
   1cd14:	06d42023          	sw	a3,96(s0)
   1cd18:	3ee50fa3          	sb	a4,1023(a0)
   1cd1c:	07544683          	lbu	a3,117(s0)
   1cd20:	3fd50713          	addi	a4,a0,1021
   1cd24:	00000513          	li	a0,0
   1cd28:	3ed78f23          	sb	a3,1022(a5)
   1cd2c:	07444683          	lbu	a3,116(s0)
   1cd30:	3ed78ea3          	sb	a3,1021(a5)
   1cd34:	02813083          	ld	ra,40(sp)
   1cd38:	00e43023          	sd	a4,0(s0)
   1cd3c:	01813483          	ld	s1,24(sp)
   1cd40:	02013403          	ld	s0,32(sp)
   1cd44:	01013903          	ld	s2,16(sp)
   1cd48:	00813983          	ld	s3,8(sp)
   1cd4c:	00013a03          	ld	s4,0(sp)
   1cd50:	03010113          	addi	sp,sp,48
   1cd54:	00008067          	ret
   1cd58:	fff00513          	li	a0,-1
   1cd5c:	f7dff06f          	j	1ccd8 <__submore+0x68>

000000000001cd60 <_ungetc_r>:
   1cd60:	fff00793          	li	a5,-1
   1cd64:	1cf58063          	beq	a1,a5,1cf24 <_ungetc_r+0x1c4>
   1cd68:	fd010113          	addi	sp,sp,-48
   1cd6c:	02813023          	sd	s0,32(sp)
   1cd70:	00913c23          	sd	s1,24(sp)
   1cd74:	01313423          	sd	s3,8(sp)
   1cd78:	02113423          	sd	ra,40(sp)
   1cd7c:	01213823          	sd	s2,16(sp)
   1cd80:	00050493          	mv	s1,a0
   1cd84:	00060413          	mv	s0,a2
   1cd88:	00058993          	mv	s3,a1
   1cd8c:	00050663          	beqz	a0,1cd98 <_ungetc_r+0x38>
   1cd90:	05052783          	lw	a5,80(a0)
   1cd94:	0c078c63          	beqz	a5,1ce6c <_ungetc_r+0x10c>
   1cd98:	01041783          	lh	a5,16(s0)
   1cd9c:	03279713          	slli	a4,a5,0x32
   1cda0:	02074463          	bltz	a4,1cdc8 <_ungetc_r+0x68>
   1cda4:	0ac42683          	lw	a3,172(s0)
   1cda8:	00002737          	lui	a4,0x2
   1cdac:	00e7e7b3          	or	a5,a5,a4
   1cdb0:	ffffe737          	lui	a4,0xffffe
   1cdb4:	fff7071b          	addiw	a4,a4,-1
   1cdb8:	00e6f733          	and	a4,a3,a4
   1cdbc:	0107979b          	slliw	a5,a5,0x10
   1cdc0:	4107d79b          	sraiw	a5,a5,0x10
   1cdc4:	0ae42623          	sw	a4,172(s0)
   1cdc8:	fdf7f793          	andi	a5,a5,-33
   1cdcc:	0107979b          	slliw	a5,a5,0x10
   1cdd0:	4107d79b          	sraiw	a5,a5,0x10
   1cdd4:	03079713          	slli	a4,a5,0x30
   1cdd8:	03075713          	srli	a4,a4,0x30
   1cddc:	00f41823          	sh	a5,16(s0)
   1cde0:	00477693          	andi	a3,a4,4
   1cde4:	00069e63          	bnez	a3,1ce00 <_ungetc_r+0xa0>
   1cde8:	01077693          	andi	a3,a4,16
   1cdec:	06068c63          	beqz	a3,1ce64 <_ungetc_r+0x104>
   1cdf0:	00877713          	andi	a4,a4,8
   1cdf4:	0e071463          	bnez	a4,1cedc <_ungetc_r+0x17c>
   1cdf8:	0047e793          	ori	a5,a5,4
   1cdfc:	00f41823          	sh	a5,16(s0)
   1ce00:	05843783          	ld	a5,88(s0)
   1ce04:	0ff9f913          	andi	s2,s3,255
   1ce08:	06078663          	beqz	a5,1ce74 <_ungetc_r+0x114>
   1ce0c:	00842703          	lw	a4,8(s0)
   1ce10:	06042783          	lw	a5,96(s0)
   1ce14:	04f75063          	ble	a5,a4,1ce54 <_ungetc_r+0xf4>
   1ce18:	00043783          	ld	a5,0(s0)
   1ce1c:	00090513          	mv	a0,s2
   1ce20:	fff78713          	addi	a4,a5,-1
   1ce24:	00e43023          	sd	a4,0(s0)
   1ce28:	ff378fa3          	sb	s3,-1(a5)
   1ce2c:	00842783          	lw	a5,8(s0)
   1ce30:	0017879b          	addiw	a5,a5,1
   1ce34:	00f42423          	sw	a5,8(s0)
   1ce38:	02813083          	ld	ra,40(sp)
   1ce3c:	02013403          	ld	s0,32(sp)
   1ce40:	01813483          	ld	s1,24(sp)
   1ce44:	01013903          	ld	s2,16(sp)
   1ce48:	00813983          	ld	s3,8(sp)
   1ce4c:	03010113          	addi	sp,sp,48
   1ce50:	00008067          	ret
   1ce54:	00040593          	mv	a1,s0
   1ce58:	00048513          	mv	a0,s1
   1ce5c:	e15ff0ef          	jal	1cc70 <__submore>
   1ce60:	fa050ce3          	beqz	a0,1ce18 <_ungetc_r+0xb8>
   1ce64:	fff00513          	li	a0,-1
   1ce68:	fd1ff06f          	j	1ce38 <_ungetc_r+0xd8>
   1ce6c:	95df90ef          	jal	167c8 <__sinit>
   1ce70:	f29ff06f          	j	1cd98 <_ungetc_r+0x38>
   1ce74:	01843703          	ld	a4,24(s0)
   1ce78:	00043783          	ld	a5,0(s0)
   1ce7c:	00070863          	beqz	a4,1ce8c <_ungetc_r+0x12c>
   1ce80:	00f77663          	bleu	a5,a4,1ce8c <_ungetc_r+0x12c>
   1ce84:	fff7c703          	lbu	a4,-1(a5)
   1ce88:	08e90063          	beq	s2,a4,1cf08 <_ungetc_r+0x1a8>
   1ce8c:	07340b23          	sb	s3,118(s0)
   1ce90:	00842603          	lw	a2,8(s0)
   1ce94:	02813083          	ld	ra,40(sp)
   1ce98:	06f43423          	sd	a5,104(s0)
   1ce9c:	00300793          	li	a5,3
   1cea0:	07440693          	addi	a3,s0,116
   1cea4:	07640713          	addi	a4,s0,118
   1cea8:	06f42023          	sw	a5,96(s0)
   1ceac:	00100793          	li	a5,1
   1ceb0:	00090513          	mv	a0,s2
   1ceb4:	06c42823          	sw	a2,112(s0)
   1ceb8:	04d43c23          	sd	a3,88(s0)
   1cebc:	00e43023          	sd	a4,0(s0)
   1cec0:	00f42423          	sw	a5,8(s0)
   1cec4:	01813483          	ld	s1,24(sp)
   1cec8:	02013403          	ld	s0,32(sp)
   1cecc:	01013903          	ld	s2,16(sp)
   1ced0:	00813983          	ld	s3,8(sp)
   1ced4:	03010113          	addi	sp,sp,48
   1ced8:	00008067          	ret
   1cedc:	00040593          	mv	a1,s0
   1cee0:	00048513          	mv	a0,s1
   1cee4:	d38f90ef          	jal	1641c <_fflush_r>
   1cee8:	f6051ee3          	bnez	a0,1ce64 <_ungetc_r+0x104>
   1ceec:	01045783          	lhu	a5,16(s0)
   1cef0:	00042623          	sw	zero,12(s0)
   1cef4:	02042423          	sw	zero,40(s0)
   1cef8:	ff77f793          	andi	a5,a5,-9
   1cefc:	0107979b          	slliw	a5,a5,0x10
   1cf00:	4107d79b          	sraiw	a5,a5,0x10
   1cf04:	ef5ff06f          	j	1cdf8 <_ungetc_r+0x98>
   1cf08:	00842703          	lw	a4,8(s0)
   1cf0c:	fff78793          	addi	a5,a5,-1
   1cf10:	00f43023          	sd	a5,0(s0)
   1cf14:	0017079b          	addiw	a5,a4,1
   1cf18:	00f42423          	sw	a5,8(s0)
   1cf1c:	00090513          	mv	a0,s2
   1cf20:	f19ff06f          	j	1ce38 <_ungetc_r+0xd8>
   1cf24:	fff00513          	li	a0,-1
   1cf28:	00008067          	ret

000000000001cf2c <ungetc>:
   1cf2c:	00058613          	mv	a2,a1
   1cf30:	00050593          	mv	a1,a0
   1cf34:	8181b503          	ld	a0,-2024(gp) # 24438 <_impure_ptr>
   1cf38:	e29ff06f          	j	1cd60 <_ungetc_r>

000000000001cf3c <__sprint_r.part.0>:
   1cf3c:	0ac5a783          	lw	a5,172(a1)
   1cf40:	fb010113          	addi	sp,sp,-80
   1cf44:	01613823          	sd	s6,16(sp)
   1cf48:	04113423          	sd	ra,72(sp)
   1cf4c:	04813023          	sd	s0,64(sp)
   1cf50:	02913c23          	sd	s1,56(sp)
   1cf54:	03213823          	sd	s2,48(sp)
   1cf58:	03313423          	sd	s3,40(sp)
   1cf5c:	03413023          	sd	s4,32(sp)
   1cf60:	01513c23          	sd	s5,24(sp)
   1cf64:	01713423          	sd	s7,8(sp)
   1cf68:	03279713          	slli	a4,a5,0x32
   1cf6c:	00060b13          	mv	s6,a2
   1cf70:	0a075863          	bgez	a4,1d020 <__sprint_r.part.0+0xe4>
   1cf74:	01063783          	ld	a5,16(a2)
   1cf78:	00058a13          	mv	s4,a1
   1cf7c:	00050a93          	mv	s5,a0
   1cf80:	00063b83          	ld	s7,0(a2)
   1cf84:	fff00993          	li	s3,-1
   1cf88:	08078863          	beqz	a5,1d018 <__sprint_r.part.0+0xdc>
   1cf8c:	008bb903          	ld	s2,8(s7)
   1cf90:	000bb483          	ld	s1,0(s7)
   1cf94:	00000413          	li	s0,0
   1cf98:	00295913          	srli	s2,s2,0x2
   1cf9c:	0009091b          	sext.w	s2,s2
   1cfa0:	01204863          	bgtz	s2,1cfb0 <__sprint_r.part.0+0x74>
   1cfa4:	0600006f          	j	1d004 <__sprint_r.part.0+0xc8>
   1cfa8:	00448493          	addi	s1,s1,4
   1cfac:	04890a63          	beq	s2,s0,1d000 <__sprint_r.part.0+0xc4>
   1cfb0:	0004a583          	lw	a1,0(s1)
   1cfb4:	000a0613          	mv	a2,s4
   1cfb8:	000a8513          	mv	a0,s5
   1cfbc:	524010ef          	jal	1e4e0 <_fputwc_r>
   1cfc0:	0014041b          	addiw	s0,s0,1
   1cfc4:	ff3512e3          	bne	a0,s3,1cfa8 <__sprint_r.part.0+0x6c>
   1cfc8:	00098513          	mv	a0,s3
   1cfcc:	04813083          	ld	ra,72(sp)
   1cfd0:	000b3823          	sd	zero,16(s6)
   1cfd4:	000b2423          	sw	zero,8(s6)
   1cfd8:	04013403          	ld	s0,64(sp)
   1cfdc:	03813483          	ld	s1,56(sp)
   1cfe0:	03013903          	ld	s2,48(sp)
   1cfe4:	02813983          	ld	s3,40(sp)
   1cfe8:	02013a03          	ld	s4,32(sp)
   1cfec:	01813a83          	ld	s5,24(sp)
   1cff0:	01013b03          	ld	s6,16(sp)
   1cff4:	00813b83          	ld	s7,8(sp)
   1cff8:	05010113          	addi	sp,sp,80
   1cffc:	00008067          	ret
   1d000:	010b3783          	ld	a5,16(s6)
   1d004:	00291913          	slli	s2,s2,0x2
   1d008:	412787b3          	sub	a5,a5,s2
   1d00c:	00fb3823          	sd	a5,16(s6)
   1d010:	010b8b93          	addi	s7,s7,16
   1d014:	f6079ce3          	bnez	a5,1cf8c <__sprint_r.part.0+0x50>
   1d018:	00000513          	li	a0,0
   1d01c:	fb1ff06f          	j	1cfcc <__sprint_r.part.0+0x90>
   1d020:	e7df90ef          	jal	16e9c <__sfvwrite_r>
   1d024:	fa9ff06f          	j	1cfcc <__sprint_r.part.0+0x90>

000000000001d028 <__sprint_r>:
   1d028:	01063703          	ld	a4,16(a2)
   1d02c:	00070463          	beqz	a4,1d034 <__sprint_r+0xc>
   1d030:	f0dff06f          	j	1cf3c <__sprint_r.part.0>
   1d034:	00062423          	sw	zero,8(a2)
   1d038:	00000513          	li	a0,0
   1d03c:	00008067          	ret

000000000001d040 <_vfiprintf_r>:
   1d040:	e6010113          	addi	sp,sp,-416
   1d044:	17513423          	sd	s5,360(sp)
   1d048:	17613023          	sd	s6,352(sp)
   1d04c:	15a13023          	sd	s10,320(sp)
   1d050:	18113c23          	sd	ra,408(sp)
   1d054:	18813823          	sd	s0,400(sp)
   1d058:	18913423          	sd	s1,392(sp)
   1d05c:	19213023          	sd	s2,384(sp)
   1d060:	17313c23          	sd	s3,376(sp)
   1d064:	17413823          	sd	s4,368(sp)
   1d068:	15713c23          	sd	s7,344(sp)
   1d06c:	15813823          	sd	s8,336(sp)
   1d070:	15913423          	sd	s9,328(sp)
   1d074:	13b13c23          	sd	s11,312(sp)
   1d078:	00d13423          	sd	a3,8(sp)
   1d07c:	00050a93          	mv	s5,a0
   1d080:	00058d13          	mv	s10,a1
   1d084:	00060b13          	mv	s6,a2
   1d088:	00050663          	beqz	a0,1d094 <_vfiprintf_r+0x54>
   1d08c:	05052783          	lw	a5,80(a0)
   1d090:	1e078c63          	beqz	a5,1d288 <_vfiprintf_r+0x248>
   1d094:	010d1683          	lh	a3,16(s10)
   1d098:	03069793          	slli	a5,a3,0x30
   1d09c:	0307d793          	srli	a5,a5,0x30
   1d0a0:	03279713          	slli	a4,a5,0x32
   1d0a4:	02074a63          	bltz	a4,1d0d8 <_vfiprintf_r+0x98>
   1d0a8:	000027b7          	lui	a5,0x2
   1d0ac:	0acd2603          	lw	a2,172(s10)
   1d0b0:	00f6e7b3          	or	a5,a3,a5
   1d0b4:	0107979b          	slliw	a5,a5,0x10
   1d0b8:	ffffe737          	lui	a4,0xffffe
   1d0bc:	4107d79b          	sraiw	a5,a5,0x10
   1d0c0:	fff7071b          	addiw	a4,a4,-1
   1d0c4:	00e67733          	and	a4,a2,a4
   1d0c8:	00fd1823          	sh	a5,16(s10)
   1d0cc:	03079793          	slli	a5,a5,0x30
   1d0d0:	0aed2623          	sw	a4,172(s10)
   1d0d4:	0307d793          	srli	a5,a5,0x30
   1d0d8:	0087f713          	andi	a4,a5,8
   1d0dc:	12070a63          	beqz	a4,1d210 <_vfiprintf_r+0x1d0>
   1d0e0:	018d3703          	ld	a4,24(s10)
   1d0e4:	12070663          	beqz	a4,1d210 <_vfiprintf_r+0x1d0>
   1d0e8:	01a7f793          	andi	a5,a5,26
   1d0ec:	00a00713          	li	a4,10
   1d0f0:	14e78063          	beq	a5,a4,1d230 <_vfiprintf_r+0x1f0>
   1d0f4:	0b010c93          	addi	s9,sp,176
   1d0f8:	00021c37          	lui	s8,0x21
   1d0fc:	0af10793          	addi	a5,sp,175
   1d100:	268c0713          	addi	a4,s8,616 # 21268 <zeroes.4179+0x10>
   1d104:	40fc87b3          	sub	a5,s9,a5
   1d108:	000218b7          	lui	a7,0x21
   1d10c:	07913823          	sd	s9,112(sp)
   1d110:	08013023          	sd	zero,128(sp)
   1d114:	06012c23          	sw	zero,120(sp)
   1d118:	000c8413          	mv	s0,s9
   1d11c:	00013c23          	sd	zero,24(sp)
   1d120:	04012c23          	sw	zero,88(sp)
   1d124:	00e13823          	sd	a4,16(sp)
   1d128:	3d088c13          	addi	s8,a7,976 # 213d0 <blanks.4136>
   1d12c:	04f12e23          	sw	a5,92(sp)
   1d130:	000b4783          	lbu	a5,0(s6)
   1d134:	4e078ee3          	beqz	a5,1de30 <_vfiprintf_r+0xdf0>
   1d138:	02500713          	li	a4,37
   1d13c:	000b0493          	mv	s1,s6
   1d140:	00e79663          	bne	a5,a4,1d14c <_vfiprintf_r+0x10c>
   1d144:	0580006f          	j	1d19c <_vfiprintf_r+0x15c>
   1d148:	00e78863          	beq	a5,a4,1d158 <_vfiprintf_r+0x118>
   1d14c:	00148493          	addi	s1,s1,1
   1d150:	0004c783          	lbu	a5,0(s1)
   1d154:	fe079ae3          	bnez	a5,1d148 <_vfiprintf_r+0x108>
   1d158:	4164893b          	subw	s2,s1,s6
   1d15c:	04090063          	beqz	s2,1d19c <_vfiprintf_r+0x15c>
   1d160:	08013703          	ld	a4,128(sp)
   1d164:	07812783          	lw	a5,120(sp)
   1d168:	00090613          	mv	a2,s2
   1d16c:	00e60733          	add	a4,a2,a4
   1d170:	0017879b          	addiw	a5,a5,1
   1d174:	00c43423          	sd	a2,8(s0)
   1d178:	01643023          	sd	s6,0(s0)
   1d17c:	08e13023          	sd	a4,128(sp)
   1d180:	06f12c23          	sw	a5,120(sp)
   1d184:	00700613          	li	a2,7
   1d188:	01040413          	addi	s0,s0,16
   1d18c:	06f64463          	blt	a2,a5,1d1f4 <_vfiprintf_r+0x1b4>
   1d190:	05812783          	lw	a5,88(sp)
   1d194:	012787bb          	addw	a5,a5,s2
   1d198:	04f12c23          	sw	a5,88(sp)
   1d19c:	0004c783          	lbu	a5,0(s1)
   1d1a0:	580786e3          	beqz	a5,1df2c <_vfiprintf_r+0xeec>
   1d1a4:	00148813          	addi	a6,s1,1
   1d1a8:	060103a3          	sb	zero,103(sp)
   1d1ac:	00000513          	li	a0,0
   1d1b0:	00000e93          	li	t4,0
   1d1b4:	fff00493          	li	s1,-1
   1d1b8:	00000913          	li	s2,0
   1d1bc:	00000313          	li	t1,0
   1d1c0:	05800613          	li	a2,88
   1d1c4:	00900593          	li	a1,9
   1d1c8:	02a00f13          	li	t5,42
   1d1cc:	00084703          	lbu	a4,0(a6)
   1d1d0:	00180b13          	addi	s6,a6,1
   1d1d4:	fe07079b          	addiw	a5,a4,-32
   1d1d8:	66f66263          	bltu	a2,a5,1d83c <_vfiprintf_r+0x7fc>
   1d1dc:	01013683          	ld	a3,16(sp)
   1d1e0:	02079793          	slli	a5,a5,0x20
   1d1e4:	01e7d793          	srli	a5,a5,0x1e
   1d1e8:	00d787b3          	add	a5,a5,a3
   1d1ec:	0007a783          	lw	a5,0(a5) # 2000 <_ftext-0xe000>
   1d1f0:	00078067          	jr	a5
   1d1f4:	2e071ee3          	bnez	a4,1dcf0 <_vfiprintf_r+0xcb0>
   1d1f8:	06012c23          	sw	zero,120(sp)
   1d1fc:	000c8413          	mv	s0,s9
   1d200:	f91ff06f          	j	1d190 <_vfiprintf_r+0x150>
   1d204:	01036313          	ori	t1,t1,16
   1d208:	000b0813          	mv	a6,s6
   1d20c:	fc1ff06f          	j	1d1cc <_vfiprintf_r+0x18c>
   1d210:	000d0593          	mv	a1,s10
   1d214:	000a8513          	mv	a0,s5
   1d218:	8adf70ef          	jal	14ac4 <__swsetup_r>
   1d21c:	4e0512e3          	bnez	a0,1df00 <_vfiprintf_r+0xec0>
   1d220:	010d5783          	lhu	a5,16(s10)
   1d224:	00a00713          	li	a4,10
   1d228:	01a7f793          	andi	a5,a5,26
   1d22c:	ece794e3          	bne	a5,a4,1d0f4 <_vfiprintf_r+0xb4>
   1d230:	012d1783          	lh	a5,18(s10)
   1d234:	ec07c0e3          	bltz	a5,1d0f4 <_vfiprintf_r+0xb4>
   1d238:	00813683          	ld	a3,8(sp)
   1d23c:	000b0613          	mv	a2,s6
   1d240:	000d0593          	mv	a1,s10
   1d244:	000a8513          	mv	a0,s5
   1d248:	6a9000ef          	jal	1e0f0 <__sbprintf>
   1d24c:	19813083          	ld	ra,408(sp)
   1d250:	19013403          	ld	s0,400(sp)
   1d254:	18813483          	ld	s1,392(sp)
   1d258:	18013903          	ld	s2,384(sp)
   1d25c:	17813983          	ld	s3,376(sp)
   1d260:	17013a03          	ld	s4,368(sp)
   1d264:	16813a83          	ld	s5,360(sp)
   1d268:	16013b03          	ld	s6,352(sp)
   1d26c:	15813b83          	ld	s7,344(sp)
   1d270:	15013c03          	ld	s8,336(sp)
   1d274:	14813c83          	ld	s9,328(sp)
   1d278:	14013d03          	ld	s10,320(sp)
   1d27c:	13813d83          	ld	s11,312(sp)
   1d280:	1a010113          	addi	sp,sp,416
   1d284:	00008067          	ret
   1d288:	d40f90ef          	jal	167c8 <__sinit>
   1d28c:	e09ff06f          	j	1d094 <_vfiprintf_r+0x54>
   1d290:	00813783          	ld	a5,8(sp)
   1d294:	0007a903          	lw	s2,0(a5)
   1d298:	00878793          	addi	a5,a5,8
   1d29c:	00f13423          	sd	a5,8(sp)
   1d2a0:	f60954e3          	bgez	s2,1d208 <_vfiprintf_r+0x1c8>
   1d2a4:	4120093b          	negw	s2,s2
   1d2a8:	00436313          	ori	t1,t1,4
   1d2ac:	000b0813          	mv	a6,s6
   1d2b0:	f1dff06f          	j	1d1cc <_vfiprintf_r+0x18c>
   1d2b4:	03000793          	li	a5,48
   1d2b8:	06f10423          	sb	a5,104(sp)
   1d2bc:	07800793          	li	a5,120
   1d2c0:	06f104a3          	sb	a5,105(sp)
   1d2c4:	00813783          	ld	a5,8(sp)
   1d2c8:	060103a3          	sb	zero,103(sp)
   1d2cc:	00236613          	ori	a2,t1,2
   1d2d0:	00878713          	addi	a4,a5,8
   1d2d4:	0007b783          	ld	a5,0(a5)
   1d2d8:	2e04cce3          	bltz	s1,1ddd0 <_vfiprintf_r+0xd90>
   1d2dc:	f7f37313          	andi	t1,t1,-129
   1d2e0:	00e13423          	sd	a4,8(sp)
   1d2e4:	00236313          	ori	t1,t1,2
   1d2e8:	32079ae3          	bnez	a5,1de1c <_vfiprintf_r+0xddc>
   1d2ec:	000227b7          	lui	a5,0x22
   1d2f0:	d1078793          	addi	a5,a5,-752 # 21d10 <zeroes.4123+0x6a8>
   1d2f4:	00f13c23          	sd	a5,24(sp)
   1d2f8:	00000593          	li	a1,0
   1d2fc:	200498e3          	bnez	s1,1dd0c <_vfiprintf_r+0xccc>
   1d300:	00000493          	li	s1,0
   1d304:	00000a13          	li	s4,0
   1d308:	000c8b93          	mv	s7,s9
   1d30c:	00048993          	mv	s3,s1
   1d310:	0144d463          	ble	s4,s1,1d318 <_vfiprintf_r+0x2d8>
   1d314:	000a0993          	mv	s3,s4
   1d318:	00b035b3          	snez	a1,a1
   1d31c:	00b989bb          	addw	s3,s3,a1
   1d320:	00237393          	andi	t2,t1,2
   1d324:	00038463          	beqz	t2,1d32c <_vfiprintf_r+0x2ec>
   1d328:	0029899b          	addiw	s3,s3,2
   1d32c:	08437293          	andi	t0,t1,132
   1d330:	58029463          	bnez	t0,1d8b8 <_vfiprintf_r+0x878>
   1d334:	41390dbb          	subw	s11,s2,s3
   1d338:	59b05063          	blez	s11,1d8b8 <_vfiprintf_r+0x878>
   1d33c:	01000793          	li	a5,16
   1d340:	45b7dee3          	ble	s11,a5,1df9c <_vfiprintf_r+0xf5c>
   1d344:	01000e93          	li	t4,16
   1d348:	08013783          	ld	a5,128(sp)
   1d34c:	07812503          	lw	a0,120(sp)
   1d350:	05813823          	sd	s8,80(sp)
   1d354:	00700f13          	li	t5,7
   1d358:	000e8f93          	mv	t6,t4
   1d35c:	0180006f          	j	1d374 <_vfiprintf_r+0x334>
   1d360:	0025061b          	addiw	a2,a0,2
   1d364:	01040413          	addi	s0,s0,16
   1d368:	00058513          	mv	a0,a1
   1d36c:	ff0d8d9b          	addiw	s11,s11,-16
   1d370:	03bfdc63          	ble	s11,t6,1d3a8 <_vfiprintf_r+0x368>
   1d374:	01078793          	addi	a5,a5,16
   1d378:	0015059b          	addiw	a1,a0,1
   1d37c:	01843023          	sd	s8,0(s0)
   1d380:	01d43423          	sd	t4,8(s0)
   1d384:	08f13023          	sd	a5,128(sp)
   1d388:	06b12c23          	sw	a1,120(sp)
   1d38c:	fcbf5ae3          	ble	a1,t5,1d360 <_vfiprintf_r+0x320>
   1d390:	4c079863          	bnez	a5,1d860 <_vfiprintf_r+0x820>
   1d394:	ff0d8d9b          	addiw	s11,s11,-16
   1d398:	00000513          	li	a0,0
   1d39c:	00100613          	li	a2,1
   1d3a0:	000c8413          	mv	s0,s9
   1d3a4:	fdbfc8e3          	blt	t6,s11,1d374 <_vfiprintf_r+0x334>
   1d3a8:	05013703          	ld	a4,80(sp)
   1d3ac:	00fd87b3          	add	a5,s11,a5
   1d3b0:	01b43423          	sd	s11,8(s0)
   1d3b4:	00e43023          	sd	a4,0(s0)
   1d3b8:	08f13023          	sd	a5,128(sp)
   1d3bc:	06c12c23          	sw	a2,120(sp)
   1d3c0:	00700593          	li	a1,7
   1d3c4:	7ac5cc63          	blt	a1,a2,1db7c <_vfiprintf_r+0xb3c>
   1d3c8:	06714503          	lbu	a0,103(sp)
   1d3cc:	01040413          	addi	s0,s0,16
   1d3d0:	0016059b          	addiw	a1,a2,1
   1d3d4:	4e051c63          	bnez	a0,1d8cc <_vfiprintf_r+0x88c>
   1d3d8:	52038663          	beqz	t2,1d904 <_vfiprintf_r+0x8c4>
   1d3dc:	06810613          	addi	a2,sp,104
   1d3e0:	00278793          	addi	a5,a5,2
   1d3e4:	00c43023          	sd	a2,0(s0)
   1d3e8:	00200613          	li	a2,2
   1d3ec:	00c43423          	sd	a2,8(s0)
   1d3f0:	08f13023          	sd	a5,128(sp)
   1d3f4:	06b12c23          	sw	a1,120(sp)
   1d3f8:	00700613          	li	a2,7
   1d3fc:	7cb65863          	ble	a1,a2,1dbcc <_vfiprintf_r+0xb8c>
   1d400:	10079ae3          	bnez	a5,1dd14 <_vfiprintf_r+0xcd4>
   1d404:	08000513          	li	a0,128
   1d408:	00100593          	li	a1,1
   1d40c:	00000613          	li	a2,0
   1d410:	000c8413          	mv	s0,s9
   1d414:	4ea29c63          	bne	t0,a0,1d90c <_vfiprintf_r+0x8cc>
   1d418:	41390ebb          	subw	t4,s2,s3
   1d41c:	4fd05863          	blez	t4,1d90c <_vfiprintf_r+0x8cc>
   1d420:	01000513          	li	a0,16
   1d424:	3fd55ce3          	ble	t4,a0,1e01c <_vfiprintf_r+0xfdc>
   1d428:	01000f13          	li	t5,16
   1d42c:	00021737          	lui	a4,0x21
   1d430:	3e070d93          	addi	s11,a4,992 # 213e0 <zeroes.4137>
   1d434:	00700f93          	li	t6,7
   1d438:	000f0293          	mv	t0,t5
   1d43c:	0180006f          	j	1d454 <_vfiprintf_r+0x414>
   1d440:	0026051b          	addiw	a0,a2,2
   1d444:	01040413          	addi	s0,s0,16
   1d448:	00058613          	mv	a2,a1
   1d44c:	ff0e8e9b          	addiw	t4,t4,-16
   1d450:	03d2dc63          	ble	t4,t0,1d488 <_vfiprintf_r+0x448>
   1d454:	01078793          	addi	a5,a5,16
   1d458:	0016059b          	addiw	a1,a2,1
   1d45c:	01b43023          	sd	s11,0(s0)
   1d460:	01e43423          	sd	t5,8(s0)
   1d464:	08f13023          	sd	a5,128(sp)
   1d468:	06b12c23          	sw	a1,120(sp)
   1d46c:	fcbfdae3          	ble	a1,t6,1d440 <_vfiprintf_r+0x400>
   1d470:	6a079e63          	bnez	a5,1db2c <_vfiprintf_r+0xaec>
   1d474:	ff0e8e9b          	addiw	t4,t4,-16
   1d478:	00100513          	li	a0,1
   1d47c:	00000613          	li	a2,0
   1d480:	000c8413          	mv	s0,s9
   1d484:	fdd2c8e3          	blt	t0,t4,1d454 <_vfiprintf_r+0x414>
   1d488:	01d787b3          	add	a5,a5,t4
   1d48c:	01b43023          	sd	s11,0(s0)
   1d490:	01d43423          	sd	t4,8(s0)
   1d494:	08f13023          	sd	a5,128(sp)
   1d498:	06a12c23          	sw	a0,120(sp)
   1d49c:	00700613          	li	a2,7
   1d4a0:	0ea646e3          	blt	a2,a0,1dd8c <_vfiprintf_r+0xd4c>
   1d4a4:	414484bb          	subw	s1,s1,s4
   1d4a8:	01040413          	addi	s0,s0,16
   1d4ac:	0015059b          	addiw	a1,a0,1
   1d4b0:	00050613          	mv	a2,a0
   1d4b4:	46904063          	bgtz	s1,1d914 <_vfiprintf_r+0x8d4>
   1d4b8:	00fa07b3          	add	a5,s4,a5
   1d4bc:	01743023          	sd	s7,0(s0)
   1d4c0:	01443423          	sd	s4,8(s0)
   1d4c4:	08f13023          	sd	a5,128(sp)
   1d4c8:	06b12c23          	sw	a1,120(sp)
   1d4cc:	00700713          	li	a4,7
   1d4d0:	4eb75a63          	ble	a1,a4,1d9c4 <_vfiprintf_r+0x984>
   1d4d4:	7a079463          	bnez	a5,1dc7c <_vfiprintf_r+0xc3c>
   1d4d8:	06012c23          	sw	zero,120(sp)
   1d4dc:	00437313          	andi	t1,t1,4
   1d4e0:	00030663          	beqz	t1,1d4ec <_vfiprintf_r+0x4ac>
   1d4e4:	413904bb          	subw	s1,s2,s3
   1d4e8:	229040e3          	bgtz	s1,1df08 <_vfiprintf_r+0xec8>
   1d4ec:	01395463          	ble	s3,s2,1d4f4 <_vfiprintf_r+0x4b4>
   1d4f0:	00098913          	mv	s2,s3
   1d4f4:	05812783          	lw	a5,88(sp)
   1d4f8:	012787bb          	addw	a5,a5,s2
   1d4fc:	04f12c23          	sw	a5,88(sp)
   1d500:	06012c23          	sw	zero,120(sp)
   1d504:	000c8413          	mv	s0,s9
   1d508:	c29ff06f          	j	1d130 <_vfiprintf_r+0xf0>
   1d50c:	00100513          	li	a0,1
   1d510:	02b00e93          	li	t4,43
   1d514:	000b0813          	mv	a6,s6
   1d518:	cb5ff06f          	j	1d1cc <_vfiprintf_r+0x18c>
   1d51c:	08036313          	ori	t1,t1,128
   1d520:	000b0813          	mv	a6,s6
   1d524:	ca9ff06f          	j	1d1cc <_vfiprintf_r+0x18c>
   1d528:	00000913          	li	s2,0
   1d52c:	fd07079b          	addiw	a5,a4,-48
   1d530:	001b0b13          	addi	s6,s6,1
   1d534:	fffb4703          	lbu	a4,-1(s6)
   1d538:	00191f9b          	slliw	t6,s2,0x1
   1d53c:	0039191b          	slliw	s2,s2,0x3
   1d540:	012f893b          	addw	s2,t6,s2
   1d544:	0127893b          	addw	s2,a5,s2
   1d548:	fd07079b          	addiw	a5,a4,-48
   1d54c:	fef5f2e3          	bleu	a5,a1,1d530 <_vfiprintf_r+0x4f0>
   1d550:	c85ff06f          	j	1d1d4 <_vfiprintf_r+0x194>
   1d554:	360518e3          	bnez	a0,1e0c4 <_vfiprintf_r+0x1084>
   1d558:	01036313          	ori	t1,t1,16
   1d55c:	01037793          	andi	a5,t1,16
   1d560:	74078263          	beqz	a5,1dca4 <_vfiprintf_r+0xc64>
   1d564:	00813703          	ld	a4,8(sp)
   1d568:	00073783          	ld	a5,0(a4)
   1d56c:	00870713          	addi	a4,a4,8
   1d570:	00e13423          	sd	a4,8(sp)
   1d574:	0e07c6e3          	bltz	a5,1de60 <_vfiprintf_r+0xe20>
   1d578:	06714583          	lbu	a1,103(sp)
   1d57c:	6e04c063          	bltz	s1,1dc5c <_vfiprintf_r+0xc1c>
   1d580:	f7f37313          	andi	t1,t1,-129
   1d584:	10078c63          	beqz	a5,1d69c <_vfiprintf_r+0x65c>
   1d588:	00900613          	li	a2,9
   1d58c:	000c8b93          	mv	s7,s9
   1d590:	00a00513          	li	a0,10
   1d594:	10f67863          	bleu	a5,a2,1d6a4 <_vfiprintf_r+0x664>
   1d598:	02a7f633          	remu	a2,a5,a0
   1d59c:	fffb8b93          	addi	s7,s7,-1
   1d5a0:	02a7d7b3          	divu	a5,a5,a0
   1d5a4:	0306061b          	addiw	a2,a2,48
   1d5a8:	00cb8023          	sb	a2,0(s7)
   1d5ac:	fe0796e3          	bnez	a5,1d598 <_vfiprintf_r+0x558>
   1d5b0:	417c8a3b          	subw	s4,s9,s7
   1d5b4:	d59ff06f          	j	1d30c <_vfiprintf_r+0x2cc>
   1d5b8:	300512e3          	bnez	a0,1e0bc <_vfiprintf_r+0x107c>
   1d5bc:	01036313          	ori	t1,t1,16
   1d5c0:	01037793          	andi	a5,t1,16
   1d5c4:	6e078e63          	beqz	a5,1dcc0 <_vfiprintf_r+0xc80>
   1d5c8:	00813783          	ld	a5,8(sp)
   1d5cc:	060103a3          	sb	zero,103(sp)
   1d5d0:	00878713          	addi	a4,a5,8
   1d5d4:	0007b783          	ld	a5,0(a5)
   1d5d8:	7004c263          	bltz	s1,1dcdc <_vfiprintf_r+0xc9c>
   1d5dc:	00e13423          	sd	a4,8(sp)
   1d5e0:	f7f37313          	andi	t1,t1,-129
   1d5e4:	70079263          	bnez	a5,1dce8 <_vfiprintf_r+0xca8>
   1d5e8:	00000593          	li	a1,0
   1d5ec:	00000793          	li	a5,0
   1d5f0:	2a0482e3          	beqz	s1,1e094 <_vfiprintf_r+0x1054>
   1d5f4:	000c8b93          	mv	s7,s9
   1d5f8:	0077f613          	andi	a2,a5,7
   1d5fc:	fffb8b93          	addi	s7,s7,-1
   1d600:	0306061b          	addiw	a2,a2,48
   1d604:	00cb8023          	sb	a2,0(s7)
   1d608:	0037d793          	srli	a5,a5,0x3
   1d60c:	fe0796e3          	bnez	a5,1d5f8 <_vfiprintf_r+0x5b8>
   1d610:	00137793          	andi	a5,t1,1
   1d614:	f8078ee3          	beqz	a5,1d5b0 <_vfiprintf_r+0x570>
   1d618:	03000793          	li	a5,48
   1d61c:	f8f60ae3          	beq	a2,a5,1d5b0 <_vfiprintf_r+0x570>
   1d620:	fffb8613          	addi	a2,s7,-1
   1d624:	40cc8a33          	sub	s4,s9,a2
   1d628:	fefb8fa3          	sb	a5,-1(s7)
   1d62c:	000a0a1b          	sext.w	s4,s4
   1d630:	00060b93          	mv	s7,a2
   1d634:	cd9ff06f          	j	1d30c <_vfiprintf_r+0x2cc>
   1d638:	28051ee3          	bnez	a0,1e0d4 <_vfiprintf_r+0x1094>
   1d63c:	01037793          	andi	a5,t1,16
   1d640:	040786e3          	beqz	a5,1de8c <_vfiprintf_r+0xe4c>
   1d644:	00813683          	ld	a3,8(sp)
   1d648:	05812703          	lw	a4,88(sp)
   1d64c:	0006b783          	ld	a5,0(a3)
   1d650:	00868693          	addi	a3,a3,8
   1d654:	00d13423          	sd	a3,8(sp)
   1d658:	00e7b023          	sd	a4,0(a5)
   1d65c:	ad5ff06f          	j	1d130 <_vfiprintf_r+0xf0>
   1d660:	260516e3          	bnez	a0,1e0cc <_vfiprintf_r+0x108c>
   1d664:	01036313          	ori	t1,t1,16
   1d668:	01037793          	andi	a5,t1,16
   1d66c:	5c079a63          	bnez	a5,1dc40 <_vfiprintf_r+0xc00>
   1d670:	04037793          	andi	a5,t1,64
   1d674:	060103a3          	sb	zero,103(sp)
   1d678:	7c078063          	beqz	a5,1de38 <_vfiprintf_r+0xdf8>
   1d67c:	00813783          	ld	a5,8(sp)
   1d680:	00878713          	addi	a4,a5,8
   1d684:	0007d783          	lhu	a5,0(a5)
   1d688:	5c04c663          	bltz	s1,1dc54 <_vfiprintf_r+0xc14>
   1d68c:	00e13423          	sd	a4,8(sp)
   1d690:	f7f37313          	andi	t1,t1,-129
   1d694:	00000593          	li	a1,0
   1d698:	ee0798e3          	bnez	a5,1d588 <_vfiprintf_r+0x548>
   1d69c:	c60482e3          	beqz	s1,1d300 <_vfiprintf_r+0x2c0>
   1d6a0:	00000793          	li	a5,0
   1d6a4:	0307879b          	addiw	a5,a5,48
   1d6a8:	0af107a3          	sb	a5,175(sp)
   1d6ac:	05c12a03          	lw	s4,92(sp)
   1d6b0:	0af10b93          	addi	s7,sp,175
   1d6b4:	c59ff06f          	j	1d30c <_vfiprintf_r+0x2cc>
   1d6b8:	b40e98e3          	bnez	t4,1d208 <_vfiprintf_r+0x1c8>
   1d6bc:	00100513          	li	a0,1
   1d6c0:	02000e93          	li	t4,32
   1d6c4:	000b0813          	mv	a6,s6
   1d6c8:	b05ff06f          	j	1d1cc <_vfiprintf_r+0x18c>
   1d6cc:	00136313          	ori	t1,t1,1
   1d6d0:	000b0813          	mv	a6,s6
   1d6d4:	af9ff06f          	j	1d1cc <_vfiprintf_r+0x18c>
   1d6d8:	00813783          	ld	a5,8(sp)
   1d6dc:	060103a3          	sb	zero,103(sp)
   1d6e0:	0007bb83          	ld	s7,0(a5)
   1d6e4:	00878d93          	addi	s11,a5,8
   1d6e8:	0e0b84e3          	beqz	s7,1dfd0 <_vfiprintf_r+0xf90>
   1d6ec:	0404cee3          	bltz	s1,1df48 <_vfiprintf_r+0xf08>
   1d6f0:	00048613          	mv	a2,s1
   1d6f4:	00000593          	li	a1,0
   1d6f8:	000b8513          	mv	a0,s7
   1d6fc:	00613423          	sd	t1,8(sp)
   1d700:	ac0fa0ef          	jal	179c0 <memchr>
   1d704:	00813303          	ld	t1,8(sp)
   1d708:	120502e3          	beqz	a0,1e02c <_vfiprintf_r+0xfec>
   1d70c:	41750a3b          	subw	s4,a0,s7
   1d710:	06714583          	lbu	a1,103(sp)
   1d714:	01b13423          	sd	s11,8(sp)
   1d718:	00000493          	li	s1,0
   1d71c:	bf1ff06f          	j	1d30c <_vfiprintf_r+0x2cc>
   1d720:	f40504e3          	beqz	a0,1d668 <_vfiprintf_r+0x628>
   1d724:	07d103a3          	sb	t4,103(sp)
   1d728:	f41ff06f          	j	1d668 <_vfiprintf_r+0x628>
   1d72c:	00813703          	ld	a4,8(sp)
   1d730:	00100993          	li	s3,1
   1d734:	060103a3          	sb	zero,103(sp)
   1d738:	00072783          	lw	a5,0(a4)
   1d73c:	00098a13          	mv	s4,s3
   1d740:	08810b93          	addi	s7,sp,136
   1d744:	08f10423          	sb	a5,136(sp)
   1d748:	00870793          	addi	a5,a4,8
   1d74c:	00f13423          	sd	a5,8(sp)
   1d750:	00000493          	li	s1,0
   1d754:	bcdff06f          	j	1d320 <_vfiprintf_r+0x2e0>
   1d758:	e00502e3          	beqz	a0,1d55c <_vfiprintf_r+0x51c>
   1d75c:	07d103a3          	sb	t4,103(sp)
   1d760:	dfdff06f          	j	1d55c <_vfiprintf_r+0x51c>
   1d764:	120510e3          	bnez	a0,1e084 <_vfiprintf_r+0x1044>
   1d768:	000227b7          	lui	a5,0x22
   1d76c:	cf878793          	addi	a5,a5,-776 # 21cf8 <zeroes.4123+0x690>
   1d770:	00f13c23          	sd	a5,24(sp)
   1d774:	01037793          	andi	a5,t1,16
   1d778:	06078063          	beqz	a5,1d7d8 <_vfiprintf_r+0x798>
   1d77c:	00813683          	ld	a3,8(sp)
   1d780:	0006b783          	ld	a5,0(a3)
   1d784:	00868693          	addi	a3,a3,8
   1d788:	00d13423          	sd	a3,8(sp)
   1d78c:	00137613          	andi	a2,t1,1
   1d790:	46060863          	beqz	a2,1dc00 <_vfiprintf_r+0xbc0>
   1d794:	66079063          	bnez	a5,1ddf4 <_vfiprintf_r+0xdb4>
   1d798:	060103a3          	sb	zero,103(sp)
   1d79c:	6404c663          	bltz	s1,1dde8 <_vfiprintf_r+0xda8>
   1d7a0:	f7f37313          	andi	t1,t1,-129
   1d7a4:	b55ff06f          	j	1d2f8 <_vfiprintf_r+0x2b8>
   1d7a8:	e0050ce3          	beqz	a0,1d5c0 <_vfiprintf_r+0x580>
   1d7ac:	07d103a3          	sb	t4,103(sp)
   1d7b0:	e11ff06f          	j	1d5c0 <_vfiprintf_r+0x580>
   1d7b4:	04036313          	ori	t1,t1,64
   1d7b8:	000b0813          	mv	a6,s6
   1d7bc:	a11ff06f          	j	1d1cc <_vfiprintf_r+0x18c>
   1d7c0:	0a051ee3          	bnez	a0,1e07c <_vfiprintf_r+0x103c>
   1d7c4:	000227b7          	lui	a5,0x22
   1d7c8:	d1078793          	addi	a5,a5,-752 # 21d10 <zeroes.4123+0x6a8>
   1d7cc:	00f13c23          	sd	a5,24(sp)
   1d7d0:	01037793          	andi	a5,t1,16
   1d7d4:	fa0794e3          	bnez	a5,1d77c <_vfiprintf_r+0x73c>
   1d7d8:	04037793          	andi	a5,t1,64
   1d7dc:	00813683          	ld	a3,8(sp)
   1d7e0:	68078e63          	beqz	a5,1de7c <_vfiprintf_r+0xe3c>
   1d7e4:	0006d783          	lhu	a5,0(a3)
   1d7e8:	00868693          	addi	a3,a3,8
   1d7ec:	00d13423          	sd	a3,8(sp)
   1d7f0:	f9dff06f          	j	1d78c <_vfiprintf_r+0x74c>
   1d7f4:	000b4703          	lbu	a4,0(s6)
   1d7f8:	001b0813          	addi	a6,s6,1
   1d7fc:	05e70ee3          	beq	a4,t5,1e058 <_vfiprintf_r+0x1018>
   1d800:	fd07079b          	addiw	a5,a4,-48
   1d804:	00000493          	li	s1,0
   1d808:	00080b13          	mv	s6,a6
   1d80c:	9cf5e4e3          	bltu	a1,a5,1d1d4 <_vfiprintf_r+0x194>
   1d810:	001b0b13          	addi	s6,s6,1
   1d814:	fffb4703          	lbu	a4,-1(s6)
   1d818:	00149f9b          	slliw	t6,s1,0x1
   1d81c:	0034949b          	slliw	s1,s1,0x3
   1d820:	009f84bb          	addw	s1,t6,s1
   1d824:	00f484bb          	addw	s1,s1,a5
   1d828:	fd07079b          	addiw	a5,a4,-48
   1d82c:	fef5f2e3          	bleu	a5,a1,1d810 <_vfiprintf_r+0x7d0>
   1d830:	9a04d2e3          	bgez	s1,1d1d4 <_vfiprintf_r+0x194>
   1d834:	fff00493          	li	s1,-1
   1d838:	99dff06f          	j	1d1d4 <_vfiprintf_r+0x194>
   1d83c:	040518e3          	bnez	a0,1e08c <_vfiprintf_r+0x104c>
   1d840:	6e070663          	beqz	a4,1df2c <_vfiprintf_r+0xeec>
   1d844:	00100993          	li	s3,1
   1d848:	08e10423          	sb	a4,136(sp)
   1d84c:	060103a3          	sb	zero,103(sp)
   1d850:	00098a13          	mv	s4,s3
   1d854:	08810b93          	addi	s7,sp,136
   1d858:	00000493          	li	s1,0
   1d85c:	ac5ff06f          	j	1d320 <_vfiprintf_r+0x2e0>
   1d860:	07010613          	addi	a2,sp,112
   1d864:	000d0593          	mv	a1,s10
   1d868:	000a8513          	mv	a0,s5
   1d86c:	05f13423          	sd	t6,72(sp)
   1d870:	05e13023          	sd	t5,64(sp)
   1d874:	03d13c23          	sd	t4,56(sp)
   1d878:	02513823          	sd	t0,48(sp)
   1d87c:	02713423          	sd	t2,40(sp)
   1d880:	02613023          	sd	t1,32(sp)
   1d884:	eb8ff0ef          	jal	1cf3c <__sprint_r.part.0>
   1d888:	22051063          	bnez	a0,1daa8 <_vfiprintf_r+0xa68>
   1d88c:	07812503          	lw	a0,120(sp)
   1d890:	08013783          	ld	a5,128(sp)
   1d894:	000c8413          	mv	s0,s9
   1d898:	0015061b          	addiw	a2,a0,1
   1d89c:	04813f83          	ld	t6,72(sp)
   1d8a0:	04013f03          	ld	t5,64(sp)
   1d8a4:	03813e83          	ld	t4,56(sp)
   1d8a8:	03013283          	ld	t0,48(sp)
   1d8ac:	02813383          	ld	t2,40(sp)
   1d8b0:	02013303          	ld	t1,32(sp)
   1d8b4:	ab9ff06f          	j	1d36c <_vfiprintf_r+0x32c>
   1d8b8:	07812603          	lw	a2,120(sp)
   1d8bc:	08013783          	ld	a5,128(sp)
   1d8c0:	0016059b          	addiw	a1,a2,1
   1d8c4:	06714503          	lbu	a0,103(sp)
   1d8c8:	b00508e3          	beqz	a0,1d3d8 <_vfiprintf_r+0x398>
   1d8cc:	00100513          	li	a0,1
   1d8d0:	06710613          	addi	a2,sp,103
   1d8d4:	00a787b3          	add	a5,a5,a0
   1d8d8:	00c43023          	sd	a2,0(s0)
   1d8dc:	00a43423          	sd	a0,8(s0)
   1d8e0:	08f13023          	sd	a5,128(sp)
   1d8e4:	06b12c23          	sw	a1,120(sp)
   1d8e8:	00700613          	li	a2,7
   1d8ec:	2ab65a63          	ble	a1,a2,1dba0 <_vfiprintf_r+0xb60>
   1d8f0:	44079e63          	bnez	a5,1dd4c <_vfiprintf_r+0xd0c>
   1d8f4:	2c039063          	bnez	t2,1dbb4 <_vfiprintf_r+0xb74>
   1d8f8:	00000613          	li	a2,0
   1d8fc:	00050593          	mv	a1,a0
   1d900:	000c8413          	mv	s0,s9
   1d904:	08000513          	li	a0,128
   1d908:	b0a288e3          	beq	t0,a0,1d418 <_vfiprintf_r+0x3d8>
   1d90c:	414484bb          	subw	s1,s1,s4
   1d910:	ba9054e3          	blez	s1,1d4b8 <_vfiprintf_r+0x478>
   1d914:	00021737          	lui	a4,0x21
   1d918:	01000513          	li	a0,16
   1d91c:	3e070d93          	addi	s11,a4,992 # 213e0 <zeroes.4137>
   1d920:	06955263          	ble	s1,a0,1d984 <_vfiprintf_r+0x944>
   1d924:	01000e93          	li	t4,16
   1d928:	00021737          	lui	a4,0x21
   1d92c:	3e070d93          	addi	s11,a4,992 # 213e0 <zeroes.4137>
   1d930:	00700f13          	li	t5,7
   1d934:	000e8f93          	mv	t6,t4
   1d938:	0180006f          	j	1d950 <_vfiprintf_r+0x910>
   1d93c:	0026059b          	addiw	a1,a2,2
   1d940:	01040413          	addi	s0,s0,16
   1d944:	00050613          	mv	a2,a0
   1d948:	ff04849b          	addiw	s1,s1,-16
   1d94c:	029fdc63          	ble	s1,t6,1d984 <_vfiprintf_r+0x944>
   1d950:	01078793          	addi	a5,a5,16
   1d954:	0016051b          	addiw	a0,a2,1
   1d958:	01b43023          	sd	s11,0(s0)
   1d95c:	01d43423          	sd	t4,8(s0)
   1d960:	08f13023          	sd	a5,128(sp)
   1d964:	06a12c23          	sw	a0,120(sp)
   1d968:	fcaf5ae3          	ble	a0,t5,1d93c <_vfiprintf_r+0x8fc>
   1d96c:	14079863          	bnez	a5,1dabc <_vfiprintf_r+0xa7c>
   1d970:	ff04849b          	addiw	s1,s1,-16
   1d974:	00100593          	li	a1,1
   1d978:	00000613          	li	a2,0
   1d97c:	000c8413          	mv	s0,s9
   1d980:	fc9fc8e3          	blt	t6,s1,1d950 <_vfiprintf_r+0x910>
   1d984:	009787b3          	add	a5,a5,s1
   1d988:	01b43023          	sd	s11,0(s0)
   1d98c:	00943423          	sd	s1,8(s0)
   1d990:	08f13023          	sd	a5,128(sp)
   1d994:	06b12c23          	sw	a1,120(sp)
   1d998:	00700613          	li	a2,7
   1d99c:	24b64063          	blt	a2,a1,1dbdc <_vfiprintf_r+0xb9c>
   1d9a0:	01040413          	addi	s0,s0,16
   1d9a4:	0015859b          	addiw	a1,a1,1
   1d9a8:	00fa07b3          	add	a5,s4,a5
   1d9ac:	01743023          	sd	s7,0(s0)
   1d9b0:	01443423          	sd	s4,8(s0)
   1d9b4:	08f13023          	sd	a5,128(sp)
   1d9b8:	06b12c23          	sw	a1,120(sp)
   1d9bc:	00700713          	li	a4,7
   1d9c0:	b0b74ae3          	blt	a4,a1,1d4d4 <_vfiprintf_r+0x494>
   1d9c4:	01040413          	addi	s0,s0,16
   1d9c8:	00437313          	andi	t1,t1,4
   1d9cc:	0a030863          	beqz	t1,1da7c <_vfiprintf_r+0xa3c>
   1d9d0:	413904bb          	subw	s1,s2,s3
   1d9d4:	0a905463          	blez	s1,1da7c <_vfiprintf_r+0xa3c>
   1d9d8:	01000713          	li	a4,16
   1d9dc:	62975863          	ble	s1,a4,1e00c <_vfiprintf_r+0xfcc>
   1d9e0:	01000a13          	li	s4,16
   1d9e4:	07812603          	lw	a2,120(sp)
   1d9e8:	05813823          	sd	s8,80(sp)
   1d9ec:	00700d93          	li	s11,7
   1d9f0:	000a0b93          	mv	s7,s4
   1d9f4:	0180006f          	j	1da0c <_vfiprintf_r+0x9cc>
   1d9f8:	0026059b          	addiw	a1,a2,2
   1d9fc:	01040413          	addi	s0,s0,16
   1da00:	00070613          	mv	a2,a4
   1da04:	ff04849b          	addiw	s1,s1,-16
   1da08:	029bdc63          	ble	s1,s7,1da40 <_vfiprintf_r+0xa00>
   1da0c:	01078793          	addi	a5,a5,16
   1da10:	0016071b          	addiw	a4,a2,1
   1da14:	01843023          	sd	s8,0(s0)
   1da18:	01443423          	sd	s4,8(s0)
   1da1c:	08f13023          	sd	a5,128(sp)
   1da20:	06e12c23          	sw	a4,120(sp)
   1da24:	fceddae3          	ble	a4,s11,1d9f8 <_vfiprintf_r+0x9b8>
   1da28:	0c079e63          	bnez	a5,1db04 <_vfiprintf_r+0xac4>
   1da2c:	ff04849b          	addiw	s1,s1,-16
   1da30:	00100593          	li	a1,1
   1da34:	00000613          	li	a2,0
   1da38:	000c8413          	mv	s0,s9
   1da3c:	fc9bc8e3          	blt	s7,s1,1da0c <_vfiprintf_r+0x9cc>
   1da40:	05013703          	ld	a4,80(sp)
   1da44:	009787b3          	add	a5,a5,s1
   1da48:	00943423          	sd	s1,8(s0)
   1da4c:	00e43023          	sd	a4,0(s0)
   1da50:	08f13023          	sd	a5,128(sp)
   1da54:	06b12c23          	sw	a1,120(sp)
   1da58:	00700713          	li	a4,7
   1da5c:	02b75063          	ble	a1,a4,1da7c <_vfiprintf_r+0xa3c>
   1da60:	a80786e3          	beqz	a5,1d4ec <_vfiprintf_r+0x4ac>
   1da64:	07010613          	addi	a2,sp,112
   1da68:	000d0593          	mv	a1,s10
   1da6c:	000a8513          	mv	a0,s5
   1da70:	cccff0ef          	jal	1cf3c <__sprint_r.part.0>
   1da74:	02051a63          	bnez	a0,1daa8 <_vfiprintf_r+0xa68>
   1da78:	08013783          	ld	a5,128(sp)
   1da7c:	01395463          	ble	s3,s2,1da84 <_vfiprintf_r+0xa44>
   1da80:	00098913          	mv	s2,s3
   1da84:	05812703          	lw	a4,88(sp)
   1da88:	0127073b          	addw	a4,a4,s2
   1da8c:	04e12c23          	sw	a4,88(sp)
   1da90:	a60788e3          	beqz	a5,1d500 <_vfiprintf_r+0x4c0>
   1da94:	07010613          	addi	a2,sp,112
   1da98:	000d0593          	mv	a1,s10
   1da9c:	000a8513          	mv	a0,s5
   1daa0:	c9cff0ef          	jal	1cf3c <__sprint_r.part.0>
   1daa4:	a4050ee3          	beqz	a0,1d500 <_vfiprintf_r+0x4c0>
   1daa8:	010d5783          	lhu	a5,16(s10)
   1daac:	0407f793          	andi	a5,a5,64
   1dab0:	44079863          	bnez	a5,1df00 <_vfiprintf_r+0xec0>
   1dab4:	05812503          	lw	a0,88(sp)
   1dab8:	f94ff06f          	j	1d24c <_vfiprintf_r+0x20c>
   1dabc:	07010613          	addi	a2,sp,112
   1dac0:	000d0593          	mv	a1,s10
   1dac4:	000a8513          	mv	a0,s5
   1dac8:	03f13c23          	sd	t6,56(sp)
   1dacc:	03e13823          	sd	t5,48(sp)
   1dad0:	03d13423          	sd	t4,40(sp)
   1dad4:	02613023          	sd	t1,32(sp)
   1dad8:	c64ff0ef          	jal	1cf3c <__sprint_r.part.0>
   1dadc:	fc0516e3          	bnez	a0,1daa8 <_vfiprintf_r+0xa68>
   1dae0:	07812603          	lw	a2,120(sp)
   1dae4:	08013783          	ld	a5,128(sp)
   1dae8:	000c8413          	mv	s0,s9
   1daec:	0016059b          	addiw	a1,a2,1
   1daf0:	03813f83          	ld	t6,56(sp)
   1daf4:	03013f03          	ld	t5,48(sp)
   1daf8:	02813e83          	ld	t4,40(sp)
   1dafc:	02013303          	ld	t1,32(sp)
   1db00:	e49ff06f          	j	1d948 <_vfiprintf_r+0x908>
   1db04:	07010613          	addi	a2,sp,112
   1db08:	000d0593          	mv	a1,s10
   1db0c:	000a8513          	mv	a0,s5
   1db10:	c2cff0ef          	jal	1cf3c <__sprint_r.part.0>
   1db14:	f8051ae3          	bnez	a0,1daa8 <_vfiprintf_r+0xa68>
   1db18:	07812603          	lw	a2,120(sp)
   1db1c:	08013783          	ld	a5,128(sp)
   1db20:	000c8413          	mv	s0,s9
   1db24:	0016059b          	addiw	a1,a2,1
   1db28:	eddff06f          	j	1da04 <_vfiprintf_r+0x9c4>
   1db2c:	07010613          	addi	a2,sp,112
   1db30:	000d0593          	mv	a1,s10
   1db34:	000a8513          	mv	a0,s5
   1db38:	04513023          	sd	t0,64(sp)
   1db3c:	03f13c23          	sd	t6,56(sp)
   1db40:	03e13823          	sd	t5,48(sp)
   1db44:	03d13423          	sd	t4,40(sp)
   1db48:	02613023          	sd	t1,32(sp)
   1db4c:	bf0ff0ef          	jal	1cf3c <__sprint_r.part.0>
   1db50:	f4051ce3          	bnez	a0,1daa8 <_vfiprintf_r+0xa68>
   1db54:	07812603          	lw	a2,120(sp)
   1db58:	08013783          	ld	a5,128(sp)
   1db5c:	000c8413          	mv	s0,s9
   1db60:	0016051b          	addiw	a0,a2,1
   1db64:	04013283          	ld	t0,64(sp)
   1db68:	03813f83          	ld	t6,56(sp)
   1db6c:	03013f03          	ld	t5,48(sp)
   1db70:	02813e83          	ld	t4,40(sp)
   1db74:	02013303          	ld	t1,32(sp)
   1db78:	8d5ff06f          	j	1d44c <_vfiprintf_r+0x40c>
   1db7c:	34079263          	bnez	a5,1dec0 <_vfiprintf_r+0xe80>
   1db80:	06714603          	lbu	a2,103(sp)
   1db84:	02060663          	beqz	a2,1dbb0 <_vfiprintf_r+0xb70>
   1db88:	00100793          	li	a5,1
   1db8c:	06710613          	addi	a2,sp,103
   1db90:	0ac13823          	sd	a2,176(sp)
   1db94:	0af13c23          	sd	a5,184(sp)
   1db98:	00078593          	mv	a1,a5
   1db9c:	000c8413          	mv	s0,s9
   1dba0:	00058613          	mv	a2,a1
   1dba4:	01040413          	addi	s0,s0,16
   1dba8:	0015859b          	addiw	a1,a1,1
   1dbac:	82dff06f          	j	1d3d8 <_vfiprintf_r+0x398>
   1dbb0:	36038063          	beqz	t2,1df10 <_vfiprintf_r+0xed0>
   1dbb4:	00200793          	li	a5,2
   1dbb8:	06810613          	addi	a2,sp,104
   1dbbc:	0ac13823          	sd	a2,176(sp)
   1dbc0:	0af13c23          	sd	a5,184(sp)
   1dbc4:	00100593          	li	a1,1
   1dbc8:	000c8413          	mv	s0,s9
   1dbcc:	00058613          	mv	a2,a1
   1dbd0:	01040413          	addi	s0,s0,16
   1dbd4:	0015859b          	addiw	a1,a1,1
   1dbd8:	d2dff06f          	j	1d904 <_vfiprintf_r+0x8c4>
   1dbdc:	1c079263          	bnez	a5,1dda0 <_vfiprintf_r+0xd60>
   1dbe0:	00100713          	li	a4,1
   1dbe4:	000a0793          	mv	a5,s4
   1dbe8:	0b713823          	sd	s7,176(sp)
   1dbec:	0b413c23          	sd	s4,184(sp)
   1dbf0:	09413023          	sd	s4,128(sp)
   1dbf4:	06e12c23          	sw	a4,120(sp)
   1dbf8:	000c8413          	mv	s0,s9
   1dbfc:	dc9ff06f          	j	1d9c4 <_vfiprintf_r+0x984>
   1dc00:	060103a3          	sb	zero,103(sp)
   1dc04:	1e04c063          	bltz	s1,1dde4 <_vfiprintf_r+0xda4>
   1dc08:	f7f37313          	andi	t1,t1,-129
   1dc0c:	ee078663          	beqz	a5,1d2f8 <_vfiprintf_r+0x2b8>
   1dc10:	00000593          	li	a1,0
   1dc14:	000c8b93          	mv	s7,s9
   1dc18:	01813703          	ld	a4,24(sp)
   1dc1c:	00f7f613          	andi	a2,a5,15
   1dc20:	fffb8b93          	addi	s7,s7,-1
   1dc24:	00c70633          	add	a2,a4,a2
   1dc28:	00064603          	lbu	a2,0(a2)
   1dc2c:	0047d793          	srli	a5,a5,0x4
   1dc30:	00cb8023          	sb	a2,0(s7)
   1dc34:	fe0792e3          	bnez	a5,1dc18 <_vfiprintf_r+0xbd8>
   1dc38:	417c8a3b          	subw	s4,s9,s7
   1dc3c:	ed0ff06f          	j	1d30c <_vfiprintf_r+0x2cc>
   1dc40:	00813783          	ld	a5,8(sp)
   1dc44:	060103a3          	sb	zero,103(sp)
   1dc48:	00878713          	addi	a4,a5,8
   1dc4c:	0007b783          	ld	a5,0(a5)
   1dc50:	a204dee3          	bgez	s1,1d68c <_vfiprintf_r+0x64c>
   1dc54:	00e13423          	sd	a4,8(sp)
   1dc58:	00000593          	li	a1,0
   1dc5c:	920796e3          	bnez	a5,1d588 <_vfiprintf_r+0x548>
   1dc60:	00100793          	li	a5,1
   1dc64:	00100713          	li	a4,1
   1dc68:	a2e78ce3          	beq	a5,a4,1d6a0 <_vfiprintf_r+0x660>
   1dc6c:	00200713          	li	a4,2
   1dc70:	08e78e63          	beq	a5,a4,1dd0c <_vfiprintf_r+0xccc>
   1dc74:	00000793          	li	a5,0
   1dc78:	97dff06f          	j	1d5f4 <_vfiprintf_r+0x5b4>
   1dc7c:	07010613          	addi	a2,sp,112
   1dc80:	000d0593          	mv	a1,s10
   1dc84:	000a8513          	mv	a0,s5
   1dc88:	02613023          	sd	t1,32(sp)
   1dc8c:	ab0ff0ef          	jal	1cf3c <__sprint_r.part.0>
   1dc90:	e0051ce3          	bnez	a0,1daa8 <_vfiprintf_r+0xa68>
   1dc94:	08013783          	ld	a5,128(sp)
   1dc98:	000c8413          	mv	s0,s9
   1dc9c:	02013303          	ld	t1,32(sp)
   1dca0:	d29ff06f          	j	1d9c8 <_vfiprintf_r+0x988>
   1dca4:	04037793          	andi	a5,t1,64
   1dca8:	00813703          	ld	a4,8(sp)
   1dcac:	20078263          	beqz	a5,1deb0 <_vfiprintf_r+0xe70>
   1dcb0:	00071783          	lh	a5,0(a4)
   1dcb4:	00870713          	addi	a4,a4,8
   1dcb8:	00e13423          	sd	a4,8(sp)
   1dcbc:	8b9ff06f          	j	1d574 <_vfiprintf_r+0x534>
   1dcc0:	04037793          	andi	a5,t1,64
   1dcc4:	060103a3          	sb	zero,103(sp)
   1dcc8:	18078263          	beqz	a5,1de4c <_vfiprintf_r+0xe0c>
   1dccc:	00813783          	ld	a5,8(sp)
   1dcd0:	00878713          	addi	a4,a5,8
   1dcd4:	0007d783          	lhu	a5,0(a5)
   1dcd8:	9004d2e3          	bgez	s1,1d5dc <_vfiprintf_r+0x59c>
   1dcdc:	00e13423          	sd	a4,8(sp)
   1dce0:	00000593          	li	a1,0
   1dce4:	f80780e3          	beqz	a5,1dc64 <_vfiprintf_r+0xc24>
   1dce8:	00000593          	li	a1,0
   1dcec:	909ff06f          	j	1d5f4 <_vfiprintf_r+0x5b4>
   1dcf0:	07010613          	addi	a2,sp,112
   1dcf4:	000d0593          	mv	a1,s10
   1dcf8:	000a8513          	mv	a0,s5
   1dcfc:	a40ff0ef          	jal	1cf3c <__sprint_r.part.0>
   1dd00:	da0514e3          	bnez	a0,1daa8 <_vfiprintf_r+0xa68>
   1dd04:	000c8413          	mv	s0,s9
   1dd08:	c88ff06f          	j	1d190 <_vfiprintf_r+0x150>
   1dd0c:	00000793          	li	a5,0
   1dd10:	f05ff06f          	j	1dc14 <_vfiprintf_r+0xbd4>
   1dd14:	07010613          	addi	a2,sp,112
   1dd18:	000d0593          	mv	a1,s10
   1dd1c:	000a8513          	mv	a0,s5
   1dd20:	02513423          	sd	t0,40(sp)
   1dd24:	02613023          	sd	t1,32(sp)
   1dd28:	a14ff0ef          	jal	1cf3c <__sprint_r.part.0>
   1dd2c:	d6051ee3          	bnez	a0,1daa8 <_vfiprintf_r+0xa68>
   1dd30:	07812603          	lw	a2,120(sp)
   1dd34:	08013783          	ld	a5,128(sp)
   1dd38:	000c8413          	mv	s0,s9
   1dd3c:	0016059b          	addiw	a1,a2,1
   1dd40:	02813283          	ld	t0,40(sp)
   1dd44:	02013303          	ld	t1,32(sp)
   1dd48:	bbdff06f          	j	1d904 <_vfiprintf_r+0x8c4>
   1dd4c:	07010613          	addi	a2,sp,112
   1dd50:	000d0593          	mv	a1,s10
   1dd54:	000a8513          	mv	a0,s5
   1dd58:	02513823          	sd	t0,48(sp)
   1dd5c:	02713423          	sd	t2,40(sp)
   1dd60:	02613023          	sd	t1,32(sp)
   1dd64:	9d8ff0ef          	jal	1cf3c <__sprint_r.part.0>
   1dd68:	d40510e3          	bnez	a0,1daa8 <_vfiprintf_r+0xa68>
   1dd6c:	07812603          	lw	a2,120(sp)
   1dd70:	08013783          	ld	a5,128(sp)
   1dd74:	000c8413          	mv	s0,s9
   1dd78:	0016059b          	addiw	a1,a2,1
   1dd7c:	03013283          	ld	t0,48(sp)
   1dd80:	02813383          	ld	t2,40(sp)
   1dd84:	02013303          	ld	t1,32(sp)
   1dd88:	e50ff06f          	j	1d3d8 <_vfiprintf_r+0x398>
   1dd8c:	1e079063          	bnez	a5,1df6c <_vfiprintf_r+0xf2c>
   1dd90:	00100593          	li	a1,1
   1dd94:	00000613          	li	a2,0
   1dd98:	000c8413          	mv	s0,s9
   1dd9c:	b71ff06f          	j	1d90c <_vfiprintf_r+0x8cc>
   1dda0:	07010613          	addi	a2,sp,112
   1dda4:	000d0593          	mv	a1,s10
   1dda8:	000a8513          	mv	a0,s5
   1ddac:	02613023          	sd	t1,32(sp)
   1ddb0:	98cff0ef          	jal	1cf3c <__sprint_r.part.0>
   1ddb4:	ce051ae3          	bnez	a0,1daa8 <_vfiprintf_r+0xa68>
   1ddb8:	07812583          	lw	a1,120(sp)
   1ddbc:	08013783          	ld	a5,128(sp)
   1ddc0:	000c8413          	mv	s0,s9
   1ddc4:	0015859b          	addiw	a1,a1,1
   1ddc8:	02013303          	ld	t1,32(sp)
   1ddcc:	eecff06f          	j	1d4b8 <_vfiprintf_r+0x478>
   1ddd0:	00e13423          	sd	a4,8(sp)
   1ddd4:	00022737          	lui	a4,0x22
   1ddd8:	d1070713          	addi	a4,a4,-752 # 21d10 <zeroes.4123+0x6a8>
   1dddc:	00060313          	mv	t1,a2
   1dde0:	00e13c23          	sd	a4,24(sp)
   1dde4:	e20796e3          	bnez	a5,1dc10 <_vfiprintf_r+0xbd0>
   1dde8:	00000593          	li	a1,0
   1ddec:	00200793          	li	a5,2
   1ddf0:	e75ff06f          	j	1dc64 <_vfiprintf_r+0xc24>
   1ddf4:	03000613          	li	a2,48
   1ddf8:	06e104a3          	sb	a4,105(sp)
   1ddfc:	06c10423          	sb	a2,104(sp)
   1de00:	060103a3          	sb	zero,103(sp)
   1de04:	00236713          	ori	a4,t1,2
   1de08:	1a04c463          	bltz	s1,1dfb0 <_vfiprintf_r+0xf70>
   1de0c:	f7f37313          	andi	t1,t1,-129
   1de10:	00236313          	ori	t1,t1,2
   1de14:	00000593          	li	a1,0
   1de18:	dfdff06f          	j	1dc14 <_vfiprintf_r+0xbd4>
   1de1c:	00022737          	lui	a4,0x22
   1de20:	d1070713          	addi	a4,a4,-752 # 21d10 <zeroes.4123+0x6a8>
   1de24:	00000593          	li	a1,0
   1de28:	00e13c23          	sd	a4,24(sp)
   1de2c:	de9ff06f          	j	1dc14 <_vfiprintf_r+0xbd4>
   1de30:	000b0493          	mv	s1,s6
   1de34:	b68ff06f          	j	1d19c <_vfiprintf_r+0x15c>
   1de38:	00813783          	ld	a5,8(sp)
   1de3c:	00878713          	addi	a4,a5,8
   1de40:	0007e783          	lwu	a5,0(a5)
   1de44:	8404d4e3          	bgez	s1,1d68c <_vfiprintf_r+0x64c>
   1de48:	e0dff06f          	j	1dc54 <_vfiprintf_r+0xc14>
   1de4c:	00813783          	ld	a5,8(sp)
   1de50:	00878713          	addi	a4,a5,8
   1de54:	0007e783          	lwu	a5,0(a5)
   1de58:	f804d263          	bgez	s1,1d5dc <_vfiprintf_r+0x59c>
   1de5c:	e81ff06f          	j	1dcdc <_vfiprintf_r+0xc9c>
   1de60:	02d00713          	li	a4,45
   1de64:	06e103a3          	sb	a4,103(sp)
   1de68:	40f007b3          	neg	a5,a5
   1de6c:	1804c863          	bltz	s1,1dffc <_vfiprintf_r+0xfbc>
   1de70:	f7f37313          	andi	t1,t1,-129
   1de74:	02d00593          	li	a1,45
   1de78:	f10ff06f          	j	1d588 <_vfiprintf_r+0x548>
   1de7c:	0006e783          	lwu	a5,0(a3)
   1de80:	00868693          	addi	a3,a3,8
   1de84:	00d13423          	sd	a3,8(sp)
   1de88:	905ff06f          	j	1d78c <_vfiprintf_r+0x74c>
   1de8c:	00813703          	ld	a4,8(sp)
   1de90:	04037313          	andi	t1,t1,64
   1de94:	00073783          	ld	a5,0(a4)
   1de98:	00870713          	addi	a4,a4,8
   1de9c:	00e13423          	sd	a4,8(sp)
   1dea0:	08030063          	beqz	t1,1df20 <_vfiprintf_r+0xee0>
   1dea4:	05815703          	lhu	a4,88(sp)
   1dea8:	00e79023          	sh	a4,0(a5)
   1deac:	a84ff06f          	j	1d130 <_vfiprintf_r+0xf0>
   1deb0:	00072783          	lw	a5,0(a4)
   1deb4:	00870713          	addi	a4,a4,8
   1deb8:	00e13423          	sd	a4,8(sp)
   1debc:	eb8ff06f          	j	1d574 <_vfiprintf_r+0x534>
   1dec0:	07010613          	addi	a2,sp,112
   1dec4:	000d0593          	mv	a1,s10
   1dec8:	000a8513          	mv	a0,s5
   1decc:	02513823          	sd	t0,48(sp)
   1ded0:	02713423          	sd	t2,40(sp)
   1ded4:	02613023          	sd	t1,32(sp)
   1ded8:	864ff0ef          	jal	1cf3c <__sprint_r.part.0>
   1dedc:	bc0516e3          	bnez	a0,1daa8 <_vfiprintf_r+0xa68>
   1dee0:	07812603          	lw	a2,120(sp)
   1dee4:	08013783          	ld	a5,128(sp)
   1dee8:	000c8413          	mv	s0,s9
   1deec:	0016059b          	addiw	a1,a2,1
   1def0:	03013283          	ld	t0,48(sp)
   1def4:	02813383          	ld	t2,40(sp)
   1def8:	02013303          	ld	t1,32(sp)
   1defc:	9c9ff06f          	j	1d8c4 <_vfiprintf_r+0x884>
   1df00:	fff00513          	li	a0,-1
   1df04:	b48ff06f          	j	1d24c <_vfiprintf_r+0x20c>
   1df08:	000c8413          	mv	s0,s9
   1df0c:	acdff06f          	j	1d9d8 <_vfiprintf_r+0x998>
   1df10:	00000613          	li	a2,0
   1df14:	00100593          	li	a1,1
   1df18:	000c8413          	mv	s0,s9
   1df1c:	9e9ff06f          	j	1d904 <_vfiprintf_r+0x8c4>
   1df20:	05812703          	lw	a4,88(sp)
   1df24:	00e7a023          	sw	a4,0(a5)
   1df28:	a08ff06f          	j	1d130 <_vfiprintf_r+0xf0>
   1df2c:	08013783          	ld	a5,128(sp)
   1df30:	b6078ce3          	beqz	a5,1daa8 <_vfiprintf_r+0xa68>
   1df34:	07010613          	addi	a2,sp,112
   1df38:	000d0593          	mv	a1,s10
   1df3c:	000a8513          	mv	a0,s5
   1df40:	ffdfe0ef          	jal	1cf3c <__sprint_r.part.0>
   1df44:	b65ff06f          	j	1daa8 <_vfiprintf_r+0xa68>
   1df48:	000b8513          	mv	a0,s7
   1df4c:	02613023          	sd	t1,32(sp)
   1df50:	a19f30ef          	jal	11968 <strlen>
   1df54:	00050a1b          	sext.w	s4,a0
   1df58:	06714583          	lbu	a1,103(sp)
   1df5c:	01b13423          	sd	s11,8(sp)
   1df60:	00000493          	li	s1,0
   1df64:	02013303          	ld	t1,32(sp)
   1df68:	ba4ff06f          	j	1d30c <_vfiprintf_r+0x2cc>
   1df6c:	07010613          	addi	a2,sp,112
   1df70:	000d0593          	mv	a1,s10
   1df74:	000a8513          	mv	a0,s5
   1df78:	02613023          	sd	t1,32(sp)
   1df7c:	fc1fe0ef          	jal	1cf3c <__sprint_r.part.0>
   1df80:	b20514e3          	bnez	a0,1daa8 <_vfiprintf_r+0xa68>
   1df84:	07812603          	lw	a2,120(sp)
   1df88:	08013783          	ld	a5,128(sp)
   1df8c:	000c8413          	mv	s0,s9
   1df90:	0016059b          	addiw	a1,a2,1
   1df94:	02013303          	ld	t1,32(sp)
   1df98:	975ff06f          	j	1d90c <_vfiprintf_r+0x8cc>
   1df9c:	07812603          	lw	a2,120(sp)
   1dfa0:	08013783          	ld	a5,128(sp)
   1dfa4:	05813823          	sd	s8,80(sp)
   1dfa8:	0016061b          	addiw	a2,a2,1
   1dfac:	bfcff06f          	j	1d3a8 <_vfiprintf_r+0x368>
   1dfb0:	00000593          	li	a1,0
   1dfb4:	00200613          	li	a2,2
   1dfb8:	00100513          	li	a0,1
   1dfbc:	08a60263          	beq	a2,a0,1e040 <_vfiprintf_r+0x1000>
   1dfc0:	00200513          	li	a0,2
   1dfc4:	08a61263          	bne	a2,a0,1e048 <_vfiprintf_r+0x1008>
   1dfc8:	00070313          	mv	t1,a4
   1dfcc:	c49ff06f          	j	1dc14 <_vfiprintf_r+0xbd4>
   1dfd0:	00600793          	li	a5,6
   1dfd4:	0097f463          	bleu	s1,a5,1dfdc <_vfiprintf_r+0xf9c>
   1dfd8:	00078493          	mv	s1,a5
   1dfdc:	00048a13          	mv	s4,s1
   1dfe0:	00048993          	mv	s3,s1
   1dfe4:	0604c663          	bltz	s1,1e050 <_vfiprintf_r+0x1010>
   1dfe8:	00022737          	lui	a4,0x22
   1dfec:	01b13423          	sd	s11,8(sp)
   1dff0:	d2870b93          	addi	s7,a4,-728 # 21d28 <zeroes.4123+0x6c0>
   1dff4:	00000493          	li	s1,0
   1dff8:	b28ff06f          	j	1d320 <_vfiprintf_r+0x2e0>
   1dffc:	00030713          	mv	a4,t1
   1e000:	02d00593          	li	a1,45
   1e004:	00100613          	li	a2,1
   1e008:	fb1ff06f          	j	1dfb8 <_vfiprintf_r+0xf78>
   1e00c:	07812583          	lw	a1,120(sp)
   1e010:	05813823          	sd	s8,80(sp)
   1e014:	0015859b          	addiw	a1,a1,1
   1e018:	a29ff06f          	j	1da40 <_vfiprintf_r+0xa00>
   1e01c:	00021737          	lui	a4,0x21
   1e020:	00058513          	mv	a0,a1
   1e024:	3e070d93          	addi	s11,a4,992 # 213e0 <zeroes.4137>
   1e028:	c60ff06f          	j	1d488 <_vfiprintf_r+0x448>
   1e02c:	00048a13          	mv	s4,s1
   1e030:	06714583          	lbu	a1,103(sp)
   1e034:	01b13423          	sd	s11,8(sp)
   1e038:	00000493          	li	s1,0
   1e03c:	ad0ff06f          	j	1d30c <_vfiprintf_r+0x2cc>
   1e040:	00070313          	mv	t1,a4
   1e044:	d44ff06f          	j	1d588 <_vfiprintf_r+0x548>
   1e048:	00070313          	mv	t1,a4
   1e04c:	da8ff06f          	j	1d5f4 <_vfiprintf_r+0x5b4>
   1e050:	00000993          	li	s3,0
   1e054:	f95ff06f          	j	1dfe8 <_vfiprintf_r+0xfa8>
   1e058:	00813783          	ld	a5,8(sp)
   1e05c:	00080b13          	mv	s6,a6
   1e060:	0007a483          	lw	s1,0(a5)
   1e064:	00878b93          	addi	s7,a5,8
   1e068:	01713423          	sd	s7,8(sp)
   1e06c:	9804de63          	bgez	s1,1d208 <_vfiprintf_r+0x1c8>
   1e070:	fff00493          	li	s1,-1
   1e074:	000b0813          	mv	a6,s6
   1e078:	954ff06f          	j	1d1cc <_vfiprintf_r+0x18c>
   1e07c:	07d103a3          	sb	t4,103(sp)
   1e080:	f44ff06f          	j	1d7c4 <_vfiprintf_r+0x784>
   1e084:	07d103a3          	sb	t4,103(sp)
   1e088:	ee0ff06f          	j	1d768 <_vfiprintf_r+0x728>
   1e08c:	07d103a3          	sb	t4,103(sp)
   1e090:	fb0ff06f          	j	1d840 <_vfiprintf_r+0x800>
   1e094:	00137793          	andi	a5,t1,1
   1e098:	00078c63          	beqz	a5,1e0b0 <_vfiprintf_r+0x1070>
   1e09c:	03000793          	li	a5,48
   1e0a0:	0af107a3          	sb	a5,175(sp)
   1e0a4:	05c12a03          	lw	s4,92(sp)
   1e0a8:	0af10b93          	addi	s7,sp,175
   1e0ac:	a60ff06f          	j	1d30c <_vfiprintf_r+0x2cc>
   1e0b0:	00000a13          	li	s4,0
   1e0b4:	000c8b93          	mv	s7,s9
   1e0b8:	a54ff06f          	j	1d30c <_vfiprintf_r+0x2cc>
   1e0bc:	07d103a3          	sb	t4,103(sp)
   1e0c0:	cfcff06f          	j	1d5bc <_vfiprintf_r+0x57c>
   1e0c4:	07d103a3          	sb	t4,103(sp)
   1e0c8:	c90ff06f          	j	1d558 <_vfiprintf_r+0x518>
   1e0cc:	07d103a3          	sb	t4,103(sp)
   1e0d0:	d94ff06f          	j	1d664 <_vfiprintf_r+0x624>
   1e0d4:	07d103a3          	sb	t4,103(sp)
   1e0d8:	d64ff06f          	j	1d63c <_vfiprintf_r+0x5fc>

000000000001e0dc <vfiprintf>:
   1e0dc:	00060693          	mv	a3,a2
   1e0e0:	00058613          	mv	a2,a1
   1e0e4:	00050593          	mv	a1,a0
   1e0e8:	8181b503          	ld	a0,-2024(gp) # 24438 <_impure_ptr>
   1e0ec:	f55fe06f          	j	1d040 <_vfiprintf_r>

000000000001e0f0 <__sbprintf>:
   1e0f0:	0105d783          	lhu	a5,16(a1)
   1e0f4:	0ac5ae03          	lw	t3,172(a1)
   1e0f8:	0125d303          	lhu	t1,18(a1)
   1e0fc:	0305b883          	ld	a7,48(a1)
   1e100:	0405b803          	ld	a6,64(a1)
   1e104:	b3010113          	addi	sp,sp,-1232
   1e108:	ffd7f793          	andi	a5,a5,-3
   1e10c:	40000713          	li	a4,1024
   1e110:	4c813023          	sd	s0,1216(sp)
   1e114:	00f11823          	sh	a5,16(sp)
   1e118:	00058413          	mv	s0,a1
   1e11c:	0b010793          	addi	a5,sp,176
   1e120:	00010593          	mv	a1,sp
   1e124:	4a913c23          	sd	s1,1208(sp)
   1e128:	4b213823          	sd	s2,1200(sp)
   1e12c:	4c113423          	sd	ra,1224(sp)
   1e130:	00050913          	mv	s2,a0
   1e134:	0bc12623          	sw	t3,172(sp)
   1e138:	00611923          	sh	t1,18(sp)
   1e13c:	03113823          	sd	a7,48(sp)
   1e140:	05013023          	sd	a6,64(sp)
   1e144:	00f13023          	sd	a5,0(sp)
   1e148:	00f13c23          	sd	a5,24(sp)
   1e14c:	00e12623          	sw	a4,12(sp)
   1e150:	02e12023          	sw	a4,32(sp)
   1e154:	02012423          	sw	zero,40(sp)
   1e158:	ee9fe0ef          	jal	1d040 <_vfiprintf_r>
   1e15c:	00050493          	mv	s1,a0
   1e160:	00054a63          	bltz	a0,1e174 <__sbprintf+0x84>
   1e164:	00010593          	mv	a1,sp
   1e168:	00090513          	mv	a0,s2
   1e16c:	ab0f80ef          	jal	1641c <_fflush_r>
   1e170:	02051c63          	bnez	a0,1e1a8 <__sbprintf+0xb8>
   1e174:	01015783          	lhu	a5,16(sp)
   1e178:	0407f793          	andi	a5,a5,64
   1e17c:	00078863          	beqz	a5,1e18c <__sbprintf+0x9c>
   1e180:	01045783          	lhu	a5,16(s0)
   1e184:	0407e793          	ori	a5,a5,64
   1e188:	00f41823          	sh	a5,16(s0)
   1e18c:	4c813083          	ld	ra,1224(sp)
   1e190:	00048513          	mv	a0,s1
   1e194:	4c013403          	ld	s0,1216(sp)
   1e198:	4b813483          	ld	s1,1208(sp)
   1e19c:	4b013903          	ld	s2,1200(sp)
   1e1a0:	4d010113          	addi	sp,sp,1232
   1e1a4:	00008067          	ret
   1e1a8:	fff00493          	li	s1,-1
   1e1ac:	fc9ff06f          	j	1e174 <__sbprintf+0x84>

000000000001e1b0 <_calloc_r>:
   1e1b0:	02c585b3          	mul	a1,a1,a2
   1e1b4:	ff010113          	addi	sp,sp,-16
   1e1b8:	00113423          	sd	ra,8(sp)
   1e1bc:	00813023          	sd	s0,0(sp)
   1e1c0:	ba5f20ef          	jal	10d64 <_malloc_r>
   1e1c4:	08050c63          	beqz	a0,1e25c <_calloc_r+0xac>
   1e1c8:	ff853603          	ld	a2,-8(a0)
   1e1cc:	04800713          	li	a4,72
   1e1d0:	00050413          	mv	s0,a0
   1e1d4:	ffc67613          	andi	a2,a2,-4
   1e1d8:	ff860613          	addi	a2,a2,-8
   1e1dc:	04c76e63          	bltu	a4,a2,1e238 <_calloc_r+0x88>
   1e1e0:	02700693          	li	a3,39
   1e1e4:	00050793          	mv	a5,a0
   1e1e8:	02c6f863          	bleu	a2,a3,1e218 <_calloc_r+0x68>
   1e1ec:	00053023          	sd	zero,0(a0)
   1e1f0:	00053423          	sd	zero,8(a0)
   1e1f4:	03700793          	li	a5,55
   1e1f8:	04c7fe63          	bleu	a2,a5,1e254 <_calloc_r+0xa4>
   1e1fc:	00053823          	sd	zero,16(a0)
   1e200:	00053c23          	sd	zero,24(a0)
   1e204:	02050793          	addi	a5,a0,32
   1e208:	00e61863          	bne	a2,a4,1e218 <_calloc_r+0x68>
   1e20c:	02053023          	sd	zero,32(a0)
   1e210:	03050793          	addi	a5,a0,48
   1e214:	02053423          	sd	zero,40(a0)
   1e218:	0007b023          	sd	zero,0(a5)
   1e21c:	0007b423          	sd	zero,8(a5)
   1e220:	0007b823          	sd	zero,16(a5)
   1e224:	00040513          	mv	a0,s0
   1e228:	00813083          	ld	ra,8(sp)
   1e22c:	00013403          	ld	s0,0(sp)
   1e230:	01010113          	addi	sp,sp,16
   1e234:	00008067          	ret
   1e238:	00000593          	li	a1,0
   1e23c:	aadf90ef          	jal	17ce8 <memset>
   1e240:	00813083          	ld	ra,8(sp)
   1e244:	00040513          	mv	a0,s0
   1e248:	00013403          	ld	s0,0(sp)
   1e24c:	01010113          	addi	sp,sp,16
   1e250:	00008067          	ret
   1e254:	01050793          	addi	a5,a0,16
   1e258:	fc1ff06f          	j	1e218 <_calloc_r+0x68>
   1e25c:	00000513          	li	a0,0
   1e260:	fc9ff06f          	j	1e228 <_calloc_r+0x78>

000000000001e264 <_fclose_r>:
   1e264:	0e058e63          	beqz	a1,1e360 <_fclose_r+0xfc>
   1e268:	fe010113          	addi	sp,sp,-32
   1e26c:	00813823          	sd	s0,16(sp)
   1e270:	00913423          	sd	s1,8(sp)
   1e274:	00113c23          	sd	ra,24(sp)
   1e278:	01213023          	sd	s2,0(sp)
   1e27c:	00050493          	mv	s1,a0
   1e280:	00058413          	mv	s0,a1
   1e284:	00050663          	beqz	a0,1e290 <_fclose_r+0x2c>
   1e288:	05052783          	lw	a5,80(a0)
   1e28c:	0a078a63          	beqz	a5,1e340 <_fclose_r+0xdc>
   1e290:	01041783          	lh	a5,16(s0)
   1e294:	00000513          	li	a0,0
   1e298:	00079e63          	bnez	a5,1e2b4 <_fclose_r+0x50>
   1e29c:	01813083          	ld	ra,24(sp)
   1e2a0:	01013403          	ld	s0,16(sp)
   1e2a4:	00813483          	ld	s1,8(sp)
   1e2a8:	00013903          	ld	s2,0(sp)
   1e2ac:	02010113          	addi	sp,sp,32
   1e2b0:	00008067          	ret
   1e2b4:	00040593          	mv	a1,s0
   1e2b8:	00048513          	mv	a0,s1
   1e2bc:	ef5f70ef          	jal	161b0 <__sflush_r>
   1e2c0:	05043783          	ld	a5,80(s0)
   1e2c4:	00050913          	mv	s2,a0
   1e2c8:	00078a63          	beqz	a5,1e2dc <_fclose_r+0x78>
   1e2cc:	03043583          	ld	a1,48(s0)
   1e2d0:	00048513          	mv	a0,s1
   1e2d4:	000780e7          	jalr	a5
   1e2d8:	06054863          	bltz	a0,1e348 <_fclose_r+0xe4>
   1e2dc:	01045783          	lhu	a5,16(s0)
   1e2e0:	0807f793          	andi	a5,a5,128
   1e2e4:	06079663          	bnez	a5,1e350 <_fclose_r+0xec>
   1e2e8:	05843583          	ld	a1,88(s0)
   1e2ec:	00058c63          	beqz	a1,1e304 <_fclose_r+0xa0>
   1e2f0:	07440793          	addi	a5,s0,116
   1e2f4:	00f58663          	beq	a1,a5,1e300 <_fclose_r+0x9c>
   1e2f8:	00048513          	mv	a0,s1
   1e2fc:	891f80ef          	jal	16b8c <_free_r>
   1e300:	04043c23          	sd	zero,88(s0)
   1e304:	07843583          	ld	a1,120(s0)
   1e308:	00058863          	beqz	a1,1e318 <_fclose_r+0xb4>
   1e30c:	00048513          	mv	a0,s1
   1e310:	87df80ef          	jal	16b8c <_free_r>
   1e314:	06043c23          	sd	zero,120(s0)
   1e318:	cc0f80ef          	jal	167d8 <__sfp_lock_acquire>
   1e31c:	00041823          	sh	zero,16(s0)
   1e320:	cbcf80ef          	jal	167dc <__sfp_lock_release>
   1e324:	01813083          	ld	ra,24(sp)
   1e328:	00090513          	mv	a0,s2
   1e32c:	01013403          	ld	s0,16(sp)
   1e330:	00813483          	ld	s1,8(sp)
   1e334:	00013903          	ld	s2,0(sp)
   1e338:	02010113          	addi	sp,sp,32
   1e33c:	00008067          	ret
   1e340:	c88f80ef          	jal	167c8 <__sinit>
   1e344:	f4dff06f          	j	1e290 <_fclose_r+0x2c>
   1e348:	fff00913          	li	s2,-1
   1e34c:	f91ff06f          	j	1e2dc <_fclose_r+0x78>
   1e350:	01843583          	ld	a1,24(s0)
   1e354:	00048513          	mv	a0,s1
   1e358:	835f80ef          	jal	16b8c <_free_r>
   1e35c:	f8dff06f          	j	1e2e8 <_fclose_r+0x84>
   1e360:	00000513          	li	a0,0
   1e364:	00008067          	ret

000000000001e368 <fclose>:
   1e368:	00050593          	mv	a1,a0
   1e36c:	8181b503          	ld	a0,-2024(gp) # 24438 <_impure_ptr>
   1e370:	ef5ff06f          	j	1e264 <_fclose_r>

000000000001e374 <__fputwc>:
   1e374:	fb010113          	addi	sp,sp,-80
   1e378:	04813023          	sd	s0,64(sp)
   1e37c:	03413023          	sd	s4,32(sp)
   1e380:	01513c23          	sd	s5,24(sp)
   1e384:	04113423          	sd	ra,72(sp)
   1e388:	02913c23          	sd	s1,56(sp)
   1e38c:	03213823          	sd	s2,48(sp)
   1e390:	03313423          	sd	s3,40(sp)
   1e394:	01613823          	sd	s6,16(sp)
   1e398:	00050a93          	mv	s5,a0
   1e39c:	00058a13          	mv	s4,a1
   1e3a0:	00060413          	mv	s0,a2
   1e3a4:	9d0f90ef          	jal	17574 <__locale_mb_cur_max>
   1e3a8:	00100793          	li	a5,1
   1e3ac:	10f50663          	beq	a0,a5,1e4b8 <__fputwc+0x144>
   1e3b0:	00810493          	addi	s1,sp,8
   1e3b4:	0a440693          	addi	a3,s0,164
   1e3b8:	000a0613          	mv	a2,s4
   1e3bc:	00048593          	mv	a1,s1
   1e3c0:	000a8513          	mv	a0,s5
   1e3c4:	565010ef          	jal	20128 <_wcrtomb_r>
   1e3c8:	fff00793          	li	a5,-1
   1e3cc:	00050993          	mv	s3,a0
   1e3d0:	08f50e63          	beq	a0,a5,1e46c <__fputwc+0xf8>
   1e3d4:	10050263          	beqz	a0,1e4d8 <__fputwc+0x164>
   1e3d8:	00814583          	lbu	a1,8(sp)
   1e3dc:	00c42783          	lw	a5,12(s0)
   1e3e0:	00000913          	li	s2,0
   1e3e4:	00a00b13          	li	s6,10
   1e3e8:	fff7879b          	addiw	a5,a5,-1
   1e3ec:	00f42623          	sw	a5,12(s0)
   1e3f0:	0207cc63          	bltz	a5,1e428 <__fputwc+0xb4>
   1e3f4:	00043783          	ld	a5,0(s0)
   1e3f8:	00b78023          	sb	a1,0(a5)
   1e3fc:	00043783          	ld	a5,0(s0)
   1e400:	00178793          	addi	a5,a5,1
   1e404:	00f43023          	sd	a5,0(s0)
   1e408:	00190913          	addi	s2,s2,1
   1e40c:	00148493          	addi	s1,s1,1
   1e410:	0d397463          	bleu	s3,s2,1e4d8 <__fputwc+0x164>
   1e414:	00c42783          	lw	a5,12(s0)
   1e418:	0004c583          	lbu	a1,0(s1)
   1e41c:	fff7879b          	addiw	a5,a5,-1
   1e420:	00f42623          	sw	a5,12(s0)
   1e424:	fc07d8e3          	bgez	a5,1e3f4 <__fputwc+0x80>
   1e428:	02842703          	lw	a4,40(s0)
   1e42c:	06e7ca63          	blt	a5,a4,1e4a0 <__fputwc+0x12c>
   1e430:	00043783          	ld	a5,0(s0)
   1e434:	00b78023          	sb	a1,0(a5)
   1e438:	00043783          	ld	a5,0(s0)
   1e43c:	0007c703          	lbu	a4,0(a5)
   1e440:	00178793          	addi	a5,a5,1
   1e444:	fd6710e3          	bne	a4,s6,1e404 <__fputwc+0x90>
   1e448:	00040613          	mv	a2,s0
   1e44c:	000b0593          	mv	a1,s6
   1e450:	000a8513          	mv	a0,s5
   1e454:	ce8f60ef          	jal	1493c <__swbuf_r>
   1e458:	0015051b          	addiw	a0,a0,1
   1e45c:	00153513          	seqz	a0,a0
   1e460:	fa0504e3          	beqz	a0,1e408 <__fputwc+0x94>
   1e464:	fff00513          	li	a0,-1
   1e468:	0100006f          	j	1e478 <__fputwc+0x104>
   1e46c:	01045783          	lhu	a5,16(s0)
   1e470:	0407e793          	ori	a5,a5,64
   1e474:	00f41823          	sh	a5,16(s0)
   1e478:	04813083          	ld	ra,72(sp)
   1e47c:	04013403          	ld	s0,64(sp)
   1e480:	03813483          	ld	s1,56(sp)
   1e484:	03013903          	ld	s2,48(sp)
   1e488:	02813983          	ld	s3,40(sp)
   1e48c:	02013a03          	ld	s4,32(sp)
   1e490:	01813a83          	ld	s5,24(sp)
   1e494:	01013b03          	ld	s6,16(sp)
   1e498:	05010113          	addi	sp,sp,80
   1e49c:	00008067          	ret
   1e4a0:	00040613          	mv	a2,s0
   1e4a4:	000a8513          	mv	a0,s5
   1e4a8:	c94f60ef          	jal	1493c <__swbuf_r>
   1e4ac:	0015051b          	addiw	a0,a0,1
   1e4b0:	00153513          	seqz	a0,a0
   1e4b4:	fadff06f          	j	1e460 <__fputwc+0xec>
   1e4b8:	fffa079b          	addiw	a5,s4,-1
   1e4bc:	0fe00713          	li	a4,254
   1e4c0:	eef768e3          	bltu	a4,a5,1e3b0 <__fputwc+0x3c>
   1e4c4:	0ffa7593          	andi	a1,s4,255
   1e4c8:	00b10423          	sb	a1,8(sp)
   1e4cc:	00100993          	li	s3,1
   1e4d0:	00810493          	addi	s1,sp,8
   1e4d4:	f09ff06f          	j	1e3dc <__fputwc+0x68>
   1e4d8:	000a0513          	mv	a0,s4
   1e4dc:	f9dff06f          	j	1e478 <__fputwc+0x104>

000000000001e4e0 <_fputwc_r>:
   1e4e0:	01061783          	lh	a5,16(a2)
   1e4e4:	00002737          	lui	a4,0x2
   1e4e8:	03279693          	slli	a3,a5,0x32
   1e4ec:	0006cc63          	bltz	a3,1e504 <_fputwc_r+0x24>
   1e4f0:	0ac62683          	lw	a3,172(a2)
   1e4f4:	00e7e7b3          	or	a5,a5,a4
   1e4f8:	00f61823          	sh	a5,16(a2)
   1e4fc:	00e6e733          	or	a4,a3,a4
   1e500:	0ae62623          	sw	a4,172(a2)
   1e504:	e71ff06f          	j	1e374 <__fputwc>

000000000001e508 <fputwc>:
   1e508:	fd010113          	addi	sp,sp,-48
   1e50c:	02813023          	sd	s0,32(sp)
   1e510:	8181b403          	ld	s0,-2024(gp) # 24438 <_impure_ptr>
   1e514:	00913c23          	sd	s1,24(sp)
   1e518:	02113423          	sd	ra,40(sp)
   1e51c:	00050493          	mv	s1,a0
   1e520:	00058613          	mv	a2,a1
   1e524:	00040663          	beqz	s0,1e530 <fputwc+0x28>
   1e528:	05042783          	lw	a5,80(s0)
   1e52c:	04078263          	beqz	a5,1e570 <fputwc+0x68>
   1e530:	01061783          	lh	a5,16(a2)
   1e534:	00002737          	lui	a4,0x2
   1e538:	03279693          	slli	a3,a5,0x32
   1e53c:	0006cc63          	bltz	a3,1e554 <fputwc+0x4c>
   1e540:	0ac62683          	lw	a3,172(a2)
   1e544:	00e7e7b3          	or	a5,a5,a4
   1e548:	00f61823          	sh	a5,16(a2)
   1e54c:	00e6e733          	or	a4,a3,a4
   1e550:	0ae62623          	sw	a4,172(a2)
   1e554:	00048593          	mv	a1,s1
   1e558:	00040513          	mv	a0,s0
   1e55c:	02813083          	ld	ra,40(sp)
   1e560:	02013403          	ld	s0,32(sp)
   1e564:	01813483          	ld	s1,24(sp)
   1e568:	03010113          	addi	sp,sp,48
   1e56c:	e09ff06f          	j	1e374 <__fputwc>
   1e570:	00040513          	mv	a0,s0
   1e574:	00b13423          	sd	a1,8(sp)
   1e578:	a50f80ef          	jal	167c8 <__sinit>
   1e57c:	00813603          	ld	a2,8(sp)
   1e580:	fb1ff06f          	j	1e530 <fputwc+0x28>

000000000001e584 <rshift>:
   1e584:	01452703          	lw	a4,20(a0)
   1e588:	4055d69b          	sraiw	a3,a1,0x5
   1e58c:	01850893          	addi	a7,a0,24
   1e590:	08e6d863          	ble	a4,a3,1e620 <rshift+0x9c>
   1e594:	00068613          	mv	a2,a3
   1e598:	00271713          	slli	a4,a4,0x2
   1e59c:	00261613          	slli	a2,a2,0x2
   1e5a0:	01f5f593          	andi	a1,a1,31
   1e5a4:	00e88733          	add	a4,a7,a4
   1e5a8:	00c88633          	add	a2,a7,a2
   1e5ac:	08058063          	beqz	a1,1e62c <rshift+0xa8>
   1e5b0:	00062783          	lw	a5,0(a2)
   1e5b4:	02000e13          	li	t3,32
   1e5b8:	00460693          	addi	a3,a2,4
   1e5bc:	40be0e3b          	subw	t3,t3,a1
   1e5c0:	00b7d7bb          	srlw	a5,a5,a1
   1e5c4:	0ae6f663          	bleu	a4,a3,1e670 <rshift+0xec>
   1e5c8:	00088313          	mv	t1,a7
   1e5cc:	0006a803          	lw	a6,0(a3)
   1e5d0:	00430313          	addi	t1,t1,4
   1e5d4:	00468693          	addi	a3,a3,4
   1e5d8:	01c8183b          	sllw	a6,a6,t3
   1e5dc:	00f867b3          	or	a5,a6,a5
   1e5e0:	fef32e23          	sw	a5,-4(t1)
   1e5e4:	ffc6a783          	lw	a5,-4(a3)
   1e5e8:	00b7d7bb          	srlw	a5,a5,a1
   1e5ec:	fee6e0e3          	bltu	a3,a4,1e5cc <rshift+0x48>
   1e5f0:	40c70733          	sub	a4,a4,a2
   1e5f4:	ffb70713          	addi	a4,a4,-5 # 1ffb <_ftext-0xe005>
   1e5f8:	ffc77713          	andi	a4,a4,-4
   1e5fc:	00470713          	addi	a4,a4,4
   1e600:	00e88733          	add	a4,a7,a4
   1e604:	00f72023          	sw	a5,0(a4)
   1e608:	00078463          	beqz	a5,1e610 <rshift+0x8c>
   1e60c:	00470713          	addi	a4,a4,4
   1e610:	411707b3          	sub	a5,a4,a7
   1e614:	4027d793          	srai	a5,a5,0x2
   1e618:	0007879b          	sext.w	a5,a5
   1e61c:	0480006f          	j	1e664 <rshift+0xe0>
   1e620:	00052a23          	sw	zero,20(a0)
   1e624:	00052c23          	sw	zero,24(a0)
   1e628:	00008067          	ret
   1e62c:	00088793          	mv	a5,a7
   1e630:	00060693          	mv	a3,a2
   1e634:	fee676e3          	bleu	a4,a2,1e620 <rshift+0x9c>
   1e638:	00468693          	addi	a3,a3,4
   1e63c:	ffc6a583          	lw	a1,-4(a3)
   1e640:	00478793          	addi	a5,a5,4
   1e644:	feb7ae23          	sw	a1,-4(a5)
   1e648:	fee6e8e3          	bltu	a3,a4,1e638 <rshift+0xb4>
   1e64c:	fff64793          	not	a5,a2
   1e650:	00e787b3          	add	a5,a5,a4
   1e654:	ffc7f793          	andi	a5,a5,-4
   1e658:	00478793          	addi	a5,a5,4
   1e65c:	4027d793          	srai	a5,a5,0x2
   1e660:	0007879b          	sext.w	a5,a5
   1e664:	00f52a23          	sw	a5,20(a0)
   1e668:	fa078ee3          	beqz	a5,1e624 <rshift+0xa0>
   1e66c:	00008067          	ret
   1e670:	00088713          	mv	a4,a7
   1e674:	f91ff06f          	j	1e604 <rshift+0x80>

000000000001e678 <__gethex>:
   1e678:	f4010113          	addi	sp,sp,-192
   1e67c:	00d13c23          	sd	a3,24(sp)
   1e680:	00e13423          	sd	a4,8(sp)
   1e684:	02f12223          	sw	a5,36(sp)
   1e688:	0a113c23          	sd	ra,184(sp)
   1e68c:	0a913423          	sd	s1,168(sp)
   1e690:	0b213023          	sd	s2,160(sp)
   1e694:	09313c23          	sd	s3,152(sp)
   1e698:	00058913          	mv	s2,a1
   1e69c:	09413823          	sd	s4,144(sp)
   1e6a0:	07713c23          	sd	s7,120(sp)
   1e6a4:	00060993          	mv	s3,a2
   1e6a8:	0a813823          	sd	s0,176(sp)
   1e6ac:	09513423          	sd	s5,136(sp)
   1e6b0:	09613023          	sd	s6,128(sp)
   1e6b4:	07813823          	sd	s8,112(sp)
   1e6b8:	07913423          	sd	s9,104(sp)
   1e6bc:	07a13023          	sd	s10,96(sp)
   1e6c0:	05b13c23          	sd	s11,88(sp)
   1e6c4:	00050a13          	mv	s4,a0
   1e6c8:	ec9f80ef          	jal	17590 <_localeconv_r>
   1e6cc:	00053483          	ld	s1,0(a0)
   1e6d0:	00048513          	mv	a0,s1
   1e6d4:	a94f30ef          	jal	11968 <strlen>
   1e6d8:	00093783          	ld	a5,0(s2)
   1e6dc:	00a486b3          	add	a3,s1,a0
   1e6e0:	fff6c683          	lbu	a3,-1(a3)
   1e6e4:	0027c703          	lbu	a4,2(a5)
   1e6e8:	00050b93          	mv	s7,a0
   1e6ec:	00d13823          	sd	a3,16(sp)
   1e6f0:	03000693          	li	a3,48
   1e6f4:	5cd71063          	bne	a4,a3,1ecb4 <__gethex+0x63c>
   1e6f8:	00378793          	addi	a5,a5,3
   1e6fc:	00000b13          	li	s6,0
   1e700:	00070613          	mv	a2,a4
   1e704:	00078d93          	mv	s11,a5
   1e708:	00178793          	addi	a5,a5,1
   1e70c:	fff7c703          	lbu	a4,-1(a5)
   1e710:	001b0b1b          	addiw	s6,s6,1
   1e714:	fec708e3          	beq	a4,a2,1e704 <__gethex+0x8c>
   1e718:	000218b7          	lui	a7,0x21
   1e71c:	3f088a93          	addi	s5,a7,1008 # 213f0 <__hexdig>
   1e720:	00ea8733          	add	a4,s5,a4
   1e724:	00074783          	lbu	a5,0(a4)
   1e728:	1e078e63          	beqz	a5,1e924 <__gethex+0x2ac>
   1e72c:	000dc783          	lbu	a5,0(s11)
   1e730:	00000413          	li	s0,0
   1e734:	00000c93          	li	s9,0
   1e738:	00fa87b3          	add	a5,s5,a5
   1e73c:	0007c783          	lbu	a5,0(a5)
   1e740:	000d8c13          	mv	s8,s11
   1e744:	00078c63          	beqz	a5,1e75c <__gethex+0xe4>
   1e748:	001c0c13          	addi	s8,s8,1
   1e74c:	000c4783          	lbu	a5,0(s8)
   1e750:	00fa87b3          	add	a5,s5,a5
   1e754:	0007c783          	lbu	a5,0(a5)
   1e758:	fe0798e3          	bnez	a5,1e748 <__gethex+0xd0>
   1e75c:	000b8613          	mv	a2,s7
   1e760:	00048593          	mv	a1,s1
   1e764:	000c0513          	mv	a0,s8
   1e768:	101000ef          	jal	1f068 <strncmp>
   1e76c:	1a050663          	beqz	a0,1e918 <__gethex+0x2a0>
   1e770:	000c4783          	lbu	a5,0(s8)
   1e774:	500c8a63          	beqz	s9,1ec88 <__gethex+0x610>
   1e778:	419c0cbb          	subw	s9,s8,s9
   1e77c:	002c9c9b          	slliw	s9,s9,0x2
   1e780:	41900cbb          	negw	s9,s9
   1e784:	05000713          	li	a4,80
   1e788:	20e78e63          	beq	a5,a4,1e9a4 <__gethex+0x32c>
   1e78c:	07000713          	li	a4,112
   1e790:	000c0d13          	mv	s10,s8
   1e794:	20e78863          	beq	a5,a4,1e9a4 <__gethex+0x32c>
   1e798:	01893023          	sd	s8,0(s2)
   1e79c:	1a041c63          	bnez	s0,1e954 <__gethex+0x2dc>
   1e7a0:	41bd07b3          	sub	a5,s10,s11
   1e7a4:	fff7879b          	addiw	a5,a5,-1
   1e7a8:	00700713          	li	a4,7
   1e7ac:	00000593          	li	a1,0
   1e7b0:	00f75863          	ble	a5,a4,1e7c0 <__gethex+0x148>
   1e7b4:	4017d79b          	sraiw	a5,a5,0x1
   1e7b8:	0015859b          	addiw	a1,a1,1
   1e7bc:	fef74ce3          	blt	a4,a5,1e7b4 <__gethex+0x13c>
   1e7c0:	000a0513          	mv	a0,s4
   1e7c4:	e00f90ef          	jal	17dc4 <_Balloc>
   1e7c8:	01850913          	addi	s2,a0,24
   1e7cc:	00050b13          	mv	s6,a0
   1e7d0:	00090313          	mv	t1,s2
   1e7d4:	00000793          	li	a5,0
   1e7d8:	05adf863          	bleu	s10,s11,1e828 <__gethex+0x1b0>
   1e7dc:	01012403          	lw	s0,16(sp)
   1e7e0:	00100f13          	li	t5,1
   1e7e4:	00000c13          	li	s8,0
   1e7e8:	417f0f33          	sub	t5,t5,s7
   1e7ec:	02000e13          	li	t3,32
   1e7f0:	fffd4703          	lbu	a4,-1(s10)
   1e7f4:	fffd0f93          	addi	t6,s10,-1
   1e7f8:	0a870c63          	beq	a4,s0,1e8b0 <__gethex+0x238>
   1e7fc:	11cc0263          	beq	s8,t3,1e900 <__gethex+0x288>
   1e800:	000c0613          	mv	a2,s8
   1e804:	004c0c1b          	addiw	s8,s8,4
   1e808:	fffd4683          	lbu	a3,-1(s10)
   1e80c:	000f8d13          	mv	s10,t6
   1e810:	00da86b3          	add	a3,s5,a3
   1e814:	0006c703          	lbu	a4,0(a3)
   1e818:	00f77713          	andi	a4,a4,15
   1e81c:	00c7173b          	sllw	a4,a4,a2
   1e820:	00e7e7b3          	or	a5,a5,a4
   1e824:	fdade6e3          	bltu	s11,s10,1e7f0 <__gethex+0x178>
   1e828:	00430713          	addi	a4,t1,4
   1e82c:	41270733          	sub	a4,a4,s2
   1e830:	40275713          	srai	a4,a4,0x2
   1e834:	0007071b          	sext.w	a4,a4
   1e838:	00f32023          	sw	a5,0(t1)
   1e83c:	00eb2a23          	sw	a4,20(s6)
   1e840:	00078513          	mv	a0,a5
   1e844:	0057141b          	slliw	s0,a4,0x5
   1e848:	889f90ef          	jal	180d0 <__hi0bits>
   1e84c:	0009a483          	lw	s1,0(s3)
   1e850:	40a4053b          	subw	a0,s0,a0
   1e854:	3ca4c663          	blt	s1,a0,1ec20 <__gethex+0x5a8>
   1e858:	00000c13          	li	s8,0
   1e85c:	42954a63          	blt	a0,s1,1ec90 <__gethex+0x618>
   1e860:	0089a783          	lw	a5,8(s3)
   1e864:	2f97ce63          	blt	a5,s9,1eb60 <__gethex+0x4e8>
   1e868:	0049a783          	lw	a5,4(s3)
   1e86c:	36fcd863          	ble	a5,s9,1ebdc <__gethex+0x564>
   1e870:	41978cbb          	subw	s9,a5,s9
   1e874:	1c9ccc63          	blt	s9,s1,1ea4c <__gethex+0x3d4>
   1e878:	00c9a703          	lw	a4,12(s3)
   1e87c:	00200693          	li	a3,2
   1e880:	4ad70a63          	beq	a4,a3,1ed34 <__gethex+0x6bc>
   1e884:	00300693          	li	a3,3
   1e888:	46d70c63          	beq	a4,a3,1ed00 <__gethex+0x688>
   1e88c:	00100693          	li	a3,1
   1e890:	4ad70863          	beq	a4,a3,1ed40 <__gethex+0x6c8>
   1e894:	000a0513          	mv	a0,s4
   1e898:	000b0593          	mv	a1,s6
   1e89c:	dd4f90ef          	jal	17e70 <_Bfree>
   1e8a0:	00813783          	ld	a5,8(sp)
   1e8a4:	05000513          	li	a0,80
   1e8a8:	0007b023          	sd	zero,0(a5)
   1e8ac:	0b40006f          	j	1e960 <__gethex+0x2e8>
   1e8b0:	01ef8733          	add	a4,t6,t5
   1e8b4:	f5b764e3          	bltu	a4,s11,1e7fc <__gethex+0x184>
   1e8b8:	00070513          	mv	a0,a4
   1e8bc:	000b8613          	mv	a2,s7
   1e8c0:	00048593          	mv	a1,s1
   1e8c4:	05c13023          	sd	t3,64(sp)
   1e8c8:	03e13c23          	sd	t5,56(sp)
   1e8cc:	02f13823          	sd	a5,48(sp)
   1e8d0:	02613423          	sd	t1,40(sp)
   1e8d4:	00e13823          	sd	a4,16(sp)
   1e8d8:	05f13423          	sd	t6,72(sp)
   1e8dc:	78c000ef          	jal	1f068 <strncmp>
   1e8e0:	01013703          	ld	a4,16(sp)
   1e8e4:	02813303          	ld	t1,40(sp)
   1e8e8:	03013783          	ld	a5,48(sp)
   1e8ec:	03813f03          	ld	t5,56(sp)
   1e8f0:	04013e03          	ld	t3,64(sp)
   1e8f4:	28050463          	beqz	a0,1eb7c <__gethex+0x504>
   1e8f8:	04813f83          	ld	t6,72(sp)
   1e8fc:	f1cc12e3          	bne	s8,t3,1e800 <__gethex+0x188>
   1e900:	00f32023          	sw	a5,0(t1)
   1e904:	00400c13          	li	s8,4
   1e908:	00430313          	addi	t1,t1,4
   1e90c:	00000793          	li	a5,0
   1e910:	00000613          	li	a2,0
   1e914:	ef5ff06f          	j	1e808 <__gethex+0x190>
   1e918:	3a0c8863          	beqz	s9,1ecc8 <__gethex+0x650>
   1e91c:	000c4783          	lbu	a5,0(s8)
   1e920:	e59ff06f          	j	1e778 <__gethex+0x100>
   1e924:	000b8613          	mv	a2,s7
   1e928:	00048593          	mv	a1,s1
   1e92c:	000d8513          	mv	a0,s11
   1e930:	738000ef          	jal	1f068 <strncmp>
   1e934:	26050063          	beqz	a0,1eb94 <__gethex+0x51c>
   1e938:	000dc783          	lbu	a5,0(s11)
   1e93c:	000d8c13          	mv	s8,s11
   1e940:	05000713          	li	a4,80
   1e944:	04e78c63          	beq	a5,a4,1e99c <__gethex+0x324>
   1e948:	07000713          	li	a4,112
   1e94c:	04e78863          	beq	a5,a4,1e99c <__gethex+0x324>
   1e950:	01893023          	sd	s8,0(s2)
   1e954:	001b3513          	seqz	a0,s6
   1e958:	40a0053b          	negw	a0,a0
   1e95c:	00657513          	andi	a0,a0,6
   1e960:	0b813083          	ld	ra,184(sp)
   1e964:	0b013403          	ld	s0,176(sp)
   1e968:	0a813483          	ld	s1,168(sp)
   1e96c:	0a013903          	ld	s2,160(sp)
   1e970:	09813983          	ld	s3,152(sp)
   1e974:	09013a03          	ld	s4,144(sp)
   1e978:	08813a83          	ld	s5,136(sp)
   1e97c:	08013b03          	ld	s6,128(sp)
   1e980:	07813b83          	ld	s7,120(sp)
   1e984:	07013c03          	ld	s8,112(sp)
   1e988:	06813c83          	ld	s9,104(sp)
   1e98c:	06013d03          	ld	s10,96(sp)
   1e990:	05813d83          	ld	s11,88(sp)
   1e994:	0c010113          	addi	sp,sp,192
   1e998:	00008067          	ret
   1e99c:	00000c93          	li	s9,0
   1e9a0:	00100413          	li	s0,1
   1e9a4:	001c4783          	lbu	a5,1(s8)
   1e9a8:	02b00713          	li	a4,43
   1e9ac:	26e78663          	beq	a5,a4,1ec18 <__gethex+0x5a0>
   1e9b0:	02d00713          	li	a4,45
   1e9b4:	00100593          	li	a1,1
   1e9b8:	1ce79863          	bne	a5,a4,1eb88 <__gethex+0x510>
   1e9bc:	002c4783          	lbu	a5,2(s8)
   1e9c0:	002c0513          	addi	a0,s8,2
   1e9c4:	00fa87b3          	add	a5,s5,a5
   1e9c8:	0007c783          	lbu	a5,0(a5)
   1e9cc:	01800e13          	li	t3,24
   1e9d0:	000c0d13          	mv	s10,s8
   1e9d4:	fff7871b          	addiw	a4,a5,-1
   1e9d8:	0ff77713          	andi	a4,a4,255
   1e9dc:	daee6ee3          	bltu	t3,a4,1e798 <__gethex+0x120>
   1e9e0:	00154703          	lbu	a4,1(a0)
   1e9e4:	ff07879b          	addiw	a5,a5,-16
   1e9e8:	00150513          	addi	a0,a0,1
   1e9ec:	00ea8733          	add	a4,s5,a4
   1e9f0:	00074e83          	lbu	t4,0(a4)
   1e9f4:	fffe871b          	addiw	a4,t4,-1
   1e9f8:	0ff77713          	andi	a4,a4,255
   1e9fc:	02ee6c63          	bltu	t3,a4,1ea34 <__gethex+0x3bc>
   1ea00:	00150513          	addi	a0,a0,1
   1ea04:	00054603          	lbu	a2,0(a0)
   1ea08:	0017971b          	slliw	a4,a5,0x1
   1ea0c:	0037979b          	slliw	a5,a5,0x3
   1ea10:	00ca8633          	add	a2,s5,a2
   1ea14:	00064603          	lbu	a2,0(a2)
   1ea18:	00f707bb          	addw	a5,a4,a5
   1ea1c:	01d787bb          	addw	a5,a5,t4
   1ea20:	fff6071b          	addiw	a4,a2,-1
   1ea24:	0ff77713          	andi	a4,a4,255
   1ea28:	ff07879b          	addiw	a5,a5,-16
   1ea2c:	00060e93          	mv	t4,a2
   1ea30:	fcee78e3          	bleu	a4,t3,1ea00 <__gethex+0x388>
   1ea34:	00058463          	beqz	a1,1ea3c <__gethex+0x3c4>
   1ea38:	40f007bb          	negw	a5,a5
   1ea3c:	000c0d13          	mv	s10,s8
   1ea40:	00fc8cbb          	addw	s9,s9,a5
   1ea44:	00050c13          	mv	s8,a0
   1ea48:	d51ff06f          	j	1e798 <__gethex+0x120>
   1ea4c:	fffc841b          	addiw	s0,s9,-1
   1ea50:	2a0c1463          	bnez	s8,1ecf8 <__gethex+0x680>
   1ea54:	00040a63          	beqz	s0,1ea68 <__gethex+0x3f0>
   1ea58:	00040593          	mv	a1,s0
   1ea5c:	000b0513          	mv	a0,s6
   1ea60:	b44fa0ef          	jal	18da4 <__any_on>
   1ea64:	00050c13          	mv	s8,a0
   1ea68:	4054579b          	sraiw	a5,s0,0x5
   1ea6c:	00279793          	slli	a5,a5,0x2
   1ea70:	00f907b3          	add	a5,s2,a5
   1ea74:	0007a783          	lw	a5,0(a5)
   1ea78:	00100713          	li	a4,1
   1ea7c:	0087173b          	sllw	a4,a4,s0
   1ea80:	00f777b3          	and	a5,a4,a5
   1ea84:	00078463          	beqz	a5,1ea8c <__gethex+0x414>
   1ea88:	002c6c13          	ori	s8,s8,2
   1ea8c:	000c8593          	mv	a1,s9
   1ea90:	000b0513          	mv	a0,s6
   1ea94:	af1ff0ef          	jal	1e584 <rshift>
   1ea98:	419484bb          	subw	s1,s1,s9
   1ea9c:	0049ac83          	lw	s9,4(s3)
   1eaa0:	00200413          	li	s0,2
   1eaa4:	140c0e63          	beqz	s8,1ec00 <__gethex+0x588>
   1eaa8:	00c9a783          	lw	a5,12(s3)
   1eaac:	00200713          	li	a4,2
   1eab0:	12e78a63          	beq	a5,a4,1ebe4 <__gethex+0x56c>
   1eab4:	00300713          	li	a4,3
   1eab8:	12e78e63          	beq	a5,a4,1ebf4 <__gethex+0x57c>
   1eabc:	00100713          	li	a4,1
   1eac0:	12e79e63          	bne	a5,a4,1ebfc <__gethex+0x584>
   1eac4:	002c7793          	andi	a5,s8,2
   1eac8:	12078a63          	beqz	a5,1ebfc <__gethex+0x584>
   1eacc:	00092783          	lw	a5,0(s2)
   1ead0:	00fc67b3          	or	a5,s8,a5
   1ead4:	00e7f7b3          	and	a5,a5,a4
   1ead8:	12078263          	beqz	a5,1ebfc <__gethex+0x584>
   1eadc:	014b2c03          	lw	s8,20(s6)
   1eae0:	00090793          	mv	a5,s2
   1eae4:	fff00693          	li	a3,-1
   1eae8:	002c1b93          	slli	s7,s8,0x2
   1eaec:	01790633          	add	a2,s2,s7
   1eaf0:	0100006f          	j	1eb00 <__gethex+0x488>
   1eaf4:	00478793          	addi	a5,a5,4
   1eaf8:	fe07ae23          	sw	zero,-4(a5)
   1eafc:	26c7f263          	bleu	a2,a5,1ed60 <__gethex+0x6e8>
   1eb00:	0007a703          	lw	a4,0(a5)
   1eb04:	fed708e3          	beq	a4,a3,1eaf4 <__gethex+0x47c>
   1eb08:	0017071b          	addiw	a4,a4,1
   1eb0c:	00e7a023          	sw	a4,0(a5)
   1eb10:	00200793          	li	a5,2
   1eb14:	26f40c63          	beq	s0,a5,1ed8c <__gethex+0x714>
   1eb18:	014b2783          	lw	a5,20(s6)
   1eb1c:	02fc4463          	blt	s8,a5,1eb44 <__gethex+0x4cc>
   1eb20:	01f4f493          	andi	s1,s1,31
   1eb24:	02100413          	li	s0,33
   1eb28:	0c048c63          	beqz	s1,1ec00 <__gethex+0x588>
   1eb2c:	01790933          	add	s2,s2,s7
   1eb30:	ffc92503          	lw	a0,-4(s2)
   1eb34:	d9cf90ef          	jal	180d0 <__hi0bits>
   1eb38:	02000793          	li	a5,32
   1eb3c:	409784bb          	subw	s1,a5,s1
   1eb40:	0c955063          	ble	s1,a0,1ec00 <__gethex+0x588>
   1eb44:	00100593          	li	a1,1
   1eb48:	000b0513          	mv	a0,s6
   1eb4c:	a39ff0ef          	jal	1e584 <rshift>
   1eb50:	0089a783          	lw	a5,8(s3)
   1eb54:	001c8c9b          	addiw	s9,s9,1
   1eb58:	02100413          	li	s0,33
   1eb5c:	0b97d263          	ble	s9,a5,1ec00 <__gethex+0x588>
   1eb60:	000a0513          	mv	a0,s4
   1eb64:	000b0593          	mv	a1,s6
   1eb68:	b08f90ef          	jal	17e70 <_Bfree>
   1eb6c:	00813783          	ld	a5,8(sp)
   1eb70:	0a300513          	li	a0,163
   1eb74:	0007b023          	sd	zero,0(a5)
   1eb78:	de9ff06f          	j	1e960 <__gethex+0x2e8>
   1eb7c:	00070d13          	mv	s10,a4
   1eb80:	c7ade8e3          	bltu	s11,s10,1e7f0 <__gethex+0x178>
   1eb84:	ca5ff06f          	j	1e828 <__gethex+0x1b0>
   1eb88:	001c0513          	addi	a0,s8,1
   1eb8c:	00000593          	li	a1,0
   1eb90:	e35ff06f          	j	1e9c4 <__gethex+0x34c>
   1eb94:	017d8c33          	add	s8,s11,s7
   1eb98:	000c4703          	lbu	a4,0(s8)
   1eb9c:	00ea87b3          	add	a5,s5,a4
   1eba0:	0007c783          	lbu	a5,0(a5)
   1eba4:	10078e63          	beqz	a5,1ecc0 <__gethex+0x648>
   1eba8:	03000693          	li	a3,48
   1ebac:	000c0d93          	mv	s11,s8
   1ebb0:	00d71e63          	bne	a4,a3,1ebcc <__gethex+0x554>
   1ebb4:	00070793          	mv	a5,a4
   1ebb8:	001d8d93          	addi	s11,s11,1
   1ebbc:	000dc703          	lbu	a4,0(s11)
   1ebc0:	fef70ce3          	beq	a4,a5,1ebb8 <__gethex+0x540>
   1ebc4:	00ea87b3          	add	a5,s5,a4
   1ebc8:	0007c783          	lbu	a5,0(a5)
   1ebcc:	0017b413          	seqz	s0,a5
   1ebd0:	000c0c93          	mv	s9,s8
   1ebd4:	00100b13          	li	s6,1
   1ebd8:	b69ff06f          	j	1e740 <__gethex+0xc8>
   1ebdc:	00100413          	li	s0,1
   1ebe0:	ec5ff06f          	j	1eaa4 <__gethex+0x42c>
   1ebe4:	02412703          	lw	a4,36(sp)
   1ebe8:	00100793          	li	a5,1
   1ebec:	40e787bb          	subw	a5,a5,a4
   1ebf0:	02f12223          	sw	a5,36(sp)
   1ebf4:	02412783          	lw	a5,36(sp)
   1ebf8:	ee0792e3          	bnez	a5,1eadc <__gethex+0x464>
   1ebfc:	01046413          	ori	s0,s0,16
   1ec00:	00813783          	ld	a5,8(sp)
   1ec04:	00040513          	mv	a0,s0
   1ec08:	0167b023          	sd	s6,0(a5)
   1ec0c:	01813783          	ld	a5,24(sp)
   1ec10:	0197a023          	sw	s9,0(a5)
   1ec14:	d4dff06f          	j	1e960 <__gethex+0x2e8>
   1ec18:	00000593          	li	a1,0
   1ec1c:	da1ff06f          	j	1e9bc <__gethex+0x344>
   1ec20:	4095043b          	subw	s0,a0,s1
   1ec24:	00040593          	mv	a1,s0
   1ec28:	000b0513          	mv	a0,s6
   1ec2c:	978fa0ef          	jal	18da4 <__any_on>
   1ec30:	00000c13          	li	s8,0
   1ec34:	04050063          	beqz	a0,1ec74 <__gethex+0x5fc>
   1ec38:	fff4071b          	addiw	a4,s0,-1
   1ec3c:	4057579b          	sraiw	a5,a4,0x5
   1ec40:	00279793          	slli	a5,a5,0x2
   1ec44:	00f907b3          	add	a5,s2,a5
   1ec48:	0007a783          	lw	a5,0(a5)
   1ec4c:	00100c13          	li	s8,1
   1ec50:	00ec16bb          	sllw	a3,s8,a4
   1ec54:	00f6f7b3          	and	a5,a3,a5
   1ec58:	00078e63          	beqz	a5,1ec74 <__gethex+0x5fc>
   1ec5c:	0cec5863          	ble	a4,s8,1ed2c <__gethex+0x6b4>
   1ec60:	ffe4059b          	addiw	a1,s0,-2
   1ec64:	000b0513          	mv	a0,s6
   1ec68:	93cfa0ef          	jal	18da4 <__any_on>
   1ec6c:	0c050063          	beqz	a0,1ed2c <__gethex+0x6b4>
   1ec70:	00300c13          	li	s8,3
   1ec74:	00040593          	mv	a1,s0
   1ec78:	000b0513          	mv	a0,s6
   1ec7c:	909ff0ef          	jal	1e584 <rshift>
   1ec80:	008c8cbb          	addw	s9,s9,s0
   1ec84:	bddff06f          	j	1e860 <__gethex+0x1e8>
   1ec88:	00000c93          	li	s9,0
   1ec8c:	af9ff06f          	j	1e784 <__gethex+0x10c>
   1ec90:	40a4843b          	subw	s0,s1,a0
   1ec94:	000b0593          	mv	a1,s6
   1ec98:	00040613          	mv	a2,s0
   1ec9c:	000a0513          	mv	a0,s4
   1eca0:	8bdf90ef          	jal	1855c <__lshift>
   1eca4:	00050b13          	mv	s6,a0
   1eca8:	408c8cbb          	subw	s9,s9,s0
   1ecac:	01850913          	addi	s2,a0,24
   1ecb0:	bb1ff06f          	j	1e860 <__gethex+0x1e8>
   1ecb4:	00278d93          	addi	s11,a5,2
   1ecb8:	00000b13          	li	s6,0
   1ecbc:	a5dff06f          	j	1e718 <__gethex+0xa0>
   1ecc0:	00070793          	mv	a5,a4
   1ecc4:	c7dff06f          	j	1e940 <__gethex+0x2c8>
   1ecc8:	017c0cb3          	add	s9,s8,s7
   1eccc:	000cc783          	lbu	a5,0(s9)
   1ecd0:	000c8c13          	mv	s8,s9
   1ecd4:	00fa8733          	add	a4,s5,a5
   1ecd8:	00074703          	lbu	a4,0(a4)
   1ecdc:	a8070ee3          	beqz	a4,1e778 <__gethex+0x100>
   1ece0:	001c0c13          	addi	s8,s8,1
   1ece4:	000c4783          	lbu	a5,0(s8)
   1ece8:	00fa8733          	add	a4,s5,a5
   1ecec:	00074703          	lbu	a4,0(a4)
   1ecf0:	fe0718e3          	bnez	a4,1ece0 <__gethex+0x668>
   1ecf4:	a85ff06f          	j	1e778 <__gethex+0x100>
   1ecf8:	00100c13          	li	s8,1
   1ecfc:	d6dff06f          	j	1ea68 <__gethex+0x3f0>
   1ed00:	02412703          	lw	a4,36(sp)
   1ed04:	b80708e3          	beqz	a4,1e894 <__gethex+0x21c>
   1ed08:	01813703          	ld	a4,24(sp)
   1ed0c:	06200513          	li	a0,98
   1ed10:	00f72023          	sw	a5,0(a4)
   1ed14:	00100793          	li	a5,1
   1ed18:	00fb2a23          	sw	a5,20(s6)
   1ed1c:	00f92023          	sw	a5,0(s2)
   1ed20:	00813783          	ld	a5,8(sp)
   1ed24:	0167b023          	sd	s6,0(a5)
   1ed28:	c39ff06f          	j	1e960 <__gethex+0x2e8>
   1ed2c:	00200c13          	li	s8,2
   1ed30:	f45ff06f          	j	1ec74 <__gethex+0x5fc>
   1ed34:	02412703          	lw	a4,36(sp)
   1ed38:	fc0708e3          	beqz	a4,1ed08 <__gethex+0x690>
   1ed3c:	b59ff06f          	j	1e894 <__gethex+0x21c>
   1ed40:	b5949ae3          	bne	s1,s9,1e894 <__gethex+0x21c>
   1ed44:	fc9752e3          	ble	s1,a4,1ed08 <__gethex+0x690>
   1ed48:	fff4859b          	addiw	a1,s1,-1
   1ed4c:	000b0513          	mv	a0,s6
   1ed50:	854fa0ef          	jal	18da4 <__any_on>
   1ed54:	b40500e3          	beqz	a0,1e894 <__gethex+0x21c>
   1ed58:	0049a783          	lw	a5,4(s3)
   1ed5c:	fadff06f          	j	1ed08 <__gethex+0x690>
   1ed60:	014b2703          	lw	a4,20(s6)
   1ed64:	00cb2783          	lw	a5,12(s6)
   1ed68:	04f75c63          	ble	a5,a4,1edc0 <__gethex+0x748>
   1ed6c:	00470793          	addi	a5,a4,4
   1ed70:	00279793          	slli	a5,a5,0x2
   1ed74:	0017071b          	addiw	a4,a4,1
   1ed78:	00eb2a23          	sw	a4,20(s6)
   1ed7c:	00fb07b3          	add	a5,s6,a5
   1ed80:	00100713          	li	a4,1
   1ed84:	00e7a423          	sw	a4,8(a5)
   1ed88:	d89ff06f          	j	1eb10 <__gethex+0x498>
   1ed8c:	0009a783          	lw	a5,0(s3)
   1ed90:	02200413          	li	s0,34
   1ed94:	fff7879b          	addiw	a5,a5,-1
   1ed98:	e6f494e3          	bne	s1,a5,1ec00 <__gethex+0x588>
   1ed9c:	4054d79b          	sraiw	a5,s1,0x5
   1eda0:	00279793          	slli	a5,a5,0x2
   1eda4:	00f90933          	add	s2,s2,a5
   1eda8:	00092503          	lw	a0,0(s2)
   1edac:	02200793          	li	a5,34
   1edb0:	0095553b          	srlw	a0,a0,s1
   1edb4:	00157413          	andi	s0,a0,1
   1edb8:	4087843b          	subw	s0,a5,s0
   1edbc:	e45ff06f          	j	1ec00 <__gethex+0x588>
   1edc0:	008b2583          	lw	a1,8(s6)
   1edc4:	000a0513          	mv	a0,s4
   1edc8:	0015859b          	addiw	a1,a1,1
   1edcc:	ff9f80ef          	jal	17dc4 <_Balloc>
   1edd0:	014b2603          	lw	a2,20(s6)
   1edd4:	00050d13          	mv	s10,a0
   1edd8:	010b0593          	addi	a1,s6,16
   1eddc:	00260613          	addi	a2,a2,2
   1ede0:	00261613          	slli	a2,a2,0x2
   1ede4:	01050513          	addi	a0,a0,16
   1ede8:	cc1f80ef          	jal	17aa8 <memcpy>
   1edec:	000b0593          	mv	a1,s6
   1edf0:	000a0513          	mv	a0,s4
   1edf4:	87cf90ef          	jal	17e70 <_Bfree>
   1edf8:	014d2703          	lw	a4,20(s10)
   1edfc:	018d0913          	addi	s2,s10,24
   1ee00:	000d0b13          	mv	s6,s10
   1ee04:	f69ff06f          	j	1ed6c <__gethex+0x6f4>

000000000001ee08 <__hexnan>:
   1ee08:	fd010113          	addi	sp,sp,-48
   1ee0c:	01213c23          	sd	s2,24(sp)
   1ee10:	0005a903          	lw	s2,0(a1)
   1ee14:	02913023          	sd	s1,32(sp)
   1ee18:	02813423          	sd	s0,40(sp)
   1ee1c:	4059549b          	sraiw	s1,s2,0x5
   1ee20:	00249493          	slli	s1,s1,0x2
   1ee24:	01313823          	sd	s3,16(sp)
   1ee28:	01413423          	sd	s4,8(sp)
   1ee2c:	01f97913          	andi	s2,s2,31
   1ee30:	009604b3          	add	s1,a2,s1
   1ee34:	00090463          	beqz	s2,1ee3c <__hexnan+0x34>
   1ee38:	00448493          	addi	s1,s1,4
   1ee3c:	00053683          	ld	a3,0(a0)
   1ee40:	ffc48313          	addi	t1,s1,-4
   1ee44:	00021fb7          	lui	t6,0x21
   1ee48:	fe04ae23          	sw	zero,-4(s1)
   1ee4c:	00030f13          	mv	t5,t1
   1ee50:	00030593          	mv	a1,t1
   1ee54:	00000813          	li	a6,0
   1ee58:	00000293          	li	t0,0
   1ee5c:	00000e93          	li	t4,0
   1ee60:	3f0f8f93          	addi	t6,t6,1008 # 213f0 <__hexdig>
   1ee64:	00800413          	li	s0,8
   1ee68:	02000393          	li	t2,32
   1ee6c:	00700993          	li	s3,7
   1ee70:	00168693          	addi	a3,a3,1
   1ee74:	0006c703          	lbu	a4,0(a3)
   1ee78:	08070263          	beqz	a4,1eefc <__hexnan+0xf4>
   1ee7c:	02071793          	slli	a5,a4,0x20
   1ee80:	0207d793          	srli	a5,a5,0x20
   1ee84:	01f787b3          	add	a5,a5,t6
   1ee88:	0007c783          	lbu	a5,0(a5)
   1ee8c:	0e079263          	bnez	a5,1ef70 <__hexnan+0x168>
   1ee90:	10e3ea63          	bltu	t2,a4,1efa4 <__hexnan+0x19c>
   1ee94:	fdd2dee3          	ble	t4,t0,1ee70 <__hexnan+0x68>
   1ee98:	03e5fe63          	bleu	t5,a1,1eed4 <__hexnan+0xcc>
   1ee9c:	0309cc63          	blt	s3,a6,1eed4 <__hexnan+0xcc>
   1eea0:	4104083b          	subw	a6,s0,a6
   1eea4:	0005a883          	lw	a7,0(a1)
   1eea8:	0028181b          	slliw	a6,a6,0x2
   1eeac:	41038a3b          	subw	s4,t2,a6
   1eeb0:	00058793          	mv	a5,a1
   1eeb4:	0047ae03          	lw	t3,4(a5)
   1eeb8:	00478793          	addi	a5,a5,4
   1eebc:	014e173b          	sllw	a4,t3,s4
   1eec0:	01176733          	or	a4,a4,a7
   1eec4:	010e58bb          	srlw	a7,t3,a6
   1eec8:	fee7ae23          	sw	a4,-4(a5)
   1eecc:	0117a023          	sw	a7,0(a5)
   1eed0:	ffe7e2e3          	bltu	a5,t5,1eeb4 <__hexnan+0xac>
   1eed4:	00800813          	li	a6,8
   1eed8:	f8b67ce3          	bleu	a1,a2,1ee70 <__hexnan+0x68>
   1eedc:	fe05ae23          	sw	zero,-4(a1)
   1eee0:	00168693          	addi	a3,a3,1
   1eee4:	0006c703          	lbu	a4,0(a3)
   1eee8:	ffc58f13          	addi	t5,a1,-4
   1eeec:	000e8293          	mv	t0,t4
   1eef0:	000f0593          	mv	a1,t5
   1eef4:	00000813          	li	a6,0
   1eef8:	f80712e3          	bnez	a4,1ee7c <__hexnan+0x74>
   1eefc:	0a0e8863          	beqz	t4,1efac <__hexnan+0x1a4>
   1ef00:	01e5f663          	bleu	t5,a1,1ef0c <__hexnan+0x104>
   1ef04:	00700793          	li	a5,7
   1ef08:	1307d063          	ble	a6,a5,1f028 <__hexnan+0x220>
   1ef0c:	0cb67063          	bleu	a1,a2,1efcc <__hexnan+0x1c4>
   1ef10:	00060793          	mv	a5,a2
   1ef14:	00458593          	addi	a1,a1,4
   1ef18:	ffc5a703          	lw	a4,-4(a1)
   1ef1c:	00478793          	addi	a5,a5,4
   1ef20:	fee7ae23          	sw	a4,-4(a5)
   1ef24:	feb378e3          	bleu	a1,t1,1ef14 <__hexnan+0x10c>
   1ef28:	00478793          	addi	a5,a5,4
   1ef2c:	fe07ae23          	sw	zero,-4(a5)
   1ef30:	fef37ce3          	bleu	a5,t1,1ef28 <__hexnan+0x120>
   1ef34:	ffc4a783          	lw	a5,-4(s1)
   1ef38:	00500513          	li	a0,5
   1ef3c:	06079a63          	bnez	a5,1efb0 <__hexnan+0x1a8>
   1ef40:	0a660863          	beq	a2,t1,1eff0 <__hexnan+0x1e8>
   1ef44:	ffc30313          	addi	t1,t1,-4
   1ef48:	00032783          	lw	a5,0(t1)
   1ef4c:	fe078ae3          	beqz	a5,1ef40 <__hexnan+0x138>
   1ef50:	00500513          	li	a0,5
   1ef54:	02813403          	ld	s0,40(sp)
   1ef58:	02013483          	ld	s1,32(sp)
   1ef5c:	01813903          	ld	s2,24(sp)
   1ef60:	01013983          	ld	s3,16(sp)
   1ef64:	00813a03          	ld	s4,8(sp)
   1ef68:	03010113          	addi	sp,sp,48
   1ef6c:	00008067          	ret
   1ef70:	0018081b          	addiw	a6,a6,1
   1ef74:	001e8e9b          	addiw	t4,t4,1
   1ef78:	01045a63          	ble	a6,s0,1ef8c <__hexnan+0x184>
   1ef7c:	eeb67ae3          	bleu	a1,a2,1ee70 <__hexnan+0x68>
   1ef80:	fe05ae23          	sw	zero,-4(a1)
   1ef84:	00100813          	li	a6,1
   1ef88:	ffc58593          	addi	a1,a1,-4
   1ef8c:	0005a703          	lw	a4,0(a1)
   1ef90:	00f7f793          	andi	a5,a5,15
   1ef94:	0047171b          	slliw	a4,a4,0x4
   1ef98:	00f767b3          	or	a5,a4,a5
   1ef9c:	00f5a023          	sw	a5,0(a1)
   1efa0:	ed1ff06f          	j	1ee70 <__hexnan+0x68>
   1efa4:	02900793          	li	a5,41
   1efa8:	06f70863          	beq	a4,a5,1f018 <__hexnan+0x210>
   1efac:	00400513          	li	a0,4
   1efb0:	02813403          	ld	s0,40(sp)
   1efb4:	02013483          	ld	s1,32(sp)
   1efb8:	01813903          	ld	s2,24(sp)
   1efbc:	01013983          	ld	s3,16(sp)
   1efc0:	00813a03          	ld	s4,8(sp)
   1efc4:	03010113          	addi	sp,sp,48
   1efc8:	00008067          	ret
   1efcc:	ffc4a783          	lw	a5,-4(s1)
   1efd0:	f60904e3          	beqz	s2,1ef38 <__hexnan+0x130>
   1efd4:	02000713          	li	a4,32
   1efd8:	4127093b          	subw	s2,a4,s2
   1efdc:	fff00713          	li	a4,-1
   1efe0:	0127573b          	srlw	a4,a4,s2
   1efe4:	00f777b3          	and	a5,a4,a5
   1efe8:	fef4ae23          	sw	a5,-4(s1)
   1efec:	f4dff06f          	j	1ef38 <__hexnan+0x130>
   1eff0:	00100793          	li	a5,1
   1eff4:	00500513          	li	a0,5
   1eff8:	02813403          	ld	s0,40(sp)
   1effc:	02013483          	ld	s1,32(sp)
   1f000:	01813903          	ld	s2,24(sp)
   1f004:	01013983          	ld	s3,16(sp)
   1f008:	00813a03          	ld	s4,8(sp)
   1f00c:	00f32023          	sw	a5,0(t1)
   1f010:	03010113          	addi	sp,sp,48
   1f014:	00008067          	ret
   1f018:	00168693          	addi	a3,a3,1
   1f01c:	00d53023          	sd	a3,0(a0)
   1f020:	ee0e90e3          	bnez	t4,1ef00 <__hexnan+0xf8>
   1f024:	f89ff06f          	j	1efac <__hexnan+0x1a4>
   1f028:	00800793          	li	a5,8
   1f02c:	4107883b          	subw	a6,a5,a6
   1f030:	0005a683          	lw	a3,0(a1)
   1f034:	0028181b          	slliw	a6,a6,0x2
   1f038:	02000893          	li	a7,32
   1f03c:	410888bb          	subw	a7,a7,a6
   1f040:	00058793          	mv	a5,a1
   1f044:	0047a503          	lw	a0,4(a5)
   1f048:	00478793          	addi	a5,a5,4
   1f04c:	0115173b          	sllw	a4,a0,a7
   1f050:	00d76733          	or	a4,a4,a3
   1f054:	010556bb          	srlw	a3,a0,a6
   1f058:	fee7ae23          	sw	a4,-4(a5)
   1f05c:	00d7a023          	sw	a3,0(a5)
   1f060:	ffe7e2e3          	bltu	a5,t5,1f044 <__hexnan+0x23c>
   1f064:	ea9ff06f          	j	1ef0c <__hexnan+0x104>

000000000001f068 <strncmp>:
   1f068:	0c060263          	beqz	a2,1f12c <strncmp+0xc4>
   1f06c:	00b567b3          	or	a5,a0,a1
   1f070:	0077f793          	andi	a5,a5,7
   1f074:	06079e63          	bnez	a5,1f0f0 <strncmp+0x88>
   1f078:	00700893          	li	a7,7
   1f07c:	06c8fa63          	bleu	a2,a7,1f0f0 <strncmp+0x88>
   1f080:	00053783          	ld	a5,0(a0)
   1f084:	0005b703          	ld	a4,0(a1)
   1f088:	06e79463          	bne	a5,a4,1f0f0 <strncmp+0x88>
   1f08c:	ff860613          	addi	a2,a2,-8
   1f090:	08060e63          	beqz	a2,1f12c <strncmp+0xc4>
   1f094:	00024737          	lui	a4,0x24
   1f098:	4d073e03          	ld	t3,1232(a4) # 244d0 <mask+0x50>
   1f09c:	00024737          	lui	a4,0x24
   1f0a0:	4d873303          	ld	t1,1240(a4) # 244d8 <mask+0x58>
   1f0a4:	fff7c713          	not	a4,a5
   1f0a8:	01c787b3          	add	a5,a5,t3
   1f0ac:	00f777b3          	and	a5,a4,a5
   1f0b0:	0067f7b3          	and	a5,a5,t1
   1f0b4:	02078863          	beqz	a5,1f0e4 <strncmp+0x7c>
   1f0b8:	0740006f          	j	1f12c <strncmp+0xc4>
   1f0bc:	00053703          	ld	a4,0(a0)
   1f0c0:	0005b683          	ld	a3,0(a1)
   1f0c4:	01c70833          	add	a6,a4,t3
   1f0c8:	fff74793          	not	a5,a4
   1f0cc:	00f877b3          	and	a5,a6,a5
   1f0d0:	0067f7b3          	and	a5,a5,t1
   1f0d4:	00d71e63          	bne	a4,a3,1f0f0 <strncmp+0x88>
   1f0d8:	ff860613          	addi	a2,a2,-8
   1f0dc:	04060863          	beqz	a2,1f12c <strncmp+0xc4>
   1f0e0:	04079663          	bnez	a5,1f12c <strncmp+0xc4>
   1f0e4:	00850513          	addi	a0,a0,8
   1f0e8:	00858593          	addi	a1,a1,8
   1f0ec:	fcc8e8e3          	bltu	a7,a2,1f0bc <strncmp+0x54>
   1f0f0:	00054703          	lbu	a4,0(a0)
   1f0f4:	0005c783          	lbu	a5,0(a1)
   1f0f8:	fff60613          	addi	a2,a2,-1
   1f0fc:	02e79c63          	bne	a5,a4,1f134 <strncmp+0xcc>
   1f100:	02060663          	beqz	a2,1f12c <strncmp+0xc4>
   1f104:	02078463          	beqz	a5,1f12c <strncmp+0xc4>
   1f108:	00150513          	addi	a0,a0,1
   1f10c:	00158593          	addi	a1,a1,1
   1f110:	00054783          	lbu	a5,0(a0)
   1f114:	0005c703          	lbu	a4,0(a1)
   1f118:	fff60613          	addi	a2,a2,-1
   1f11c:	fee782e3          	beq	a5,a4,1f100 <strncmp+0x98>
   1f120:	00070513          	mv	a0,a4
   1f124:	40a7853b          	subw	a0,a5,a0
   1f128:	00008067          	ret
   1f12c:	00000513          	li	a0,0
   1f130:	00008067          	ret
   1f134:	00078513          	mv	a0,a5
   1f138:	00070793          	mv	a5,a4
   1f13c:	fe9ff06f          	j	1f124 <strncmp+0xbc>

000000000001f140 <__ssprint_r>:
   1f140:	01063783          	ld	a5,16(a2)
   1f144:	fa010113          	addi	sp,sp,-96
   1f148:	03413823          	sd	s4,48(sp)
   1f14c:	04113c23          	sd	ra,88(sp)
   1f150:	04813823          	sd	s0,80(sp)
   1f154:	04913423          	sd	s1,72(sp)
   1f158:	05213023          	sd	s2,64(sp)
   1f15c:	03313c23          	sd	s3,56(sp)
   1f160:	03513423          	sd	s5,40(sp)
   1f164:	03613023          	sd	s6,32(sp)
   1f168:	01713c23          	sd	s7,24(sp)
   1f16c:	01813823          	sd	s8,16(sp)
   1f170:	01913423          	sd	s9,8(sp)
   1f174:	01a13023          	sd	s10,0(sp)
   1f178:	00060a13          	mv	s4,a2
   1f17c:	06078a63          	beqz	a5,1f1f0 <__ssprint_r+0xb0>
   1f180:	00050a93          	mv	s5,a0
   1f184:	00063b83          	ld	s7,0(a2)
   1f188:	0005b503          	ld	a0,0(a1)
   1f18c:	00c5a403          	lw	s0,12(a1)
   1f190:	00058993          	mv	s3,a1
   1f194:	00000c13          	li	s8,0
   1f198:	00000493          	li	s1,0
   1f19c:	08048a63          	beqz	s1,1f230 <__ssprint_r+0xf0>
   1f1a0:	00040b13          	mv	s6,s0
   1f1a4:	0884fe63          	bleu	s0,s1,1f240 <__ssprint_r+0x100>
   1f1a8:	0004841b          	sext.w	s0,s1
   1f1ac:	00040913          	mv	s2,s0
   1f1b0:	00090b13          	mv	s6,s2
   1f1b4:	000c0593          	mv	a1,s8
   1f1b8:	000b0613          	mv	a2,s6
   1f1bc:	a0df80ef          	jal	17bc8 <memmove>
   1f1c0:	00c9a703          	lw	a4,12(s3)
   1f1c4:	0009b503          	ld	a0,0(s3)
   1f1c8:	010a3783          	ld	a5,16(s4)
   1f1cc:	4087043b          	subw	s0,a4,s0
   1f1d0:	01650533          	add	a0,a0,s6
   1f1d4:	0089a623          	sw	s0,12(s3)
   1f1d8:	00a9b023          	sd	a0,0(s3)
   1f1dc:	412787b3          	sub	a5,a5,s2
   1f1e0:	00fa3823          	sd	a5,16(s4)
   1f1e4:	012c0c33          	add	s8,s8,s2
   1f1e8:	412484b3          	sub	s1,s1,s2
   1f1ec:	fa0798e3          	bnez	a5,1f19c <__ssprint_r+0x5c>
   1f1f0:	000a2423          	sw	zero,8(s4)
   1f1f4:	00000513          	li	a0,0
   1f1f8:	05813083          	ld	ra,88(sp)
   1f1fc:	05013403          	ld	s0,80(sp)
   1f200:	04813483          	ld	s1,72(sp)
   1f204:	04013903          	ld	s2,64(sp)
   1f208:	03813983          	ld	s3,56(sp)
   1f20c:	03013a03          	ld	s4,48(sp)
   1f210:	02813a83          	ld	s5,40(sp)
   1f214:	02013b03          	ld	s6,32(sp)
   1f218:	01813b83          	ld	s7,24(sp)
   1f21c:	01013c03          	ld	s8,16(sp)
   1f220:	00813c83          	ld	s9,8(sp)
   1f224:	00013d03          	ld	s10,0(sp)
   1f228:	06010113          	addi	sp,sp,96
   1f22c:	00008067          	ret
   1f230:	000bbc03          	ld	s8,0(s7)
   1f234:	008bb483          	ld	s1,8(s7)
   1f238:	010b8b93          	addi	s7,s7,16
   1f23c:	f61ff06f          	j	1f19c <__ssprint_r+0x5c>
   1f240:	0109d703          	lhu	a4,16(s3)
   1f244:	0004891b          	sext.w	s2,s1
   1f248:	48077793          	andi	a5,a4,1152
   1f24c:	f60784e3          	beqz	a5,1f1b4 <__ssprint_r+0x74>
   1f250:	0209ab03          	lw	s6,32(s3)
   1f254:	0189b583          	ld	a1,24(s3)
   1f258:	00148693          	addi	a3,s1,1
   1f25c:	001b179b          	slliw	a5,s6,0x1
   1f260:	01678b3b          	addw	s6,a5,s6
   1f264:	01fb579b          	srliw	a5,s6,0x1f
   1f268:	40b50533          	sub	a0,a0,a1
   1f26c:	01678b3b          	addw	s6,a5,s6
   1f270:	00050c9b          	sext.w	s9,a0
   1f274:	401b5b1b          	sraiw	s6,s6,0x1
   1f278:	000c8913          	mv	s2,s9
   1f27c:	000b0613          	mv	a2,s6
   1f280:	012687b3          	add	a5,a3,s2
   1f284:	00f67863          	bleu	a5,a2,1f294 <__ssprint_r+0x154>
   1f288:	00148b1b          	addiw	s6,s1,1
   1f28c:	019b0b3b          	addw	s6,s6,s9
   1f290:	000b0613          	mv	a2,s6
   1f294:	40077713          	andi	a4,a4,1024
   1f298:	06070063          	beqz	a4,1f2f8 <__ssprint_r+0x1b8>
   1f29c:	00060593          	mv	a1,a2
   1f2a0:	000a8513          	mv	a0,s5
   1f2a4:	ac1f10ef          	jal	10d64 <_malloc_r>
   1f2a8:	00050d13          	mv	s10,a0
   1f2ac:	06050463          	beqz	a0,1f314 <__ssprint_r+0x1d4>
   1f2b0:	0189b583          	ld	a1,24(s3)
   1f2b4:	00090613          	mv	a2,s2
   1f2b8:	ff0f80ef          	jal	17aa8 <memcpy>
   1f2bc:	0109d783          	lhu	a5,16(s3)
   1f2c0:	b7f7f793          	andi	a5,a5,-1153
   1f2c4:	0807e793          	ori	a5,a5,128
   1f2c8:	00f99823          	sh	a5,16(s3)
   1f2cc:	0004841b          	sext.w	s0,s1
   1f2d0:	012d0533          	add	a0,s10,s2
   1f2d4:	419b0cbb          	subw	s9,s6,s9
   1f2d8:	0369a023          	sw	s6,32(s3)
   1f2dc:	01a9bc23          	sd	s10,24(s3)
   1f2e0:	00a9b023          	sd	a0,0(s3)
   1f2e4:	0199a623          	sw	s9,12(s3)
   1f2e8:	00040913          	mv	s2,s0
   1f2ec:	00040b13          	mv	s6,s0
   1f2f0:	ed24f2e3          	bleu	s2,s1,1f1b4 <__ssprint_r+0x74>
   1f2f4:	ebdff06f          	j	1f1b0 <__ssprint_r+0x70>
   1f2f8:	000a8513          	mv	a0,s5
   1f2fc:	b2df90ef          	jal	18e28 <_realloc_r>
   1f300:	00050d13          	mv	s10,a0
   1f304:	fc0514e3          	bnez	a0,1f2cc <__ssprint_r+0x18c>
   1f308:	0189b583          	ld	a1,24(s3)
   1f30c:	000a8513          	mv	a0,s5
   1f310:	87df70ef          	jal	16b8c <_free_r>
   1f314:	00c00793          	li	a5,12
   1f318:	00faa023          	sw	a5,0(s5)
   1f31c:	0109d783          	lhu	a5,16(s3)
   1f320:	fff00513          	li	a0,-1
   1f324:	0407e793          	ori	a5,a5,64
   1f328:	00f99823          	sh	a5,16(s3)
   1f32c:	000a3823          	sd	zero,16(s4)
   1f330:	000a2423          	sw	zero,8(s4)
   1f334:	ec5ff06f          	j	1f1f8 <__ssprint_r+0xb8>

000000000001f338 <_svfiprintf_r>:
   1f338:	0105d783          	lhu	a5,16(a1)
   1f33c:	e7010113          	addi	sp,sp,-400
   1f340:	16913c23          	sd	s1,376(sp)
   1f344:	15613823          	sd	s6,336(sp)
   1f348:	15713423          	sd	s7,328(sp)
   1f34c:	18113423          	sd	ra,392(sp)
   1f350:	18813023          	sd	s0,384(sp)
   1f354:	17213823          	sd	s2,368(sp)
   1f358:	17313423          	sd	s3,360(sp)
   1f35c:	17413023          	sd	s4,352(sp)
   1f360:	15513c23          	sd	s5,344(sp)
   1f364:	15813023          	sd	s8,320(sp)
   1f368:	13913c23          	sd	s9,312(sp)
   1f36c:	13a13823          	sd	s10,304(sp)
   1f370:	13b13423          	sd	s11,296(sp)
   1f374:	0807f793          	andi	a5,a5,128
   1f378:	02d13023          	sd	a3,32(sp)
   1f37c:	00058b13          	mv	s6,a1
   1f380:	00050b93          	mv	s7,a0
   1f384:	00060493          	mv	s1,a2
   1f388:	00078663          	beqz	a5,1f394 <_svfiprintf_r+0x5c>
   1f38c:	0185b783          	ld	a5,24(a1)
   1f390:	440786e3          	beqz	a5,1ffdc <_svfiprintf_r+0xca4>
   1f394:	0a010993          	addi	s3,sp,160
   1f398:	09f10793          	addi	a5,sp,159
   1f39c:	000216b7          	lui	a3,0x21
   1f3a0:	40f98733          	sub	a4,s3,a5
   1f3a4:	4f068693          	addi	a3,a3,1264 # 214f0 <__hexdig+0x100>
   1f3a8:	00021937          	lui	s2,0x21
   1f3ac:	07313023          	sd	s3,96(sp)
   1f3b0:	06013823          	sd	zero,112(sp)
   1f3b4:	06012423          	sw	zero,104(sp)
   1f3b8:	00098793          	mv	a5,s3
   1f3bc:	02013823          	sd	zero,48(sp)
   1f3c0:	00012e23          	sw	zero,28(sp)
   1f3c4:	02d13423          	sd	a3,40(sp)
   1f3c8:	65890913          	addi	s2,s2,1624 # 21658 <blanks.4122>
   1f3cc:	04e12623          	sw	a4,76(sp)
   1f3d0:	0004c703          	lbu	a4,0(s1)
   1f3d4:	080704e3          	beqz	a4,1fc5c <_svfiprintf_r+0x924>
   1f3d8:	02500693          	li	a3,37
   1f3dc:	00048413          	mv	s0,s1
   1f3e0:	00d71663          	bne	a4,a3,1f3ec <_svfiprintf_r+0xb4>
   1f3e4:	0580006f          	j	1f43c <_svfiprintf_r+0x104>
   1f3e8:	00d70863          	beq	a4,a3,1f3f8 <_svfiprintf_r+0xc0>
   1f3ec:	00140413          	addi	s0,s0,1
   1f3f0:	00044703          	lbu	a4,0(s0)
   1f3f4:	fe071ae3          	bnez	a4,1f3e8 <_svfiprintf_r+0xb0>
   1f3f8:	40940a3b          	subw	s4,s0,s1
   1f3fc:	040a0063          	beqz	s4,1f43c <_svfiprintf_r+0x104>
   1f400:	07013683          	ld	a3,112(sp)
   1f404:	06812703          	lw	a4,104(sp)
   1f408:	000a0613          	mv	a2,s4
   1f40c:	00c686b3          	add	a3,a3,a2
   1f410:	0017071b          	addiw	a4,a4,1
   1f414:	0097b023          	sd	s1,0(a5)
   1f418:	00c7b423          	sd	a2,8(a5)
   1f41c:	06d13823          	sd	a3,112(sp)
   1f420:	06e12423          	sw	a4,104(sp)
   1f424:	00700693          	li	a3,7
   1f428:	01078793          	addi	a5,a5,16
   1f42c:	1ae6c4e3          	blt	a3,a4,1fdd4 <_svfiprintf_r+0xa9c>
   1f430:	01c12703          	lw	a4,28(sp)
   1f434:	0147073b          	addw	a4,a4,s4
   1f438:	00e12e23          	sw	a4,28(sp)
   1f43c:	00044703          	lbu	a4,0(s0)
   1f440:	020702e3          	beqz	a4,1fc64 <_svfiprintf_r+0x92c>
   1f444:	00140493          	addi	s1,s0,1
   1f448:	04010ba3          	sb	zero,87(sp)
   1f44c:	00000513          	li	a0,0
   1f450:	00000813          	li	a6,0
   1f454:	fff00413          	li	s0,-1
   1f458:	00012a23          	sw	zero,20(sp)
   1f45c:	00000a93          	li	s5,0
   1f460:	05800613          	li	a2,88
   1f464:	00900593          	li	a1,9
   1f468:	02a00893          	li	a7,42
   1f46c:	0004c683          	lbu	a3,0(s1)
   1f470:	00148493          	addi	s1,s1,1
   1f474:	fe06871b          	addiw	a4,a3,-32
   1f478:	1ee66263          	bltu	a2,a4,1f65c <_svfiprintf_r+0x324>
   1f47c:	02813303          	ld	t1,40(sp)
   1f480:	02071713          	slli	a4,a4,0x20
   1f484:	01e75713          	srli	a4,a4,0x1e
   1f488:	00670733          	add	a4,a4,t1
   1f48c:	00072703          	lw	a4,0(a4)
   1f490:	00070067          	jr	a4
   1f494:	010aea93          	ori	s5,s5,16
   1f498:	fd5ff06f          	j	1f46c <_svfiprintf_r+0x134>
   1f49c:	02013703          	ld	a4,32(sp)
   1f4a0:	00072683          	lw	a3,0(a4)
   1f4a4:	00870713          	addi	a4,a4,8
   1f4a8:	02e13023          	sd	a4,32(sp)
   1f4ac:	00d12a23          	sw	a3,20(sp)
   1f4b0:	fa06dee3          	bgez	a3,1f46c <_svfiprintf_r+0x134>
   1f4b4:	40d0073b          	negw	a4,a3
   1f4b8:	00e12a23          	sw	a4,20(sp)
   1f4bc:	004aea93          	ori	s5,s5,4
   1f4c0:	fadff06f          	j	1f46c <_svfiprintf_r+0x134>
   1f4c4:	03000713          	li	a4,48
   1f4c8:	04e10c23          	sb	a4,88(sp)
   1f4cc:	07800713          	li	a4,120
   1f4d0:	04e10ca3          	sb	a4,89(sp)
   1f4d4:	02013703          	ld	a4,32(sp)
   1f4d8:	04010ba3          	sb	zero,87(sp)
   1f4dc:	002ae613          	ori	a2,s5,2
   1f4e0:	00870693          	addi	a3,a4,8
   1f4e4:	00073703          	ld	a4,0(a4)
   1f4e8:	280442e3          	bltz	s0,1ff6c <_svfiprintf_r+0xc34>
   1f4ec:	f7fafa93          	andi	s5,s5,-129
   1f4f0:	02d13023          	sd	a3,32(sp)
   1f4f4:	002aea93          	ori	s5,s5,2
   1f4f8:	1c070ee3          	beqz	a4,1fed4 <_svfiprintf_r+0xb9c>
   1f4fc:	000226b7          	lui	a3,0x22
   1f500:	d1068693          	addi	a3,a3,-752 # 21d10 <zeroes.4123+0x6a8>
   1f504:	00000613          	li	a2,0
   1f508:	02d13823          	sd	a3,48(sp)
   1f50c:	00098d13          	mv	s10,s3
   1f510:	03013583          	ld	a1,48(sp)
   1f514:	00f77693          	andi	a3,a4,15
   1f518:	fffd0d13          	addi	s10,s10,-1
   1f51c:	00d586b3          	add	a3,a1,a3
   1f520:	0006c683          	lbu	a3,0(a3)
   1f524:	00475713          	srli	a4,a4,0x4
   1f528:	00dd0023          	sb	a3,0(s10)
   1f52c:	fe0712e3          	bnez	a4,1f510 <_svfiprintf_r+0x1d8>
   1f530:	41a98c33          	sub	s8,s3,s10
   1f534:	01812c23          	sw	s8,24(sp)
   1f538:	0d00006f          	j	1f608 <_svfiprintf_r+0x2d0>
   1f53c:	00100513          	li	a0,1
   1f540:	02b00813          	li	a6,43
   1f544:	f29ff06f          	j	1f46c <_svfiprintf_r+0x134>
   1f548:	380514e3          	bnez	a0,200d0 <_svfiprintf_r+0xd98>
   1f54c:	010af713          	andi	a4,s5,16
   1f550:	44070863          	beqz	a4,1f9a0 <_svfiprintf_r+0x668>
   1f554:	02013703          	ld	a4,32(sp)
   1f558:	04010ba3          	sb	zero,87(sp)
   1f55c:	00870693          	addi	a3,a4,8
   1f560:	00073703          	ld	a4,0(a4)
   1f564:	44044c63          	bltz	s0,1f9bc <_svfiprintf_r+0x684>
   1f568:	02d13023          	sd	a3,32(sp)
   1f56c:	f7fafa93          	andi	s5,s5,-129
   1f570:	10070ee3          	beqz	a4,1fe8c <_svfiprintf_r+0xb54>
   1f574:	00000613          	li	a2,0
   1f578:	00098d13          	mv	s10,s3
   1f57c:	00777693          	andi	a3,a4,7
   1f580:	fffd0d13          	addi	s10,s10,-1
   1f584:	0306869b          	addiw	a3,a3,48
   1f588:	00dd0023          	sb	a3,0(s10)
   1f58c:	00375713          	srli	a4,a4,0x3
   1f590:	fe0716e3          	bnez	a4,1f57c <_svfiprintf_r+0x244>
   1f594:	001af713          	andi	a4,s5,1
   1f598:	f8070ce3          	beqz	a4,1f530 <_svfiprintf_r+0x1f8>
   1f59c:	03000713          	li	a4,48
   1f5a0:	f8e688e3          	beq	a3,a4,1f530 <_svfiprintf_r+0x1f8>
   1f5a4:	fffd0693          	addi	a3,s10,-1
   1f5a8:	40d98c33          	sub	s8,s3,a3
   1f5ac:	feed0fa3          	sb	a4,-1(s10)
   1f5b0:	01812c23          	sw	s8,24(sp)
   1f5b4:	00068d13          	mv	s10,a3
   1f5b8:	0500006f          	j	1f608 <_svfiprintf_r+0x2d0>
   1f5bc:	001aea93          	ori	s5,s5,1
   1f5c0:	eadff06f          	j	1f46c <_svfiprintf_r+0x134>
   1f5c4:	34051ee3          	bnez	a0,20120 <_svfiprintf_r+0xde8>
   1f5c8:	010aea93          	ori	s5,s5,16
   1f5cc:	010af713          	andi	a4,s5,16
   1f5d0:	080702e3          	beqz	a4,1fe54 <_svfiprintf_r+0xb1c>
   1f5d4:	02013683          	ld	a3,32(sp)
   1f5d8:	0006b703          	ld	a4,0(a3)
   1f5dc:	00868693          	addi	a3,a3,8
   1f5e0:	02d13023          	sd	a3,32(sp)
   1f5e4:	080746e3          	bltz	a4,1fe70 <_svfiprintf_r+0xb38>
   1f5e8:	05714603          	lbu	a2,87(sp)
   1f5ec:	38044c63          	bltz	s0,1f984 <_svfiprintf_r+0x64c>
   1f5f0:	f7fafa93          	andi	s5,s5,-129
   1f5f4:	22071a63          	bnez	a4,1f828 <_svfiprintf_r+0x4f0>
   1f5f8:	14041ce3          	bnez	s0,1ff50 <_svfiprintf_r+0xc18>
   1f5fc:	00000413          	li	s0,0
   1f600:	00012c23          	sw	zero,24(sp)
   1f604:	00098d13          	mv	s10,s3
   1f608:	01812703          	lw	a4,24(sp)
   1f60c:	00040c93          	mv	s9,s0
   1f610:	00e45463          	ble	a4,s0,1f618 <_svfiprintf_r+0x2e0>
   1f614:	00070c93          	mv	s9,a4
   1f618:	00c03633          	snez	a2,a2
   1f61c:	00cc8cbb          	addw	s9,s9,a2
   1f620:	05c0006f          	j	1f67c <_svfiprintf_r+0x344>
   1f624:	00012a23          	sw	zero,20(sp)
   1f628:	fd06871b          	addiw	a4,a3,-48
   1f62c:	01412e03          	lw	t3,20(sp)
   1f630:	00148493          	addi	s1,s1,1
   1f634:	fff4c683          	lbu	a3,-1(s1)
   1f638:	001e131b          	slliw	t1,t3,0x1
   1f63c:	003e1a1b          	slliw	s4,t3,0x3
   1f640:	01430a3b          	addw	s4,t1,s4
   1f644:	0147073b          	addw	a4,a4,s4
   1f648:	00e12a23          	sw	a4,20(sp)
   1f64c:	fd06871b          	addiw	a4,a3,-48
   1f650:	fce5fee3          	bleu	a4,a1,1f62c <_svfiprintf_r+0x2f4>
   1f654:	fe06871b          	addiw	a4,a3,-32
   1f658:	e2e672e3          	bleu	a4,a2,1f47c <_svfiprintf_r+0x144>
   1f65c:	260516e3          	bnez	a0,200c8 <_svfiprintf_r+0xd90>
   1f660:	60068263          	beqz	a3,1fc64 <_svfiprintf_r+0x92c>
   1f664:	00100c93          	li	s9,1
   1f668:	06d10c23          	sb	a3,120(sp)
   1f66c:	04010ba3          	sb	zero,87(sp)
   1f670:	01912c23          	sw	s9,24(sp)
   1f674:	07810d13          	addi	s10,sp,120
   1f678:	00000413          	li	s0,0
   1f67c:	002af713          	andi	a4,s5,2
   1f680:	02e12c23          	sw	a4,56(sp)
   1f684:	00070463          	beqz	a4,1f68c <_svfiprintf_r+0x354>
   1f688:	002c8c9b          	addiw	s9,s9,2
   1f68c:	084af713          	andi	a4,s5,132
   1f690:	04e12423          	sw	a4,72(sp)
   1f694:	38071463          	bnez	a4,1fa1c <_svfiprintf_r+0x6e4>
   1f698:	01412703          	lw	a4,20(sp)
   1f69c:	41970dbb          	subw	s11,a4,s9
   1f6a0:	37b05e63          	blez	s11,1fa1c <_svfiprintf_r+0x6e4>
   1f6a4:	01000713          	li	a4,16
   1f6a8:	07013683          	ld	a3,112(sp)
   1f6ac:	19b752e3          	ble	s11,a4,20030 <_svfiprintf_r+0xcf8>
   1f6b0:	01000c13          	li	s8,16
   1f6b4:	06812703          	lw	a4,104(sp)
   1f6b8:	05213023          	sd	s2,64(sp)
   1f6bc:	00700e13          	li	t3,7
   1f6c0:	000c0a13          	mv	s4,s8
   1f6c4:	00c0006f          	j	1f6d0 <_svfiprintf_r+0x398>
   1f6c8:	ff0d8d9b          	addiw	s11,s11,-16
   1f6cc:	05ba5a63          	ble	s11,s4,1f720 <_svfiprintf_r+0x3e8>
   1f6d0:	01068693          	addi	a3,a3,16
   1f6d4:	0017071b          	addiw	a4,a4,1
   1f6d8:	0127b023          	sd	s2,0(a5)
   1f6dc:	0187b423          	sd	s8,8(a5)
   1f6e0:	06d13823          	sd	a3,112(sp)
   1f6e4:	06e12423          	sw	a4,104(sp)
   1f6e8:	01078793          	addi	a5,a5,16
   1f6ec:	fcee5ee3          	ble	a4,t3,1f6c8 <_svfiprintf_r+0x390>
   1f6f0:	06010613          	addi	a2,sp,96
   1f6f4:	000b0593          	mv	a1,s6
   1f6f8:	000b8513          	mv	a0,s7
   1f6fc:	01c13423          	sd	t3,8(sp)
   1f700:	a41ff0ef          	jal	1f140 <__ssprint_r>
   1f704:	56051c63          	bnez	a0,1fc7c <_svfiprintf_r+0x944>
   1f708:	ff0d8d9b          	addiw	s11,s11,-16
   1f70c:	07013683          	ld	a3,112(sp)
   1f710:	06812703          	lw	a4,104(sp)
   1f714:	00098793          	mv	a5,s3
   1f718:	00813e03          	ld	t3,8(sp)
   1f71c:	fbba4ae3          	blt	s4,s11,1f6d0 <_svfiprintf_r+0x398>
   1f720:	04013603          	ld	a2,64(sp)
   1f724:	00dd86b3          	add	a3,s11,a3
   1f728:	0017071b          	addiw	a4,a4,1
   1f72c:	00c7b023          	sd	a2,0(a5)
   1f730:	01b7b423          	sd	s11,8(a5)
   1f734:	06d13823          	sd	a3,112(sp)
   1f738:	06e12423          	sw	a4,104(sp)
   1f73c:	00700613          	li	a2,7
   1f740:	01078793          	addi	a5,a5,16
   1f744:	2ee65063          	ble	a4,a2,1fa24 <_svfiprintf_r+0x6ec>
   1f748:	06010613          	addi	a2,sp,96
   1f74c:	000b0593          	mv	a1,s6
   1f750:	000b8513          	mv	a0,s7
   1f754:	9edff0ef          	jal	1f140 <__ssprint_r>
   1f758:	52051263          	bnez	a0,1fc7c <_svfiprintf_r+0x944>
   1f75c:	07013683          	ld	a3,112(sp)
   1f760:	06812703          	lw	a4,104(sp)
   1f764:	00098793          	mv	a5,s3
   1f768:	2bc0006f          	j	1fa24 <_svfiprintf_r+0x6ec>
   1f76c:	080aea93          	ori	s5,s5,128
   1f770:	cfdff06f          	j	1f46c <_svfiprintf_r+0x134>
   1f774:	0004c683          	lbu	a3,0(s1)
   1f778:	00148493          	addi	s1,s1,1
   1f77c:	131688e3          	beq	a3,a7,200ac <_svfiprintf_r+0xd74>
   1f780:	fd06871b          	addiw	a4,a3,-48
   1f784:	00000413          	li	s0,0
   1f788:	cee5e6e3          	bltu	a1,a4,1f474 <_svfiprintf_r+0x13c>
   1f78c:	00148493          	addi	s1,s1,1
   1f790:	fff4c683          	lbu	a3,-1(s1)
   1f794:	0014131b          	slliw	t1,s0,0x1
   1f798:	0034141b          	slliw	s0,s0,0x3
   1f79c:	0083043b          	addw	s0,t1,s0
   1f7a0:	00e4043b          	addw	s0,s0,a4
   1f7a4:	fd06871b          	addiw	a4,a3,-48
   1f7a8:	fee5f2e3          	bleu	a4,a1,1f78c <_svfiprintf_r+0x454>
   1f7ac:	cc0454e3          	bgez	s0,1f474 <_svfiprintf_r+0x13c>
   1f7b0:	fff00413          	li	s0,-1
   1f7b4:	cc1ff06f          	j	1f474 <_svfiprintf_r+0x13c>
   1f7b8:	140514e3          	bnez	a0,20100 <_svfiprintf_r+0xdc8>
   1f7bc:	010af713          	andi	a4,s5,16
   1f7c0:	76071a63          	bnez	a4,1ff34 <_svfiprintf_r+0xbfc>
   1f7c4:	02013683          	ld	a3,32(sp)
   1f7c8:	040afa93          	andi	s5,s5,64
   1f7cc:	0006b703          	ld	a4,0(a3)
   1f7d0:	00868693          	addi	a3,a3,8
   1f7d4:	02d13023          	sd	a3,32(sp)
   1f7d8:	7c0a8c63          	beqz	s5,1ffb0 <_svfiprintf_r+0xc78>
   1f7dc:	01c15683          	lhu	a3,28(sp)
   1f7e0:	00d71023          	sh	a3,0(a4)
   1f7e4:	bedff06f          	j	1f3d0 <_svfiprintf_r+0x98>
   1f7e8:	c80812e3          	bnez	a6,1f46c <_svfiprintf_r+0x134>
   1f7ec:	00100513          	li	a0,1
   1f7f0:	02000813          	li	a6,32
   1f7f4:	c79ff06f          	j	1f46c <_svfiprintf_r+0x134>
   1f7f8:	100518e3          	bnez	a0,20108 <_svfiprintf_r+0xdd0>
   1f7fc:	010af713          	andi	a4,s5,16
   1f800:	16070063          	beqz	a4,1f960 <_svfiprintf_r+0x628>
   1f804:	02013703          	ld	a4,32(sp)
   1f808:	04010ba3          	sb	zero,87(sp)
   1f80c:	00870693          	addi	a3,a4,8
   1f810:	00073703          	ld	a4,0(a4)
   1f814:	16044463          	bltz	s0,1f97c <_svfiprintf_r+0x644>
   1f818:	02d13023          	sd	a3,32(sp)
   1f81c:	f7fafa93          	andi	s5,s5,-129
   1f820:	00000613          	li	a2,0
   1f824:	dc070ae3          	beqz	a4,1f5f8 <_svfiprintf_r+0x2c0>
   1f828:	00900693          	li	a3,9
   1f82c:	00098d13          	mv	s10,s3
   1f830:	00a00593          	li	a1,10
   1f834:	72e6f063          	bleu	a4,a3,1ff54 <_svfiprintf_r+0xc1c>
   1f838:	02b776b3          	remu	a3,a4,a1
   1f83c:	fffd0d13          	addi	s10,s10,-1
   1f840:	02b75733          	divu	a4,a4,a1
   1f844:	0306869b          	addiw	a3,a3,48
   1f848:	00dd0023          	sb	a3,0(s10)
   1f84c:	ce0702e3          	beqz	a4,1f530 <_svfiprintf_r+0x1f8>
   1f850:	02b776b3          	remu	a3,a4,a1
   1f854:	fffd0d13          	addi	s10,s10,-1
   1f858:	02b75733          	divu	a4,a4,a1
   1f85c:	0306869b          	addiw	a3,a3,48
   1f860:	00dd0023          	sb	a3,0(s10)
   1f864:	fc071ae3          	bnez	a4,1f838 <_svfiprintf_r+0x500>
   1f868:	cc9ff06f          	j	1f530 <_svfiprintf_r+0x1f8>
   1f86c:	02013703          	ld	a4,32(sp)
   1f870:	04010ba3          	sb	zero,87(sp)
   1f874:	00073d03          	ld	s10,0(a4)
   1f878:	00870d93          	addi	s11,a4,8
   1f87c:	780d0063          	beqz	s10,1fffc <_svfiprintf_r+0xcc4>
   1f880:	00f13423          	sd	a5,8(sp)
   1f884:	72044c63          	bltz	s0,1ffbc <_svfiprintf_r+0xc84>
   1f888:	00040613          	mv	a2,s0
   1f88c:	00000593          	li	a1,0
   1f890:	000d0513          	mv	a0,s10
   1f894:	92cf80ef          	jal	179c0 <memchr>
   1f898:	00813783          	ld	a5,8(sp)
   1f89c:	7e050a63          	beqz	a0,20090 <_svfiprintf_r+0xd58>
   1f8a0:	41a50533          	sub	a0,a0,s10
   1f8a4:	00a12c23          	sw	a0,24(sp)
   1f8a8:	05714603          	lbu	a2,87(sp)
   1f8ac:	03b13023          	sd	s11,32(sp)
   1f8b0:	00000413          	li	s0,0
   1f8b4:	d55ff06f          	j	1f608 <_svfiprintf_r+0x2d0>
   1f8b8:	02013683          	ld	a3,32(sp)
   1f8bc:	00100c93          	li	s9,1
   1f8c0:	04010ba3          	sb	zero,87(sp)
   1f8c4:	0006a703          	lw	a4,0(a3)
   1f8c8:	01912c23          	sw	s9,24(sp)
   1f8cc:	07810d13          	addi	s10,sp,120
   1f8d0:	06e10c23          	sb	a4,120(sp)
   1f8d4:	00868713          	addi	a4,a3,8
   1f8d8:	02e13023          	sd	a4,32(sp)
   1f8dc:	d9dff06f          	j	1f678 <_svfiprintf_r+0x340>
   1f8e0:	020518e3          	bnez	a0,20110 <_svfiprintf_r+0xdd8>
   1f8e4:	00022737          	lui	a4,0x22
   1f8e8:	cf870713          	addi	a4,a4,-776 # 21cf8 <zeroes.4123+0x690>
   1f8ec:	02e13823          	sd	a4,48(sp)
   1f8f0:	010af713          	andi	a4,s5,16
   1f8f4:	0e070863          	beqz	a4,1f9e4 <_svfiprintf_r+0x6ac>
   1f8f8:	02013603          	ld	a2,32(sp)
   1f8fc:	00063703          	ld	a4,0(a2)
   1f900:	00860613          	addi	a2,a2,8
   1f904:	02c13023          	sd	a2,32(sp)
   1f908:	001af613          	andi	a2,s5,1
   1f90c:	0e060c63          	beqz	a2,1fa04 <_svfiprintf_r+0x6cc>
   1f910:	52070463          	beqz	a4,1fe38 <_svfiprintf_r+0xb00>
   1f914:	03000613          	li	a2,48
   1f918:	04d10ca3          	sb	a3,89(sp)
   1f91c:	04c10c23          	sb	a2,88(sp)
   1f920:	04010ba3          	sb	zero,87(sp)
   1f924:	002ae693          	ori	a3,s5,2
   1f928:	74044063          	bltz	s0,20068 <_svfiprintf_r+0xd30>
   1f92c:	f7fafa93          	andi	s5,s5,-129
   1f930:	002aea93          	ori	s5,s5,2
   1f934:	00000613          	li	a2,0
   1f938:	bd5ff06f          	j	1f50c <_svfiprintf_r+0x1d4>
   1f93c:	040aea93          	ori	s5,s5,64
   1f940:	b2dff06f          	j	1f46c <_svfiprintf_r+0x134>
   1f944:	c80504e3          	beqz	a0,1f5cc <_svfiprintf_r+0x294>
   1f948:	05010ba3          	sb	a6,87(sp)
   1f94c:	c81ff06f          	j	1f5cc <_svfiprintf_r+0x294>
   1f950:	78051463          	bnez	a0,200d8 <_svfiprintf_r+0xda0>
   1f954:	010aea93          	ori	s5,s5,16
   1f958:	010af713          	andi	a4,s5,16
   1f95c:	ea0714e3          	bnez	a4,1f804 <_svfiprintf_r+0x4cc>
   1f960:	040af713          	andi	a4,s5,64
   1f964:	04010ba3          	sb	zero,87(sp)
   1f968:	58070c63          	beqz	a4,1ff00 <_svfiprintf_r+0xbc8>
   1f96c:	02013703          	ld	a4,32(sp)
   1f970:	00870693          	addi	a3,a4,8
   1f974:	00075703          	lhu	a4,0(a4)
   1f978:	ea0450e3          	bgez	s0,1f818 <_svfiprintf_r+0x4e0>
   1f97c:	02d13023          	sd	a3,32(sp)
   1f980:	00000613          	li	a2,0
   1f984:	ea0712e3          	bnez	a4,1f828 <_svfiprintf_r+0x4f0>
   1f988:	00100713          	li	a4,1
   1f98c:	6000006f          	j	1ff8c <_svfiprintf_r+0xc54>
   1f990:	74051a63          	bnez	a0,200e4 <_svfiprintf_r+0xdac>
   1f994:	010aea93          	ori	s5,s5,16
   1f998:	010af713          	andi	a4,s5,16
   1f99c:	ba071ce3          	bnez	a4,1f554 <_svfiprintf_r+0x21c>
   1f9a0:	040af713          	andi	a4,s5,64
   1f9a4:	04010ba3          	sb	zero,87(sp)
   1f9a8:	54070263          	beqz	a4,1feec <_svfiprintf_r+0xbb4>
   1f9ac:	02013703          	ld	a4,32(sp)
   1f9b0:	00870693          	addi	a3,a4,8
   1f9b4:	00075703          	lhu	a4,0(a4)
   1f9b8:	ba0458e3          	bgez	s0,1f568 <_svfiprintf_r+0x230>
   1f9bc:	02d13023          	sd	a3,32(sp)
   1f9c0:	00000613          	li	a2,0
   1f9c4:	ba071ae3          	bnez	a4,1f578 <_svfiprintf_r+0x240>
   1f9c8:	5c40006f          	j	1ff8c <_svfiprintf_r+0xc54>
   1f9cc:	74051663          	bnez	a0,20118 <_svfiprintf_r+0xde0>
   1f9d0:	00022737          	lui	a4,0x22
   1f9d4:	d1070713          	addi	a4,a4,-752 # 21d10 <zeroes.4123+0x6a8>
   1f9d8:	02e13823          	sd	a4,48(sp)
   1f9dc:	010af713          	andi	a4,s5,16
   1f9e0:	f0071ce3          	bnez	a4,1f8f8 <_svfiprintf_r+0x5c0>
   1f9e4:	040af713          	andi	a4,s5,64
   1f9e8:	02013603          	ld	a2,32(sp)
   1f9ec:	52070463          	beqz	a4,1ff14 <_svfiprintf_r+0xbdc>
   1f9f0:	00065703          	lhu	a4,0(a2)
   1f9f4:	00860613          	addi	a2,a2,8
   1f9f8:	02c13023          	sd	a2,32(sp)
   1f9fc:	001af613          	andi	a2,s5,1
   1fa00:	f00618e3          	bnez	a2,1f910 <_svfiprintf_r+0x5d8>
   1fa04:	04010ba3          	sb	zero,87(sp)
   1fa08:	56044c63          	bltz	s0,1ff80 <_svfiprintf_r+0xc48>
   1fa0c:	f7fafa93          	andi	s5,s5,-129
   1fa10:	42070a63          	beqz	a4,1fe44 <_svfiprintf_r+0xb0c>
   1fa14:	00000613          	li	a2,0
   1fa18:	af5ff06f          	j	1f50c <_svfiprintf_r+0x1d4>
   1fa1c:	07013683          	ld	a3,112(sp)
   1fa20:	06812703          	lw	a4,104(sp)
   1fa24:	05714603          	lbu	a2,87(sp)
   1fa28:	02060863          	beqz	a2,1fa58 <_svfiprintf_r+0x720>
   1fa2c:	05710613          	addi	a2,sp,87
   1fa30:	00c7b023          	sd	a2,0(a5)
   1fa34:	00168693          	addi	a3,a3,1
   1fa38:	00100613          	li	a2,1
   1fa3c:	0017071b          	addiw	a4,a4,1
   1fa40:	00c7b423          	sd	a2,8(a5)
   1fa44:	06d13823          	sd	a3,112(sp)
   1fa48:	06e12423          	sw	a4,104(sp)
   1fa4c:	00700613          	li	a2,7
   1fa50:	01078793          	addi	a5,a5,16
   1fa54:	38e64e63          	blt	a2,a4,1fdf0 <_svfiprintf_r+0xab8>
   1fa58:	03812603          	lw	a2,56(sp)
   1fa5c:	02060863          	beqz	a2,1fa8c <_svfiprintf_r+0x754>
   1fa60:	05810613          	addi	a2,sp,88
   1fa64:	00c7b023          	sd	a2,0(a5)
   1fa68:	00268693          	addi	a3,a3,2
   1fa6c:	00200613          	li	a2,2
   1fa70:	0017071b          	addiw	a4,a4,1
   1fa74:	00c7b423          	sd	a2,8(a5)
   1fa78:	06d13823          	sd	a3,112(sp)
   1fa7c:	06e12423          	sw	a4,104(sp)
   1fa80:	00700613          	li	a2,7
   1fa84:	01078793          	addi	a5,a5,16
   1fa88:	38e64663          	blt	a2,a4,1fe14 <_svfiprintf_r+0xadc>
   1fa8c:	04812583          	lw	a1,72(sp)
   1fa90:	08000613          	li	a2,128
   1fa94:	22c58a63          	beq	a1,a2,1fcc8 <_svfiprintf_r+0x990>
   1fa98:	01812603          	lw	a2,24(sp)
   1fa9c:	40c4043b          	subw	s0,s0,a2
   1faa0:	0c805063          	blez	s0,1fb60 <_svfiprintf_r+0x828>
   1faa4:	01000613          	li	a2,16
   1faa8:	4e865e63          	ble	s0,a2,1ffa4 <_svfiprintf_r+0xc6c>
   1faac:	01000a13          	li	s4,16
   1fab0:	00021637          	lui	a2,0x21
   1fab4:	66860d93          	addi	s11,a2,1640 # 21668 <zeroes.4123>
   1fab8:	00700e13          	li	t3,7
   1fabc:	000a0c13          	mv	s8,s4
   1fac0:	00c0006f          	j	1facc <_svfiprintf_r+0x794>
   1fac4:	ff04041b          	addiw	s0,s0,-16
   1fac8:	048c5a63          	ble	s0,s8,1fb1c <_svfiprintf_r+0x7e4>
   1facc:	01068693          	addi	a3,a3,16
   1fad0:	0017071b          	addiw	a4,a4,1
   1fad4:	01b7b023          	sd	s11,0(a5)
   1fad8:	0147b423          	sd	s4,8(a5)
   1fadc:	06d13823          	sd	a3,112(sp)
   1fae0:	06e12423          	sw	a4,104(sp)
   1fae4:	01078793          	addi	a5,a5,16
   1fae8:	fcee5ee3          	ble	a4,t3,1fac4 <_svfiprintf_r+0x78c>
   1faec:	06010613          	addi	a2,sp,96
   1faf0:	000b0593          	mv	a1,s6
   1faf4:	000b8513          	mv	a0,s7
   1faf8:	01c13423          	sd	t3,8(sp)
   1fafc:	e44ff0ef          	jal	1f140 <__ssprint_r>
   1fb00:	16051e63          	bnez	a0,1fc7c <_svfiprintf_r+0x944>
   1fb04:	ff04041b          	addiw	s0,s0,-16
   1fb08:	07013683          	ld	a3,112(sp)
   1fb0c:	06812703          	lw	a4,104(sp)
   1fb10:	00098793          	mv	a5,s3
   1fb14:	00813e03          	ld	t3,8(sp)
   1fb18:	fa8c4ae3          	blt	s8,s0,1facc <_svfiprintf_r+0x794>
   1fb1c:	008686b3          	add	a3,a3,s0
   1fb20:	0017071b          	addiw	a4,a4,1
   1fb24:	01b7b023          	sd	s11,0(a5)
   1fb28:	0087b423          	sd	s0,8(a5)
   1fb2c:	06d13823          	sd	a3,112(sp)
   1fb30:	06e12423          	sw	a4,104(sp)
   1fb34:	00700613          	li	a2,7
   1fb38:	01078793          	addi	a5,a5,16
   1fb3c:	02e65263          	ble	a4,a2,1fb60 <_svfiprintf_r+0x828>
   1fb40:	06010613          	addi	a2,sp,96
   1fb44:	000b0593          	mv	a1,s6
   1fb48:	000b8513          	mv	a0,s7
   1fb4c:	df4ff0ef          	jal	1f140 <__ssprint_r>
   1fb50:	12051663          	bnez	a0,1fc7c <_svfiprintf_r+0x944>
   1fb54:	07013683          	ld	a3,112(sp)
   1fb58:	06812703          	lw	a4,104(sp)
   1fb5c:	00098793          	mv	a5,s3
   1fb60:	01812c03          	lw	s8,24(sp)
   1fb64:	0017071b          	addiw	a4,a4,1
   1fb68:	01a7b023          	sd	s10,0(a5)
   1fb6c:	00dc06b3          	add	a3,s8,a3
   1fb70:	0187b423          	sd	s8,8(a5)
   1fb74:	06d13823          	sd	a3,112(sp)
   1fb78:	06e12423          	sw	a4,104(sp)
   1fb7c:	00700613          	li	a2,7
   1fb80:	01078793          	addi	a5,a5,16
   1fb84:	20e64c63          	blt	a2,a4,1fd9c <_svfiprintf_r+0xa64>
   1fb88:	004afa93          	andi	s5,s5,4
   1fb8c:	0a0a8263          	beqz	s5,1fc30 <_svfiprintf_r+0x8f8>
   1fb90:	01412703          	lw	a4,20(sp)
   1fb94:	4197043b          	subw	s0,a4,s9
   1fb98:	08805c63          	blez	s0,1fc30 <_svfiprintf_r+0x8f8>
   1fb9c:	01000713          	li	a4,16
   1fba0:	4c875c63          	ble	s0,a4,20078 <_svfiprintf_r+0xd40>
   1fba4:	01000a93          	li	s5,16
   1fba8:	06812703          	lw	a4,104(sp)
   1fbac:	05213023          	sd	s2,64(sp)
   1fbb0:	00700c13          	li	s8,7
   1fbb4:	000a8d13          	mv	s10,s5
   1fbb8:	00c0006f          	j	1fbc4 <_svfiprintf_r+0x88c>
   1fbbc:	ff04041b          	addiw	s0,s0,-16
   1fbc0:	048d5663          	ble	s0,s10,1fc0c <_svfiprintf_r+0x8d4>
   1fbc4:	01068693          	addi	a3,a3,16
   1fbc8:	0017071b          	addiw	a4,a4,1
   1fbcc:	0127b023          	sd	s2,0(a5)
   1fbd0:	0157b423          	sd	s5,8(a5)
   1fbd4:	06d13823          	sd	a3,112(sp)
   1fbd8:	06e12423          	sw	a4,104(sp)
   1fbdc:	01078793          	addi	a5,a5,16
   1fbe0:	fcec5ee3          	ble	a4,s8,1fbbc <_svfiprintf_r+0x884>
   1fbe4:	06010613          	addi	a2,sp,96
   1fbe8:	000b0593          	mv	a1,s6
   1fbec:	000b8513          	mv	a0,s7
   1fbf0:	d50ff0ef          	jal	1f140 <__ssprint_r>
   1fbf4:	08051463          	bnez	a0,1fc7c <_svfiprintf_r+0x944>
   1fbf8:	ff04041b          	addiw	s0,s0,-16
   1fbfc:	07013683          	ld	a3,112(sp)
   1fc00:	06812703          	lw	a4,104(sp)
   1fc04:	00098793          	mv	a5,s3
   1fc08:	fa8d4ee3          	blt	s10,s0,1fbc4 <_svfiprintf_r+0x88c>
   1fc0c:	04013603          	ld	a2,64(sp)
   1fc10:	008686b3          	add	a3,a3,s0
   1fc14:	0017071b          	addiw	a4,a4,1
   1fc18:	00c7b023          	sd	a2,0(a5)
   1fc1c:	0087b423          	sd	s0,8(a5)
   1fc20:	06d13823          	sd	a3,112(sp)
   1fc24:	06e12423          	sw	a4,104(sp)
   1fc28:	00700793          	li	a5,7
   1fc2c:	28e7c663          	blt	a5,a4,1feb8 <_svfiprintf_r+0xb80>
   1fc30:	01412a03          	lw	s4,20(sp)
   1fc34:	019a5463          	ble	s9,s4,1fc3c <_svfiprintf_r+0x904>
   1fc38:	000c8a13          	mv	s4,s9
   1fc3c:	01c12783          	lw	a5,28(sp)
   1fc40:	014787bb          	addw	a5,a5,s4
   1fc44:	00f12e23          	sw	a5,28(sp)
   1fc48:	16069a63          	bnez	a3,1fdbc <_svfiprintf_r+0xa84>
   1fc4c:	0004c703          	lbu	a4,0(s1)
   1fc50:	06012423          	sw	zero,104(sp)
   1fc54:	00098793          	mv	a5,s3
   1fc58:	f8071063          	bnez	a4,1f3d8 <_svfiprintf_r+0xa0>
   1fc5c:	00048413          	mv	s0,s1
   1fc60:	fdcff06f          	j	1f43c <_svfiprintf_r+0x104>
   1fc64:	07013783          	ld	a5,112(sp)
   1fc68:	00078a63          	beqz	a5,1fc7c <_svfiprintf_r+0x944>
   1fc6c:	06010613          	addi	a2,sp,96
   1fc70:	000b0593          	mv	a1,s6
   1fc74:	000b8513          	mv	a0,s7
   1fc78:	cc8ff0ef          	jal	1f140 <__ssprint_r>
   1fc7c:	010b5783          	lhu	a5,16(s6)
   1fc80:	01c12503          	lw	a0,28(sp)
   1fc84:	0407f793          	andi	a5,a5,64
   1fc88:	3a079a63          	bnez	a5,2003c <_svfiprintf_r+0xd04>
   1fc8c:	18813083          	ld	ra,392(sp)
   1fc90:	18013403          	ld	s0,384(sp)
   1fc94:	17813483          	ld	s1,376(sp)
   1fc98:	17013903          	ld	s2,368(sp)
   1fc9c:	16813983          	ld	s3,360(sp)
   1fca0:	16013a03          	ld	s4,352(sp)
   1fca4:	15813a83          	ld	s5,344(sp)
   1fca8:	15013b03          	ld	s6,336(sp)
   1fcac:	14813b83          	ld	s7,328(sp)
   1fcb0:	14013c03          	ld	s8,320(sp)
   1fcb4:	13813c83          	ld	s9,312(sp)
   1fcb8:	13013d03          	ld	s10,304(sp)
   1fcbc:	12813d83          	ld	s11,296(sp)
   1fcc0:	19010113          	addi	sp,sp,400
   1fcc4:	00008067          	ret
   1fcc8:	01412603          	lw	a2,20(sp)
   1fccc:	41960a3b          	subw	s4,a2,s9
   1fcd0:	dd4054e3          	blez	s4,1fa98 <_svfiprintf_r+0x760>
   1fcd4:	01000613          	li	a2,16
   1fcd8:	3b465663          	ble	s4,a2,20084 <_svfiprintf_r+0xd4c>
   1fcdc:	01000e13          	li	t3,16
   1fce0:	00021637          	lui	a2,0x21
   1fce4:	66860d93          	addi	s11,a2,1640 # 21668 <zeroes.4123>
   1fce8:	00700e93          	li	t4,7
   1fcec:	000e0c13          	mv	s8,t3
   1fcf0:	00c0006f          	j	1fcfc <_svfiprintf_r+0x9c4>
   1fcf4:	ff0a0a1b          	addiw	s4,s4,-16
   1fcf8:	054c5e63          	ble	s4,s8,1fd54 <_svfiprintf_r+0xa1c>
   1fcfc:	01068693          	addi	a3,a3,16
   1fd00:	0017071b          	addiw	a4,a4,1
   1fd04:	01b7b023          	sd	s11,0(a5)
   1fd08:	01c7b423          	sd	t3,8(a5)
   1fd0c:	06d13823          	sd	a3,112(sp)
   1fd10:	06e12423          	sw	a4,104(sp)
   1fd14:	01078793          	addi	a5,a5,16
   1fd18:	fceedee3          	ble	a4,t4,1fcf4 <_svfiprintf_r+0x9bc>
   1fd1c:	06010613          	addi	a2,sp,96
   1fd20:	000b0593          	mv	a1,s6
   1fd24:	000b8513          	mv	a0,s7
   1fd28:	03d13c23          	sd	t4,56(sp)
   1fd2c:	01c13423          	sd	t3,8(sp)
   1fd30:	c10ff0ef          	jal	1f140 <__ssprint_r>
   1fd34:	f40514e3          	bnez	a0,1fc7c <_svfiprintf_r+0x944>
   1fd38:	ff0a0a1b          	addiw	s4,s4,-16
   1fd3c:	07013683          	ld	a3,112(sp)
   1fd40:	06812703          	lw	a4,104(sp)
   1fd44:	00098793          	mv	a5,s3
   1fd48:	03813e83          	ld	t4,56(sp)
   1fd4c:	00813e03          	ld	t3,8(sp)
   1fd50:	fb4c46e3          	blt	s8,s4,1fcfc <_svfiprintf_r+0x9c4>
   1fd54:	014686b3          	add	a3,a3,s4
   1fd58:	0017071b          	addiw	a4,a4,1
   1fd5c:	01b7b023          	sd	s11,0(a5)
   1fd60:	0147b423          	sd	s4,8(a5)
   1fd64:	06d13823          	sd	a3,112(sp)
   1fd68:	06e12423          	sw	a4,104(sp)
   1fd6c:	00700613          	li	a2,7
   1fd70:	01078793          	addi	a5,a5,16
   1fd74:	d2e652e3          	ble	a4,a2,1fa98 <_svfiprintf_r+0x760>
   1fd78:	06010613          	addi	a2,sp,96
   1fd7c:	000b0593          	mv	a1,s6
   1fd80:	000b8513          	mv	a0,s7
   1fd84:	bbcff0ef          	jal	1f140 <__ssprint_r>
   1fd88:	ee051ae3          	bnez	a0,1fc7c <_svfiprintf_r+0x944>
   1fd8c:	07013683          	ld	a3,112(sp)
   1fd90:	06812703          	lw	a4,104(sp)
   1fd94:	00098793          	mv	a5,s3
   1fd98:	d01ff06f          	j	1fa98 <_svfiprintf_r+0x760>
   1fd9c:	06010613          	addi	a2,sp,96
   1fda0:	000b0593          	mv	a1,s6
   1fda4:	000b8513          	mv	a0,s7
   1fda8:	b98ff0ef          	jal	1f140 <__ssprint_r>
   1fdac:	ec0518e3          	bnez	a0,1fc7c <_svfiprintf_r+0x944>
   1fdb0:	07013683          	ld	a3,112(sp)
   1fdb4:	00098793          	mv	a5,s3
   1fdb8:	dd1ff06f          	j	1fb88 <_svfiprintf_r+0x850>
   1fdbc:	06010613          	addi	a2,sp,96
   1fdc0:	000b0593          	mv	a1,s6
   1fdc4:	000b8513          	mv	a0,s7
   1fdc8:	b78ff0ef          	jal	1f140 <__ssprint_r>
   1fdcc:	e80500e3          	beqz	a0,1fc4c <_svfiprintf_r+0x914>
   1fdd0:	eadff06f          	j	1fc7c <_svfiprintf_r+0x944>
   1fdd4:	06010613          	addi	a2,sp,96
   1fdd8:	000b0593          	mv	a1,s6
   1fddc:	000b8513          	mv	a0,s7
   1fde0:	b60ff0ef          	jal	1f140 <__ssprint_r>
   1fde4:	e8051ce3          	bnez	a0,1fc7c <_svfiprintf_r+0x944>
   1fde8:	00098793          	mv	a5,s3
   1fdec:	e44ff06f          	j	1f430 <_svfiprintf_r+0xf8>
   1fdf0:	06010613          	addi	a2,sp,96
   1fdf4:	000b0593          	mv	a1,s6
   1fdf8:	000b8513          	mv	a0,s7
   1fdfc:	b44ff0ef          	jal	1f140 <__ssprint_r>
   1fe00:	e6051ee3          	bnez	a0,1fc7c <_svfiprintf_r+0x944>
   1fe04:	07013683          	ld	a3,112(sp)
   1fe08:	06812703          	lw	a4,104(sp)
   1fe0c:	00098793          	mv	a5,s3
   1fe10:	c49ff06f          	j	1fa58 <_svfiprintf_r+0x720>
   1fe14:	06010613          	addi	a2,sp,96
   1fe18:	000b0593          	mv	a1,s6
   1fe1c:	000b8513          	mv	a0,s7
   1fe20:	b20ff0ef          	jal	1f140 <__ssprint_r>
   1fe24:	e4051ce3          	bnez	a0,1fc7c <_svfiprintf_r+0x944>
   1fe28:	07013683          	ld	a3,112(sp)
   1fe2c:	06812703          	lw	a4,104(sp)
   1fe30:	00098793          	mv	a5,s3
   1fe34:	c59ff06f          	j	1fa8c <_svfiprintf_r+0x754>
   1fe38:	04010ba3          	sb	zero,87(sp)
   1fe3c:	22044263          	bltz	s0,20060 <_svfiprintf_r+0xd28>
   1fe40:	f7fafa93          	andi	s5,s5,-129
   1fe44:	00000613          	li	a2,0
   1fe48:	fa040a63          	beqz	s0,1f5fc <_svfiprintf_r+0x2c4>
   1fe4c:	00000713          	li	a4,0
   1fe50:	ebcff06f          	j	1f50c <_svfiprintf_r+0x1d4>
   1fe54:	040af713          	andi	a4,s5,64
   1fe58:	02013683          	ld	a3,32(sp)
   1fe5c:	0c070463          	beqz	a4,1ff24 <_svfiprintf_r+0xbec>
   1fe60:	00069703          	lh	a4,0(a3)
   1fe64:	00868693          	addi	a3,a3,8
   1fe68:	02d13023          	sd	a3,32(sp)
   1fe6c:	f6075e63          	bgez	a4,1f5e8 <_svfiprintf_r+0x2b0>
   1fe70:	02d00693          	li	a3,45
   1fe74:	04d10ba3          	sb	a3,87(sp)
   1fe78:	40e00733          	neg	a4,a4
   1fe7c:	1c044463          	bltz	s0,20044 <_svfiprintf_r+0xd0c>
   1fe80:	f7fafa93          	andi	s5,s5,-129
   1fe84:	02d00613          	li	a2,45
   1fe88:	9a1ff06f          	j	1f828 <_svfiprintf_r+0x4f0>
   1fe8c:	00000613          	li	a2,0
   1fe90:	00000713          	li	a4,0
   1fe94:	ee041263          	bnez	s0,1f578 <_svfiprintf_r+0x240>
   1fe98:	001af713          	andi	a4,s5,1
   1fe9c:	18070463          	beqz	a4,20024 <_svfiprintf_r+0xcec>
   1fea0:	03000713          	li	a4,48
   1fea4:	08e10fa3          	sb	a4,159(sp)
   1fea8:	04c12703          	lw	a4,76(sp)
   1feac:	09f10d13          	addi	s10,sp,159
   1feb0:	00e12c23          	sw	a4,24(sp)
   1feb4:	f54ff06f          	j	1f608 <_svfiprintf_r+0x2d0>
   1feb8:	06010613          	addi	a2,sp,96
   1febc:	000b0593          	mv	a1,s6
   1fec0:	000b8513          	mv	a0,s7
   1fec4:	a7cff0ef          	jal	1f140 <__ssprint_r>
   1fec8:	da051ae3          	bnez	a0,1fc7c <_svfiprintf_r+0x944>
   1fecc:	07013683          	ld	a3,112(sp)
   1fed0:	d61ff06f          	j	1fc30 <_svfiprintf_r+0x8f8>
   1fed4:	00022737          	lui	a4,0x22
   1fed8:	d1070713          	addi	a4,a4,-752 # 21d10 <zeroes.4123+0x6a8>
   1fedc:	02e13823          	sd	a4,48(sp)
   1fee0:	00000613          	li	a2,0
   1fee4:	f60414e3          	bnez	s0,1fe4c <_svfiprintf_r+0xb14>
   1fee8:	f14ff06f          	j	1f5fc <_svfiprintf_r+0x2c4>
   1feec:	02013703          	ld	a4,32(sp)
   1fef0:	00870693          	addi	a3,a4,8
   1fef4:	00076703          	lwu	a4,0(a4)
   1fef8:	e6045863          	bgez	s0,1f568 <_svfiprintf_r+0x230>
   1fefc:	ac1ff06f          	j	1f9bc <_svfiprintf_r+0x684>
   1ff00:	02013703          	ld	a4,32(sp)
   1ff04:	00870693          	addi	a3,a4,8
   1ff08:	00076703          	lwu	a4,0(a4)
   1ff0c:	900456e3          	bgez	s0,1f818 <_svfiprintf_r+0x4e0>
   1ff10:	a6dff06f          	j	1f97c <_svfiprintf_r+0x644>
   1ff14:	00066703          	lwu	a4,0(a2)
   1ff18:	00860613          	addi	a2,a2,8
   1ff1c:	02c13023          	sd	a2,32(sp)
   1ff20:	9e9ff06f          	j	1f908 <_svfiprintf_r+0x5d0>
   1ff24:	0006a703          	lw	a4,0(a3)
   1ff28:	00868693          	addi	a3,a3,8
   1ff2c:	02d13023          	sd	a3,32(sp)
   1ff30:	eb4ff06f          	j	1f5e4 <_svfiprintf_r+0x2ac>
   1ff34:	02013603          	ld	a2,32(sp)
   1ff38:	01c12683          	lw	a3,28(sp)
   1ff3c:	00063703          	ld	a4,0(a2)
   1ff40:	00860613          	addi	a2,a2,8
   1ff44:	02c13023          	sd	a2,32(sp)
   1ff48:	00d73023          	sd	a3,0(a4)
   1ff4c:	c84ff06f          	j	1f3d0 <_svfiprintf_r+0x98>
   1ff50:	00000713          	li	a4,0
   1ff54:	0307071b          	addiw	a4,a4,48
   1ff58:	08e10fa3          	sb	a4,159(sp)
   1ff5c:	04c12703          	lw	a4,76(sp)
   1ff60:	09f10d13          	addi	s10,sp,159
   1ff64:	00e12c23          	sw	a4,24(sp)
   1ff68:	ea0ff06f          	j	1f608 <_svfiprintf_r+0x2d0>
   1ff6c:	02d13023          	sd	a3,32(sp)
   1ff70:	000226b7          	lui	a3,0x22
   1ff74:	d1068693          	addi	a3,a3,-752 # 21d10 <zeroes.4123+0x6a8>
   1ff78:	00060a93          	mv	s5,a2
   1ff7c:	02d13823          	sd	a3,48(sp)
   1ff80:	00000613          	li	a2,0
   1ff84:	d8071463          	bnez	a4,1f50c <_svfiprintf_r+0x1d4>
   1ff88:	00200713          	li	a4,2
   1ff8c:	00100693          	li	a3,1
   1ff90:	fcd700e3          	beq	a4,a3,1ff50 <_svfiprintf_r+0xc18>
   1ff94:	00200693          	li	a3,2
   1ff98:	ead70ae3          	beq	a4,a3,1fe4c <_svfiprintf_r+0xb14>
   1ff9c:	00000713          	li	a4,0
   1ffa0:	dd8ff06f          	j	1f578 <_svfiprintf_r+0x240>
   1ffa4:	00021637          	lui	a2,0x21
   1ffa8:	66860d93          	addi	s11,a2,1640 # 21668 <zeroes.4123>
   1ffac:	b71ff06f          	j	1fb1c <_svfiprintf_r+0x7e4>
   1ffb0:	01c12683          	lw	a3,28(sp)
   1ffb4:	00d72023          	sw	a3,0(a4)
   1ffb8:	c18ff06f          	j	1f3d0 <_svfiprintf_r+0x98>
   1ffbc:	000d0513          	mv	a0,s10
   1ffc0:	9a9f10ef          	jal	11968 <strlen>
   1ffc4:	00a12c23          	sw	a0,24(sp)
   1ffc8:	05714603          	lbu	a2,87(sp)
   1ffcc:	03b13023          	sd	s11,32(sp)
   1ffd0:	00000413          	li	s0,0
   1ffd4:	00813783          	ld	a5,8(sp)
   1ffd8:	e30ff06f          	j	1f608 <_svfiprintf_r+0x2d0>
   1ffdc:	04000593          	li	a1,64
   1ffe0:	d85f00ef          	jal	10d64 <_malloc_r>
   1ffe4:	00ab3023          	sd	a0,0(s6)
   1ffe8:	00ab3c23          	sd	a0,24(s6)
   1ffec:	10050263          	beqz	a0,200f0 <_svfiprintf_r+0xdb8>
   1fff0:	04000793          	li	a5,64
   1fff4:	02fb2023          	sw	a5,32(s6)
   1fff8:	b9cff06f          	j	1f394 <_svfiprintf_r+0x5c>
   1fffc:	00600713          	li	a4,6
   20000:	00877463          	bleu	s0,a4,20008 <_svfiprintf_r+0xcd0>
   20004:	00070413          	mv	s0,a4
   20008:	00812c23          	sw	s0,24(sp)
   2000c:	00040c93          	mv	s9,s0
   20010:	08044a63          	bltz	s0,200a4 <_svfiprintf_r+0xd6c>
   20014:	000228b7          	lui	a7,0x22
   20018:	03b13023          	sd	s11,32(sp)
   2001c:	d2888d13          	addi	s10,a7,-728 # 21d28 <zeroes.4123+0x6c0>
   20020:	e58ff06f          	j	1f678 <_svfiprintf_r+0x340>
   20024:	00012c23          	sw	zero,24(sp)
   20028:	00098d13          	mv	s10,s3
   2002c:	ddcff06f          	j	1f608 <_svfiprintf_r+0x2d0>
   20030:	06812703          	lw	a4,104(sp)
   20034:	05213023          	sd	s2,64(sp)
   20038:	ee8ff06f          	j	1f720 <_svfiprintf_r+0x3e8>
   2003c:	fff00513          	li	a0,-1
   20040:	c4dff06f          	j	1fc8c <_svfiprintf_r+0x954>
   20044:	02d00613          	li	a2,45
   20048:	00100693          	li	a3,1
   2004c:	00100593          	li	a1,1
   20050:	fcb68c63          	beq	a3,a1,1f828 <_svfiprintf_r+0x4f0>
   20054:	00200593          	li	a1,2
   20058:	cab68a63          	beq	a3,a1,1f50c <_svfiprintf_r+0x1d4>
   2005c:	d1cff06f          	j	1f578 <_svfiprintf_r+0x240>
   20060:	00000613          	li	a2,0
   20064:	f25ff06f          	j	1ff88 <_svfiprintf_r+0xc50>
   20068:	00068a93          	mv	s5,a3
   2006c:	00000613          	li	a2,0
   20070:	00200693          	li	a3,2
   20074:	fd9ff06f          	j	2004c <_svfiprintf_r+0xd14>
   20078:	06812703          	lw	a4,104(sp)
   2007c:	05213023          	sd	s2,64(sp)
   20080:	b8dff06f          	j	1fc0c <_svfiprintf_r+0x8d4>
   20084:	00021637          	lui	a2,0x21
   20088:	66860d93          	addi	s11,a2,1640 # 21668 <zeroes.4123>
   2008c:	cc9ff06f          	j	1fd54 <_svfiprintf_r+0xa1c>
   20090:	00812c23          	sw	s0,24(sp)
   20094:	05714603          	lbu	a2,87(sp)
   20098:	03b13023          	sd	s11,32(sp)
   2009c:	00000413          	li	s0,0
   200a0:	d68ff06f          	j	1f608 <_svfiprintf_r+0x2d0>
   200a4:	00000c93          	li	s9,0
   200a8:	f6dff06f          	j	20014 <_svfiprintf_r+0xcdc>
   200ac:	02013703          	ld	a4,32(sp)
   200b0:	00072403          	lw	s0,0(a4)
   200b4:	00870d93          	addi	s11,a4,8
   200b8:	03b13023          	sd	s11,32(sp)
   200bc:	ba045863          	bgez	s0,1f46c <_svfiprintf_r+0x134>
   200c0:	fff00413          	li	s0,-1
   200c4:	ba8ff06f          	j	1f46c <_svfiprintf_r+0x134>
   200c8:	05010ba3          	sb	a6,87(sp)
   200cc:	d94ff06f          	j	1f660 <_svfiprintf_r+0x328>
   200d0:	05010ba3          	sb	a6,87(sp)
   200d4:	c78ff06f          	j	1f54c <_svfiprintf_r+0x214>
   200d8:	05010ba3          	sb	a6,87(sp)
   200dc:	010aea93          	ori	s5,s5,16
   200e0:	879ff06f          	j	1f958 <_svfiprintf_r+0x620>
   200e4:	05010ba3          	sb	a6,87(sp)
   200e8:	010aea93          	ori	s5,s5,16
   200ec:	8adff06f          	j	1f998 <_svfiprintf_r+0x660>
   200f0:	00c00793          	li	a5,12
   200f4:	00fba023          	sw	a5,0(s7)
   200f8:	fff00513          	li	a0,-1
   200fc:	b91ff06f          	j	1fc8c <_svfiprintf_r+0x954>
   20100:	05010ba3          	sb	a6,87(sp)
   20104:	eb8ff06f          	j	1f7bc <_svfiprintf_r+0x484>
   20108:	05010ba3          	sb	a6,87(sp)
   2010c:	ef0ff06f          	j	1f7fc <_svfiprintf_r+0x4c4>
   20110:	05010ba3          	sb	a6,87(sp)
   20114:	fd0ff06f          	j	1f8e4 <_svfiprintf_r+0x5ac>
   20118:	05010ba3          	sb	a6,87(sp)
   2011c:	8b5ff06f          	j	1f9d0 <_svfiprintf_r+0x698>
   20120:	05010ba3          	sb	a6,87(sp)
   20124:	ca4ff06f          	j	1f5c8 <_svfiprintf_r+0x290>

0000000000020128 <_wcrtomb_r>:
   20128:	fc010113          	addi	sp,sp,-64
   2012c:	02913423          	sd	s1,40(sp)
   20130:	03213023          	sd	s2,32(sp)
   20134:	02113c23          	sd	ra,56(sp)
   20138:	02813823          	sd	s0,48(sp)
   2013c:	01313c23          	sd	s3,24(sp)
   20140:	01413823          	sd	s4,16(sp)
   20144:	00050493          	mv	s1,a0
   20148:	00068913          	mv	s2,a3
   2014c:	06058663          	beqz	a1,201b8 <_wcrtomb_r+0x90>
   20150:	8481ba03          	ld	s4,-1976(gp) # 24468 <__wctomb>
   20154:	00058413          	mv	s0,a1
   20158:	00060993          	mv	s3,a2
   2015c:	c0cf70ef          	jal	17568 <__locale_charset>
   20160:	00050693          	mv	a3,a0
   20164:	00090713          	mv	a4,s2
   20168:	00098613          	mv	a2,s3
   2016c:	00040593          	mv	a1,s0
   20170:	00048513          	mv	a0,s1
   20174:	000a00e7          	jalr	s4
   20178:	00050793          	mv	a5,a0
   2017c:	fff00713          	li	a4,-1
   20180:	00078513          	mv	a0,a5
   20184:	00e79a63          	bne	a5,a4,20198 <_wcrtomb_r+0x70>
   20188:	00092023          	sw	zero,0(s2)
   2018c:	08a00793          	li	a5,138
   20190:	00f4a023          	sw	a5,0(s1)
   20194:	fff00513          	li	a0,-1
   20198:	03813083          	ld	ra,56(sp)
   2019c:	03013403          	ld	s0,48(sp)
   201a0:	02813483          	ld	s1,40(sp)
   201a4:	02013903          	ld	s2,32(sp)
   201a8:	01813983          	ld	s3,24(sp)
   201ac:	01013a03          	ld	s4,16(sp)
   201b0:	04010113          	addi	sp,sp,64
   201b4:	00008067          	ret
   201b8:	8481b403          	ld	s0,-1976(gp) # 24468 <__wctomb>
   201bc:	bacf70ef          	jal	17568 <__locale_charset>
   201c0:	00050693          	mv	a3,a0
   201c4:	00090713          	mv	a4,s2
   201c8:	00000613          	li	a2,0
   201cc:	00010593          	mv	a1,sp
   201d0:	00048513          	mv	a0,s1
   201d4:	000400e7          	jalr	s0
   201d8:	00050793          	mv	a5,a0
   201dc:	fa1ff06f          	j	2017c <_wcrtomb_r+0x54>

00000000000201e0 <wcrtomb>:
   201e0:	fc010113          	addi	sp,sp,-64
   201e4:	02913423          	sd	s1,40(sp)
   201e8:	03213023          	sd	s2,32(sp)
   201ec:	02113c23          	sd	ra,56(sp)
   201f0:	02813823          	sd	s0,48(sp)
   201f4:	01313c23          	sd	s3,24(sp)
   201f8:	01413823          	sd	s4,16(sp)
   201fc:	00060913          	mv	s2,a2
   20200:	8181b483          	ld	s1,-2024(gp) # 24438 <_impure_ptr>
   20204:	06050663          	beqz	a0,20270 <wcrtomb+0x90>
   20208:	8481ba03          	ld	s4,-1976(gp) # 24468 <__wctomb>
   2020c:	00058993          	mv	s3,a1
   20210:	00050413          	mv	s0,a0
   20214:	b54f70ef          	jal	17568 <__locale_charset>
   20218:	00050693          	mv	a3,a0
   2021c:	00090713          	mv	a4,s2
   20220:	00098613          	mv	a2,s3
   20224:	00040593          	mv	a1,s0
   20228:	00048513          	mv	a0,s1
   2022c:	000a00e7          	jalr	s4
   20230:	00050793          	mv	a5,a0
   20234:	fff00713          	li	a4,-1
   20238:	00078513          	mv	a0,a5
   2023c:	00e79a63          	bne	a5,a4,20250 <wcrtomb+0x70>
   20240:	00092023          	sw	zero,0(s2)
   20244:	08a00793          	li	a5,138
   20248:	00f4a023          	sw	a5,0(s1)
   2024c:	fff00513          	li	a0,-1
   20250:	03813083          	ld	ra,56(sp)
   20254:	03013403          	ld	s0,48(sp)
   20258:	02813483          	ld	s1,40(sp)
   2025c:	02013903          	ld	s2,32(sp)
   20260:	01813983          	ld	s3,24(sp)
   20264:	01013a03          	ld	s4,16(sp)
   20268:	04010113          	addi	sp,sp,64
   2026c:	00008067          	ret
   20270:	8481b403          	ld	s0,-1976(gp) # 24468 <__wctomb>
   20274:	af4f70ef          	jal	17568 <__locale_charset>
   20278:	00050693          	mv	a3,a0
   2027c:	00090713          	mv	a4,s2
   20280:	00000613          	li	a2,0
   20284:	00010593          	mv	a1,sp
   20288:	00048513          	mv	a0,s1
   2028c:	000400e7          	jalr	s0
   20290:	00050793          	mv	a5,a0
   20294:	fa1ff06f          	j	20234 <wcrtomb+0x54>

0000000000020298 <__ascii_wctomb>:
   20298:	00058c63          	beqz	a1,202b0 <__ascii_wctomb+0x18>
   2029c:	0ff00793          	li	a5,255
   202a0:	00c7ec63          	bltu	a5,a2,202b8 <__ascii_wctomb+0x20>
   202a4:	00c58023          	sb	a2,0(a1)
   202a8:	00100513          	li	a0,1
   202ac:	00008067          	ret
   202b0:	00000513          	li	a0,0
   202b4:	00008067          	ret
   202b8:	08a00793          	li	a5,138
   202bc:	00f52023          	sw	a5,0(a0)
   202c0:	fff00513          	li	a0,-1
   202c4:	00008067          	ret

00000000000202c8 <_wctomb_r>:
   202c8:	fd010113          	addi	sp,sp,-48
   202cc:	02813023          	sd	s0,32(sp)
   202d0:	8481b403          	ld	s0,-1976(gp) # 24468 <__wctomb>
   202d4:	02113423          	sd	ra,40(sp)
   202d8:	00913c23          	sd	s1,24(sp)
   202dc:	01213823          	sd	s2,16(sp)
   202e0:	01313423          	sd	s3,8(sp)
   202e4:	01413023          	sd	s4,0(sp)
   202e8:	00050493          	mv	s1,a0
   202ec:	00068a13          	mv	s4,a3
   202f0:	00058913          	mv	s2,a1
   202f4:	00060993          	mv	s3,a2
   202f8:	a70f70ef          	jal	17568 <__locale_charset>
   202fc:	000a0713          	mv	a4,s4
   20300:	00050693          	mv	a3,a0
   20304:	00098613          	mv	a2,s3
   20308:	00090593          	mv	a1,s2
   2030c:	00048513          	mv	a0,s1
   20310:	00040313          	mv	t1,s0
   20314:	02813083          	ld	ra,40(sp)
   20318:	02013403          	ld	s0,32(sp)
   2031c:	01813483          	ld	s1,24(sp)
   20320:	01013903          	ld	s2,16(sp)
   20324:	00813983          	ld	s3,8(sp)
   20328:	00013a03          	ld	s4,0(sp)
   2032c:	03010113          	addi	sp,sp,48
   20330:	00030067          	jr	t1

0000000000020334 <__syscall_error>:
   20334:	ff010113          	addi	sp,sp,-16
   20338:	00113423          	sd	ra,8(sp)
   2033c:	00813023          	sd	s0,0(sp)
   20340:	00050413          	mv	s0,a0
   20344:	3c4000ef          	jal	20708 <__errno>
   20348:	00813083          	ld	ra,8(sp)
   2034c:	408007bb          	negw	a5,s0
   20350:	00f52023          	sw	a5,0(a0)
   20354:	00013403          	ld	s0,0(sp)
   20358:	fff00513          	li	a0,-1
   2035c:	01010113          	addi	sp,sp,16
   20360:	00008067          	ret

0000000000020364 <open>:
   20364:	00000693          	li	a3,0
   20368:	40000893          	li	a7,1024
   2036c:	00000073          	ecall
   20370:	fc0542e3          	bltz	a0,20334 <__syscall_error>
   20374:	0005051b          	sext.w	a0,a0
   20378:	00008067          	ret

000000000002037c <openat>:
   2037c:	03800893          	li	a7,56
   20380:	00000073          	ecall
   20384:	fa0548e3          	bltz	a0,20334 <__syscall_error>
   20388:	0005051b          	sext.w	a0,a0
   2038c:	00008067          	ret

0000000000020390 <lseek>:
   20390:	00000693          	li	a3,0
   20394:	03e00893          	li	a7,62
   20398:	00000073          	ecall
   2039c:	f8054ce3          	bltz	a0,20334 <__syscall_error>
   203a0:	00008067          	ret

00000000000203a4 <read>:
   203a4:	00000693          	li	a3,0
   203a8:	03f00893          	li	a7,63
   203ac:	00000073          	ecall
   203b0:	f80542e3          	bltz	a0,20334 <__syscall_error>
   203b4:	00008067          	ret

00000000000203b8 <write>:
   203b8:	00000693          	li	a3,0
   203bc:	04000893          	li	a7,64
   203c0:	00000073          	ecall
   203c4:	f60548e3          	bltz	a0,20334 <__syscall_error>
   203c8:	00008067          	ret

00000000000203cc <fstat>:
   203cc:	00000613          	li	a2,0
   203d0:	00000693          	li	a3,0
   203d4:	05000893          	li	a7,80
   203d8:	00000073          	ecall
   203dc:	f4054ce3          	bltz	a0,20334 <__syscall_error>
   203e0:	0005051b          	sext.w	a0,a0
   203e4:	00008067          	ret

00000000000203e8 <stat>:
   203e8:	00000613          	li	a2,0
   203ec:	00000693          	li	a3,0
   203f0:	40e00893          	li	a7,1038
   203f4:	00000073          	ecall
   203f8:	f2054ee3          	bltz	a0,20334 <__syscall_error>
   203fc:	0005051b          	sext.w	a0,a0
   20400:	00008067          	ret

0000000000020404 <lstat>:
   20404:	00000613          	li	a2,0
   20408:	00000693          	li	a3,0
   2040c:	40f00893          	li	a7,1039
   20410:	00000073          	ecall
   20414:	f20540e3          	bltz	a0,20334 <__syscall_error>
   20418:	0005051b          	sext.w	a0,a0
   2041c:	00008067          	ret

0000000000020420 <fstatat>:
   20420:	04f00893          	li	a7,79
   20424:	00000073          	ecall
   20428:	f00546e3          	bltz	a0,20334 <__syscall_error>
   2042c:	0005051b          	sext.w	a0,a0
   20430:	00008067          	ret

0000000000020434 <access>:
   20434:	00000613          	li	a2,0
   20438:	00000693          	li	a3,0
   2043c:	40900893          	li	a7,1033
   20440:	00000073          	ecall
   20444:	ee0548e3          	bltz	a0,20334 <__syscall_error>
   20448:	0005051b          	sext.w	a0,a0
   2044c:	00008067          	ret

0000000000020450 <faccessat>:
   20450:	03000893          	li	a7,48
   20454:	00000073          	ecall
   20458:	ec054ee3          	bltz	a0,20334 <__syscall_error>
   2045c:	0005051b          	sext.w	a0,a0
   20460:	00008067          	ret

0000000000020464 <close>:
   20464:	00000593          	li	a1,0
   20468:	00000613          	li	a2,0
   2046c:	00000693          	li	a3,0
   20470:	03900893          	li	a7,57
   20474:	00000073          	ecall
   20478:	ea054ee3          	bltz	a0,20334 <__syscall_error>
   2047c:	0005051b          	sext.w	a0,a0
   20480:	00008067          	ret

0000000000020484 <link>:
   20484:	00000613          	li	a2,0
   20488:	00000693          	li	a3,0
   2048c:	40100893          	li	a7,1025
   20490:	00000073          	ecall
   20494:	ea0540e3          	bltz	a0,20334 <__syscall_error>
   20498:	0005051b          	sext.w	a0,a0
   2049c:	00008067          	ret

00000000000204a0 <unlink>:
   204a0:	00000593          	li	a1,0
   204a4:	00000613          	li	a2,0
   204a8:	00000693          	li	a3,0
   204ac:	40200893          	li	a7,1026
   204b0:	00000073          	ecall
   204b4:	e80540e3          	bltz	a0,20334 <__syscall_error>
   204b8:	0005051b          	sext.w	a0,a0
   204bc:	00008067          	ret

00000000000204c0 <execve>:
   204c0:	ff010113          	addi	sp,sp,-16
   204c4:	00113423          	sd	ra,8(sp)
   204c8:	240000ef          	jal	20708 <__errno>
   204cc:	00813083          	ld	ra,8(sp)
   204d0:	00c00793          	li	a5,12
   204d4:	00f52023          	sw	a5,0(a0)
   204d8:	01010113          	addi	sp,sp,16
   204dc:	fff00513          	li	a0,-1
   204e0:	00008067          	ret

00000000000204e4 <fork>:
   204e4:	ff010113          	addi	sp,sp,-16
   204e8:	00113423          	sd	ra,8(sp)
   204ec:	21c000ef          	jal	20708 <__errno>
   204f0:	00813083          	ld	ra,8(sp)
   204f4:	00b00793          	li	a5,11
   204f8:	00f52023          	sw	a5,0(a0)
   204fc:	01010113          	addi	sp,sp,16
   20500:	fff00513          	li	a0,-1
   20504:	00008067          	ret

0000000000020508 <getpid>:
   20508:	00100513          	li	a0,1
   2050c:	00008067          	ret

0000000000020510 <kill>:
   20510:	ff010113          	addi	sp,sp,-16
   20514:	00113423          	sd	ra,8(sp)
   20518:	1f0000ef          	jal	20708 <__errno>
   2051c:	00813083          	ld	ra,8(sp)
   20520:	01600793          	li	a5,22
   20524:	00f52023          	sw	a5,0(a0)
   20528:	01010113          	addi	sp,sp,16
   2052c:	fff00513          	li	a0,-1
   20530:	00008067          	ret

0000000000020534 <wait>:
   20534:	ff010113          	addi	sp,sp,-16
   20538:	00113423          	sd	ra,8(sp)
   2053c:	1cc000ef          	jal	20708 <__errno>
   20540:	00813083          	ld	ra,8(sp)
   20544:	00a00793          	li	a5,10
   20548:	00f52023          	sw	a5,0(a0)
   2054c:	01010113          	addi	sp,sp,16
   20550:	fff00513          	li	a0,-1
   20554:	00008067          	ret

0000000000020558 <isatty>:
   20558:	f8010113          	addi	sp,sp,-128
   2055c:	00010593          	mv	a1,sp
   20560:	00000613          	li	a2,0
   20564:	00000693          	li	a3,0
   20568:	05000893          	li	a7,80
   2056c:	00000073          	ecall
   20570:	dc0542e3          	bltz	a0,20334 <__syscall_error>
   20574:	fff00793          	li	a5,-1
   20578:	0005051b          	sext.w	a0,a0
   2057c:	00f50863          	beq	a0,a5,2058c <isatty+0x34>
   20580:	01012503          	lw	a0,16(sp)
   20584:	40d5551b          	sraiw	a0,a0,0xd
   20588:	00157513          	andi	a0,a0,1
   2058c:	08010113          	addi	sp,sp,128
   20590:	00008067          	ret

0000000000020594 <times>:
   20594:	99018313          	addi	t1,gp,-1648 # 245b0 <t0.2343>
   20598:	00033703          	ld	a4,0(t1)
   2059c:	ff010113          	addi	sp,sp,-16
   205a0:	00050813          	mv	a6,a0
   205a4:	02071063          	bnez	a4,205c4 <times+0x30>
   205a8:	99018513          	addi	a0,gp,-1648 # 245b0 <t0.2343>
   205ac:	00000593          	li	a1,0
   205b0:	00000613          	li	a2,0
   205b4:	00000693          	li	a3,0
   205b8:	0a900893          	li	a7,169
   205bc:	00000073          	ecall
   205c0:	d6054ae3          	bltz	a0,20334 <__syscall_error>
   205c4:	00010513          	mv	a0,sp
   205c8:	00000593          	li	a1,0
   205cc:	00000613          	li	a2,0
   205d0:	00000693          	li	a3,0
   205d4:	0a900893          	li	a7,169
   205d8:	00000073          	ecall
   205dc:	d4054ce3          	bltz	a0,20334 <__syscall_error>
   205e0:	00033703          	ld	a4,0(t1)
   205e4:	00013783          	ld	a5,0(sp)
   205e8:	fff00513          	li	a0,-1
   205ec:	00083823          	sd	zero,16(a6)
   205f0:	40e786b3          	sub	a3,a5,a4
   205f4:	000f47b7          	lui	a5,0xf4
   205f8:	24078793          	addi	a5,a5,576 # f4240 <_end+0xcd448>
   205fc:	02f68733          	mul	a4,a3,a5
   20600:	00833683          	ld	a3,8(t1)
   20604:	00813783          	ld	a5,8(sp)
   20608:	00083c23          	sd	zero,24(a6)
   2060c:	00083423          	sd	zero,8(a6)
   20610:	40d787b3          	sub	a5,a5,a3
   20614:	01010113          	addi	sp,sp,16
   20618:	00f707b3          	add	a5,a4,a5
   2061c:	00f83023          	sd	a5,0(a6)
   20620:	00008067          	ret

0000000000020624 <gettimeofday>:
   20624:	00000593          	li	a1,0
   20628:	00000613          	li	a2,0
   2062c:	00000693          	li	a3,0
   20630:	0a900893          	li	a7,169
   20634:	00000073          	ecall
   20638:	ce054ee3          	bltz	a0,20334 <__syscall_error>
   2063c:	0005051b          	sext.w	a0,a0
   20640:	00008067          	ret

0000000000020644 <ftime>:
   20644:	00051423          	sh	zero,8(a0)
   20648:	00053023          	sd	zero,0(a0)
   2064c:	00000513          	li	a0,0
   20650:	00008067          	ret

0000000000020654 <utime>:
   20654:	fff00513          	li	a0,-1
   20658:	00008067          	ret

000000000002065c <chown>:
   2065c:	fff00513          	li	a0,-1
   20660:	00008067          	ret

0000000000020664 <chmod>:
   20664:	fff00513          	li	a0,-1
   20668:	00008067          	ret

000000000002066c <chdir>:
   2066c:	fff00513          	li	a0,-1
   20670:	00008067          	ret

0000000000020674 <getcwd>:
   20674:	00000513          	li	a0,0
   20678:	00008067          	ret

000000000002067c <sysconf>:
   2067c:	00200793          	li	a5,2
   20680:	00f51863          	bne	a0,a5,20690 <sysconf+0x14>
   20684:	000f4537          	lui	a0,0xf4
   20688:	24050513          	addi	a0,a0,576 # f4240 <_end+0xcd448>
   2068c:	00008067          	ret
   20690:	fff00513          	li	a0,-1
   20694:	00008067          	ret

0000000000020698 <sbrk>:
   20698:	9281b703          	ld	a4,-1752(gp) # 24548 <heap_end.2381>
   2069c:	00050793          	mv	a5,a0
   206a0:	00071863          	bnez	a4,206b0 <sbrk+0x18>
   206a4:	00027737          	lui	a4,0x27
   206a8:	df870713          	addi	a4,a4,-520 # 26df8 <_end>
   206ac:	92e1b423          	sd	a4,-1752(gp) # 24548 <heap_end.2381>
   206b0:	00e78533          	add	a0,a5,a4
   206b4:	00000593          	li	a1,0
   206b8:	00000613          	li	a2,0
   206bc:	00000693          	li	a3,0
   206c0:	0d600893          	li	a7,214
   206c4:	00000073          	ecall
   206c8:	c60546e3          	bltz	a0,20334 <__syscall_error>
   206cc:	9281b683          	ld	a3,-1752(gp) # 24548 <heap_end.2381>
   206d0:	fff00713          	li	a4,-1
   206d4:	00d787b3          	add	a5,a5,a3
   206d8:	00f51663          	bne	a0,a5,206e4 <sbrk+0x4c>
   206dc:	92a1b423          	sd	a0,-1752(gp) # 24548 <heap_end.2381>
   206e0:	00068713          	mv	a4,a3
   206e4:	00070513          	mv	a0,a4
   206e8:	00008067          	ret

00000000000206ec <_exit>:
   206ec:	00000593          	li	a1,0
   206f0:	00000613          	li	a2,0
   206f4:	00000693          	li	a3,0
   206f8:	05d00893          	li	a7,93
   206fc:	00000073          	ecall
   20700:	c2054ae3          	bltz	a0,20334 <__syscall_error>
   20704:	0000006f          	j	20704 <_exit+0x18>

0000000000020708 <__errno>:
   20708:	8181b503          	ld	a0,-2024(gp) # 24438 <_impure_ptr>
   2070c:	00008067          	ret

0000000000020710 <sulp>:
   20710:	f2050553          	fmv.d.x	fa0,a0
   20714:	fe010113          	addi	sp,sp,-32
   20718:	00913423          	sd	s1,8(sp)
   2071c:	00058493          	mv	s1,a1
   20720:	00813823          	sd	s0,16(sp)
   20724:	00113c23          	sd	ra,24(sp)
   20728:	00050413          	mv	s0,a0
   2072c:	a00f80ef          	jal	1892c <__ulp>
   20730:	02048a63          	beqz	s1,20764 <sulp+0x54>
   20734:	42045413          	srai	s0,s0,0x20
   20738:	02141413          	slli	s0,s0,0x21
   2073c:	03545413          	srli	s0,s0,0x35
   20740:	06b00793          	li	a5,107
   20744:	408787bb          	subw	a5,a5,s0
   20748:	00f05e63          	blez	a5,20764 <sulp+0x54>
   2074c:	0147979b          	slliw	a5,a5,0x14
   20750:	3ff00737          	lui	a4,0x3ff00
   20754:	00e787bb          	addw	a5,a5,a4
   20758:	02079793          	slli	a5,a5,0x20
   2075c:	f20787d3          	fmv.d.x	fa5,a5
   20760:	12f57553          	fmul.d	fa0,fa0,fa5
   20764:	01813083          	ld	ra,24(sp)
   20768:	01013403          	ld	s0,16(sp)
   2076c:	00813483          	ld	s1,8(sp)
   20770:	02010113          	addi	sp,sp,32
   20774:	00008067          	ret
