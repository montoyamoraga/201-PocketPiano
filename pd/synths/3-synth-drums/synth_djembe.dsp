declare filename "synth_djembe.dsp"; declare name "synth_djembe"; declare version "2.52.3";
declare compile_options "-single -scal -I libraries/ -I project/ -lang wasm";
declare library_path0 "/libraries/stdfaust.lib";
declare library_path1 "/libraries/physmodels.lib";
declare library_path2 "/libraries/noises.lib";
declare library_path3 "/libraries/filters.lib";
declare library_path4 "/libraries/maths.lib";
declare library_path5 "/libraries/platform.lib";
declare library_path6 "/libraries/envelopes.lib";
declare envelopes_lib_ar_author "Yann Orlarey, Stéphane Letz";
declare envelopes_lib_author "GRAME";
declare envelopes_lib_copyright "GRAME";
declare envelopes_lib_license "LGPL with exception";
declare envelopes_lib_name "Faust Envelope Library";
declare envelopes_lib_version "0.2";
declare filename "FaustDSP";
declare filters_lib_fir_author "Julius O. Smith III";
declare filters_lib_fir_copyright "Copyright (C) 2003-2019 by Julius O. Smith III <jos@ccrma.stanford.edu>";
declare filters_lib_fir_license "MIT-style STK-4.3 license";
declare filters_lib_highpass_author "Julius O. Smith III";
declare filters_lib_highpass_copyright "Copyright (C) 2003-2019 by Julius O. Smith III <jos@ccrma.stanford.edu>";
declare filters_lib_iir_author "Julius O. Smith III";
declare filters_lib_iir_copyright "Copyright (C) 2003-2019 by Julius O. Smith III <jos@ccrma.stanford.edu>";
declare filters_lib_iir_license "MIT-style STK-4.3 license";
declare filters_lib_lowpass0_highpass1 "MIT-style STK-4.3 license";
declare filters_lib_lowpass0_highpass1_author "Julius O. Smith III";
declare filters_lib_lowpass_author "Julius O. Smith III";
declare filters_lib_lowpass_copyright "Copyright (C) 2003-2019 by Julius O. Smith III <jos@ccrma.stanford.edu>";
declare filters_lib_lowpass_license "MIT-style STK-4.3 license";
declare filters_lib_name "Faust Filters Library";
declare filters_lib_tf2_author "Julius O. Smith III";
declare filters_lib_tf2_copyright "Copyright (C) 2003-2019 by Julius O. Smith III <jos@ccrma.stanford.edu>";
declare filters_lib_tf2_license "MIT-style STK-4.3 license";
declare filters_lib_tf2s_author "Julius O. Smith III";
declare filters_lib_tf2s_copyright "Copyright (C) 2003-2019 by Julius O. Smith III <jos@ccrma.stanford.edu>";
declare filters_lib_tf2s_license "MIT-style STK-4.3 license";
declare filters_lib_version "0.3";
declare maths_lib_author "GRAME";
declare maths_lib_copyright "GRAME";
declare maths_lib_license "LGPL with exception";
declare maths_lib_name "Faust Math Library";
declare maths_lib_version "2.5";
declare name "FaustDSP";
declare noises_lib_name "Faust Noise Generator Library";
declare noises_lib_version "0.4";
declare physmodels_lib_name "Faust Physical Models Library";
declare physmodels_lib_version "0.1";
declare platform_lib_name "Generic Platform Library";
declare platform_lib_version "0.2";
ID_0 = _, 12345;
ID_1 = (ID_0 : +);
ID_2 = _, 1103515245;
ID_3 = (ID_2 : *);
ID_4 = ID_1 ~ ID_3;
ID_5 = ID_4, 2.1474836e+09f;
ID_6 = ID_5 : /;
ID_7 = hslider("strikePos", 0.01f, 0.0f, 1.0f, 0.001f);
ID_8 = ID_7, 500;
ID_9 = (ID_8 : *);
ID_10 = 40, ID_9;
ID_11 = (ID_10 : +);
ID_12 = 6.2831855f, ID_11;
ID_13 = (ID_12 : *);
ID_14 = ID_13, 0.5f;
ID_15 = (ID_14 : *);
ID_16 = fconstant(int fSamplingFreq, <math.h>);
ID_17 = 1.0f, ID_16;
ID_18 = (ID_17 : max);
ID_19 = 1.92e+05f, ID_18;
ID_20 = (ID_19 : min);
ID_21 = ID_15, ID_20;
ID_22 = ID_21 : /;
ID_23 = (ID_22 : tan);
ID_24 = 1, ID_23;
ID_25 = (ID_24 : /);
ID_26 = ID_25, ID_25;
ID_27 = (ID_26 : *);
ID_28 = 1, ID_27;
ID_29 = (ID_28 : -);
ID_30 = 2, ID_29;
ID_31 = (ID_30 : *);
ID_32 = 1.4142135f, ID_25;
ID_33 = (ID_32 : *);
ID_34 = 1, ID_33;
ID_35 = (ID_34 : +);
ID_36 = ID_35, ID_27;
ID_37 = (ID_36 : +);
ID_38 = ID_31, ID_37;
ID_39 = (ID_38 : /);
ID_40 = _, ID_39;
ID_41 = (ID_40 : *);
ID_42 = _, 1;
ID_43 = ID_42 : @;
ID_44 = (ID_34 : -);
ID_45 = ID_44, ID_27;
ID_46 = (ID_45 : +);
ID_47 = ID_46, ID_37;
ID_48 = (ID_47 : /);
ID_49 = _, ID_48;
ID_50 = ID_49 : *;
ID_51 = (ID_43 : ID_50);
ID_52 = ID_41, ID_51;
ID_53 = ID_52 :> _;
ID_54 = (_ <: ID_53);
ID_55 = \(x2).(\(x3).(x3,x2 : -)) ~ ID_54;
ID_56 = 0, ID_25;
ID_57 = (ID_56 : *);
ID_58 = 0, ID_57;
ID_59 = (ID_58 : +);
ID_60 = (ID_28 : *);
ID_61 = ID_59, ID_60;
ID_62 = (ID_61 : +);
ID_63 = ID_62, ID_37;
ID_64 = (ID_63 : /);
ID_65 = _, ID_64;
ID_66 = (ID_65 : *);
ID_67 = 0, ID_60;
ID_68 = (ID_67 : -);
ID_69 = 2, ID_68;
ID_70 = (ID_69 : *);
ID_71 = ID_70, ID_37;
ID_72 = (ID_71 : /);
ID_73 = _, ID_72;
ID_74 = ID_73 : *;
ID_75 = (ID_43 : ID_74);
ID_76 = _, 2;
ID_77 = ID_76 : @;
ID_78 = (ID_58 : -);
ID_79 = ID_78, ID_60;
ID_80 = (ID_79 : +);
ID_81 = ID_80, ID_37;
ID_82 = (ID_81 : /);
ID_83 = _, ID_82;
ID_84 = ID_83 : *;
ID_85 = (ID_77 : ID_84);
ID_86 = ID_75, ID_85;
ID_87 = ID_66, ID_86;
ID_88 = ID_87 :> _;
ID_89 = _ <: ID_88;
ID_90 = ID_55 : ID_89;
ID_91 = _ : ID_90;
ID_92 = ID_7, 15000;
ID_93 = (ID_92 : *);
ID_94 = 500, ID_93;
ID_95 = (ID_94 : +);
ID_96 = 6.2831855f, ID_95;
ID_97 = (ID_96 : *);
ID_98 = ID_97, 0.5f;
ID_99 = (ID_98 : *);
ID_100 = ID_99, ID_20;
ID_101 = ID_100 : /;
ID_102 = (ID_101 : tan);
ID_103 = 1, ID_102;
ID_104 = (ID_103 : /);
ID_105 = ID_104, ID_104;
ID_106 = (ID_105 : *);
ID_107 = 1, ID_106;
ID_108 = (ID_107 : -);
ID_109 = 2, ID_108;
ID_110 = (ID_109 : *);
ID_111 = 1.4142135f, ID_104;
ID_112 = (ID_111 : *);
ID_113 = 1, ID_112;
ID_114 = (ID_113 : +);
ID_115 = ID_114, ID_106;
ID_116 = (ID_115 : +);
ID_117 = ID_110, ID_116;
ID_118 = (ID_117 : /);
ID_119 = _, ID_118;
ID_120 = (ID_119 : *);
ID_121 = (ID_113 : -);
ID_122 = ID_121, ID_106;
ID_123 = (ID_122 : +);
ID_124 = ID_123, ID_116;
ID_125 = (ID_124 : /);
ID_126 = _, ID_125;
ID_127 = ID_126 : *;
ID_128 = (ID_43 : ID_127);
ID_129 = ID_120, ID_128;
ID_130 = ID_129 :> _;
ID_131 = (_ <: ID_130);
ID_132 = \(x2).(\(x3).(x3,x2 : -)) ~ ID_131;
ID_133 = 0, ID_104;
ID_134 = (ID_133 : *);
ID_135 = 1, ID_134;
ID_136 = (ID_135 : +);
ID_137 = 0, ID_106;
ID_138 = (ID_137 : *);
ID_139 = ID_136, ID_138;
ID_140 = (ID_139 : +);
ID_141 = ID_140, ID_116;
ID_142 = (ID_141 : /);
ID_143 = _, ID_142;
ID_144 = (ID_143 : *);
ID_145 = 1, ID_138;
ID_146 = (ID_145 : -);
ID_147 = 2, ID_146;
ID_148 = (ID_147 : *);
ID_149 = ID_148, ID_116;
ID_150 = (ID_149 : /);
ID_151 = _, ID_150;
ID_152 = ID_151 : *;
ID_153 = (ID_43 : ID_152);
ID_154 = (ID_135 : -);
ID_155 = ID_154, ID_138;
ID_156 = (ID_155 : +);
ID_157 = ID_156, ID_116;
ID_158 = (ID_157 : /);
ID_159 = _, ID_158;
ID_160 = ID_159 : *;
ID_161 = (ID_77 : ID_160);
ID_162 = ID_153, ID_161;
ID_163 = ID_144, ID_162;
ID_164 = ID_163 :> _;
ID_165 = _ <: ID_164;
ID_166 = ID_132 : ID_165;
ID_167 = _ : ID_166;
ID_168 = button("gate");
ID_169 = (ID_168 : mem);
ID_170 = ID_168, ID_169;
ID_171 = (ID_170 : <=);
ID_172 = \(x1).(x1,(x1,0 : >) : +), ID_171;
ID_173 = (ID_172 : *);
ID_174 = (ID_170 : >);
ID_175 = ID_173, ID_174;
ID_176 = (ID_175 : +);
ID_177 = ID_176 ~ _;
ID_178 = hslider("strikeSharp", 0.5f, 0.0f, 1.0f, 0.001f);
ID_179 = 0.002f, ID_178;
ID_180 = (ID_179 : *);
ID_181 = ID_180, ID_20;
ID_182 = (ID_181 : *);
ID_183 = 1, ID_182;
ID_184 = (ID_183 : max);
ID_185 = 1, ID_184;
ID_186 = (ID_185 : /);
ID_187 = ID_177, ID_186;
ID_188 = (ID_187 : *);
ID_189 = ID_184, ID_186;
ID_190 = (ID_189 : *);
ID_191 = 1, ID_190;
ID_192 = (ID_191 : +);
ID_193 = ID_192, ID_188;
ID_194 = (ID_193 : -);
ID_195 = ID_188, ID_194;
ID_196 = ID_195 : min;
ID_197 = 0, _;
ID_198 = ID_197 : max;
ID_199 = (ID_196 : ID_198);
ID_200 = _, ID_199;
ID_201 = (ID_200 : *);
ID_202 = ID_201, 0.7f;
ID_203 = ID_202 : *;
ID_204 = ID_167 : ID_203;
ID_205 = ID_91 : ID_204;
ID_206 = ID_6 : ID_205;
ID_207 = 0.6f, ID_20;
ID_208 = ID_207 : *;
ID_209 = (ID_208 : float);
ID_210 = 1, ID_209;
ID_211 = (ID_210 : /);
ID_212 = 0.001f, ID_211;
ID_213 = (ID_212 : pow);
ID_214 = -2, ID_213;
ID_215 = (ID_214 : *);
ID_216 = hslider("freq", 55.0f, 2e+01f, 1.5e+03f, 0.001f);
ID_217 = ID_216, 0;
ID_218 = (ID_217 : +);
ID_219 = 6.2831855f, ID_218;
ID_220 = (ID_219 : *);
ID_221 = ID_220, ID_20;
ID_222 = ID_221 : /;
ID_223 = (ID_222 : cos);
ID_224 = ID_215, ID_223;
ID_225 = (ID_224 : *);
ID_226 = _, ID_225;
ID_227 = (ID_226 : *);
ID_228 = ID_213, 2;
ID_229 = (ID_228 : pow);
ID_230 = _, ID_229;
ID_231 = ID_230 : *;
ID_232 = (ID_43 : ID_231);
ID_233 = ID_227, ID_232;
ID_234 = ID_233 :> _;
ID_235 = (_ <: ID_234);
ID_236 = \(x2).(\(x3).(x3,x2 : -)) ~ ID_235;
ID_237 = (ID_42 : *);
ID_238 = _, 0;
ID_239 = ID_238 : *;
ID_240 = (ID_43 : ID_239);
ID_241 = _, -1;
ID_242 = ID_241 : *;
ID_243 = (ID_77 : ID_242);
ID_244 = ID_240, ID_243;
ID_245 = ID_237, ID_244;
ID_246 = ID_245 :> _;
ID_247 = _ <: ID_246;
ID_248 = (ID_236 : ID_247);
ID_249 = ID_248, 1.0f;
ID_250 = (ID_249 : *);
ID_251 = 0.57f, ID_20;
ID_252 = ID_251 : *;
ID_253 = (ID_252 : float);
ID_254 = 1, ID_253;
ID_255 = (ID_254 : /);
ID_256 = 0.001f, ID_255;
ID_257 = (ID_256 : pow);
ID_258 = -2, ID_257;
ID_259 = (ID_258 : *);
ID_260 = ID_216, 200;
ID_261 = (ID_260 : +);
ID_262 = 6.2831855f, ID_261;
ID_263 = (ID_262 : *);
ID_264 = ID_263, ID_20;
ID_265 = ID_264 : /;
ID_266 = (ID_265 : cos);
ID_267 = ID_259, ID_266;
ID_268 = (ID_267 : *);
ID_269 = _, ID_268;
ID_270 = (ID_269 : *);
ID_271 = ID_257, 2;
ID_272 = (ID_271 : pow);
ID_273 = _, ID_272;
ID_274 = ID_273 : *;
ID_275 = (ID_43 : ID_274);
ID_276 = ID_270, ID_275;
ID_277 = ID_276 :> _;
ID_278 = (_ <: ID_277);
ID_279 = \(x2).(\(x3).(x3,x2 : -)) ~ ID_278;
ID_280 = (ID_279 : ID_247);
ID_281 = ID_280, 0.25f;
ID_282 = (ID_281 : *);
ID_283 = 0.54f, ID_20;
ID_284 = ID_283 : *;
ID_285 = (ID_284 : float);
ID_286 = 1, ID_285;
ID_287 = (ID_286 : /);
ID_288 = 0.001f, ID_287;
ID_289 = (ID_288 : pow);
ID_290 = -2, ID_289;
ID_291 = (ID_290 : *);
ID_292 = ID_216, 400;
ID_293 = (ID_292 : +);
ID_294 = 6.2831855f, ID_293;
ID_295 = (ID_294 : *);
ID_296 = ID_295, ID_20;
ID_297 = ID_296 : /;
ID_298 = (ID_297 : cos);
ID_299 = ID_291, ID_298;
ID_300 = (ID_299 : *);
ID_301 = _, ID_300;
ID_302 = (ID_301 : *);
ID_303 = ID_289, 2;
ID_304 = (ID_303 : pow);
ID_305 = _, ID_304;
ID_306 = ID_305 : *;
ID_307 = (ID_43 : ID_306);
ID_308 = ID_302, ID_307;
ID_309 = ID_308 :> _;
ID_310 = (_ <: ID_309);
ID_311 = \(x2).(\(x3).(x3,x2 : -)) ~ ID_310;
ID_312 = (ID_311 : ID_247);
ID_313 = ID_312, 0.11111111f;
ID_314 = (ID_313 : *);
ID_315 = 0.51f, ID_20;
ID_316 = ID_315 : *;
ID_317 = (ID_316 : float);
ID_318 = 1, ID_317;
ID_319 = (ID_318 : /);
ID_320 = 0.001f, ID_319;
ID_321 = (ID_320 : pow);
ID_322 = -2, ID_321;
ID_323 = (ID_322 : *);
ID_324 = ID_216, 600;
ID_325 = (ID_324 : +);
ID_326 = 6.2831855f, ID_325;
ID_327 = (ID_326 : *);
ID_328 = ID_327, ID_20;
ID_329 = ID_328 : /;
ID_330 = (ID_329 : cos);
ID_331 = ID_323, ID_330;
ID_332 = (ID_331 : *);
ID_333 = _, ID_332;
ID_334 = (ID_333 : *);
ID_335 = ID_321, 2;
ID_336 = (ID_335 : pow);
ID_337 = _, ID_336;
ID_338 = ID_337 : *;
ID_339 = (ID_43 : ID_338);
ID_340 = ID_334, ID_339;
ID_341 = ID_340 :> _;
ID_342 = (_ <: ID_341);
ID_343 = \(x2).(\(x3).(x3,x2 : -)) ~ ID_342;
ID_344 = (ID_343 : ID_247);
ID_345 = ID_344, 0.0625f;
ID_346 = (ID_345 : *);
ID_347 = 0.48f, ID_20;
ID_348 = ID_347 : *;
ID_349 = (ID_348 : float);
ID_350 = 1, ID_349;
ID_351 = (ID_350 : /);
ID_352 = 0.001f, ID_351;
ID_353 = (ID_352 : pow);
ID_354 = -2, ID_353;
ID_355 = (ID_354 : *);
ID_356 = ID_216, 800;
ID_357 = (ID_356 : +);
ID_358 = 6.2831855f, ID_357;
ID_359 = (ID_358 : *);
ID_360 = ID_359, ID_20;
ID_361 = ID_360 : /;
ID_362 = (ID_361 : cos);
ID_363 = ID_355, ID_362;
ID_364 = (ID_363 : *);
ID_365 = _, ID_364;
ID_366 = (ID_365 : *);
ID_367 = ID_353, 2;
ID_368 = (ID_367 : pow);
ID_369 = _, ID_368;
ID_370 = ID_369 : *;
ID_371 = (ID_43 : ID_370);
ID_372 = ID_366, ID_371;
ID_373 = ID_372 :> _;
ID_374 = (_ <: ID_373);
ID_375 = \(x2).(\(x3).(x3,x2 : -)) ~ ID_374;
ID_376 = (ID_375 : ID_247);
ID_377 = ID_376, 0.04f;
ID_378 = (ID_377 : *);
ID_379 = 0.45f, ID_20;
ID_380 = ID_379 : *;
ID_381 = (ID_380 : float);
ID_382 = 1, ID_381;
ID_383 = (ID_382 : /);
ID_384 = 0.001f, ID_383;
ID_385 = (ID_384 : pow);
ID_386 = -2, ID_385;
ID_387 = (ID_386 : *);
ID_388 = ID_216, 1000;
ID_389 = (ID_388 : +);
ID_390 = 6.2831855f, ID_389;
ID_391 = (ID_390 : *);
ID_392 = ID_391, ID_20;
ID_393 = ID_392 : /;
ID_394 = (ID_393 : cos);
ID_395 = ID_387, ID_394;
ID_396 = (ID_395 : *);
ID_397 = _, ID_396;
ID_398 = (ID_397 : *);
ID_399 = ID_385, 2;
ID_400 = (ID_399 : pow);
ID_401 = _, ID_400;
ID_402 = ID_401 : *;
ID_403 = (ID_43 : ID_402);
ID_404 = ID_398, ID_403;
ID_405 = ID_404 :> _;
ID_406 = (_ <: ID_405);
ID_407 = \(x2).(\(x3).(x3,x2 : -)) ~ ID_406;
ID_408 = (ID_407 : ID_247);
ID_409 = ID_408, 0.027777778f;
ID_410 = (ID_409 : *);
ID_411 = 0.42f, ID_20;
ID_412 = ID_411 : *;
ID_413 = (ID_412 : float);
ID_414 = 1, ID_413;
ID_415 = (ID_414 : /);
ID_416 = 0.001f, ID_415;
ID_417 = (ID_416 : pow);
ID_418 = -2, ID_417;
ID_419 = (ID_418 : *);
ID_420 = ID_216, 1200;
ID_421 = (ID_420 : +);
ID_422 = 6.2831855f, ID_421;
ID_423 = (ID_422 : *);
ID_424 = ID_423, ID_20;
ID_425 = ID_424 : /;
ID_426 = (ID_425 : cos);
ID_427 = ID_419, ID_426;
ID_428 = (ID_427 : *);
ID_429 = _, ID_428;
ID_430 = (ID_429 : *);
ID_431 = ID_417, 2;
ID_432 = (ID_431 : pow);
ID_433 = _, ID_432;
ID_434 = ID_433 : *;
ID_435 = (ID_43 : ID_434);
ID_436 = ID_430, ID_435;
ID_437 = ID_436 :> _;
ID_438 = (_ <: ID_437);
ID_439 = \(x2).(\(x3).(x3,x2 : -)) ~ ID_438;
ID_440 = (ID_439 : ID_247);
ID_441 = ID_440, 0.020408163f;
ID_442 = (ID_441 : *);
ID_443 = 0.39f, ID_20;
ID_444 = ID_443 : *;
ID_445 = (ID_444 : float);
ID_446 = 1, ID_445;
ID_447 = (ID_446 : /);
ID_448 = 0.001f, ID_447;
ID_449 = (ID_448 : pow);
ID_450 = -2, ID_449;
ID_451 = (ID_450 : *);
ID_452 = ID_216, 1400;
ID_453 = (ID_452 : +);
ID_454 = 6.2831855f, ID_453;
ID_455 = (ID_454 : *);
ID_456 = ID_455, ID_20;
ID_457 = ID_456 : /;
ID_458 = (ID_457 : cos);
ID_459 = ID_451, ID_458;
ID_460 = (ID_459 : *);
ID_461 = _, ID_460;
ID_462 = (ID_461 : *);
ID_463 = ID_449, 2;
ID_464 = (ID_463 : pow);
ID_465 = _, ID_464;
ID_466 = ID_465 : *;
ID_467 = (ID_43 : ID_466);
ID_468 = ID_462, ID_467;
ID_469 = ID_468 :> _;
ID_470 = (_ <: ID_469);
ID_471 = \(x2).(\(x3).(x3,x2 : -)) ~ ID_470;
ID_472 = (ID_471 : ID_247);
ID_473 = ID_472, 0.015625f;
ID_474 = (ID_473 : *);
ID_475 = 0.36f, ID_20;
ID_476 = ID_475 : *;
ID_477 = (ID_476 : float);
ID_478 = 1, ID_477;
ID_479 = (ID_478 : /);
ID_480 = 0.001f, ID_479;
ID_481 = (ID_480 : pow);
ID_482 = -2, ID_481;
ID_483 = (ID_482 : *);
ID_484 = ID_216, 1600;
ID_485 = (ID_484 : +);
ID_486 = 6.2831855f, ID_485;
ID_487 = (ID_486 : *);
ID_488 = ID_487, ID_20;
ID_489 = ID_488 : /;
ID_490 = (ID_489 : cos);
ID_491 = ID_483, ID_490;
ID_492 = (ID_491 : *);
ID_493 = _, ID_492;
ID_494 = (ID_493 : *);
ID_495 = ID_481, 2;
ID_496 = (ID_495 : pow);
ID_497 = _, ID_496;
ID_498 = ID_497 : *;
ID_499 = (ID_43 : ID_498);
ID_500 = ID_494, ID_499;
ID_501 = ID_500 :> _;
ID_502 = (_ <: ID_501);
ID_503 = \(x2).(\(x3).(x3,x2 : -)) ~ ID_502;
ID_504 = (ID_503 : ID_247);
ID_505 = ID_504, 0.012345679f;
ID_506 = (ID_505 : *);
ID_507 = 0.33f, ID_20;
ID_508 = ID_507 : *;
ID_509 = (ID_508 : float);
ID_510 = 1, ID_509;
ID_511 = (ID_510 : /);
ID_512 = 0.001f, ID_511;
ID_513 = (ID_512 : pow);
ID_514 = -2, ID_513;
ID_515 = (ID_514 : *);
ID_516 = ID_216, 1800;
ID_517 = (ID_516 : +);
ID_518 = 6.2831855f, ID_517;
ID_519 = (ID_518 : *);
ID_520 = ID_519, ID_20;
ID_521 = ID_520 : /;
ID_522 = (ID_521 : cos);
ID_523 = ID_515, ID_522;
ID_524 = (ID_523 : *);
ID_525 = _, ID_524;
ID_526 = (ID_525 : *);
ID_527 = ID_513, 2;
ID_528 = (ID_527 : pow);
ID_529 = _, ID_528;
ID_530 = ID_529 : *;
ID_531 = (ID_43 : ID_530);
ID_532 = ID_526, ID_531;
ID_533 = ID_532 :> _;
ID_534 = (_ <: ID_533);
ID_535 = \(x2).(\(x3).(x3,x2 : -)) ~ ID_534;
ID_536 = (ID_535 : ID_247);
ID_537 = ID_536, 0.01f;
ID_538 = (ID_537 : *);
ID_539 = 0.3f, ID_20;
ID_540 = ID_539 : *;
ID_541 = (ID_540 : float);
ID_542 = 1, ID_541;
ID_543 = (ID_542 : /);
ID_544 = 0.001f, ID_543;
ID_545 = (ID_544 : pow);
ID_546 = -2, ID_545;
ID_547 = (ID_546 : *);
ID_548 = ID_216, 2000;
ID_549 = (ID_548 : +);
ID_550 = 6.2831855f, ID_549;
ID_551 = (ID_550 : *);
ID_552 = ID_551, ID_20;
ID_553 = ID_552 : /;
ID_554 = (ID_553 : cos);
ID_555 = ID_547, ID_554;
ID_556 = (ID_555 : *);
ID_557 = _, ID_556;
ID_558 = (ID_557 : *);
ID_559 = ID_545, 2;
ID_560 = (ID_559 : pow);
ID_561 = _, ID_560;
ID_562 = ID_561 : *;
ID_563 = (ID_43 : ID_562);
ID_564 = ID_558, ID_563;
ID_565 = ID_564 :> _;
ID_566 = (_ <: ID_565);
ID_567 = \(x2).(\(x3).(x3,x2 : -)) ~ ID_566;
ID_568 = (ID_567 : ID_247);
ID_569 = ID_568, 0.008264462f;
ID_570 = (ID_569 : *);
ID_571 = 0.27f, ID_20;
ID_572 = ID_571 : *;
ID_573 = (ID_572 : float);
ID_574 = 1, ID_573;
ID_575 = (ID_574 : /);
ID_576 = 0.001f, ID_575;
ID_577 = (ID_576 : pow);
ID_578 = -2, ID_577;
ID_579 = (ID_578 : *);
ID_580 = ID_216, 2200;
ID_581 = (ID_580 : +);
ID_582 = 6.2831855f, ID_581;
ID_583 = (ID_582 : *);
ID_584 = ID_583, ID_20;
ID_585 = ID_584 : /;
ID_586 = (ID_585 : cos);
ID_587 = ID_579, ID_586;
ID_588 = (ID_587 : *);
ID_589 = _, ID_588;
ID_590 = (ID_589 : *);
ID_591 = ID_577, 2;
ID_592 = (ID_591 : pow);
ID_593 = _, ID_592;
ID_594 = ID_593 : *;
ID_595 = (ID_43 : ID_594);
ID_596 = ID_590, ID_595;
ID_597 = ID_596 :> _;
ID_598 = (_ <: ID_597);
ID_599 = \(x2).(\(x3).(x3,x2 : -)) ~ ID_598;
ID_600 = (ID_599 : ID_247);
ID_601 = ID_600, 0.0069444445f;
ID_602 = (ID_601 : *);
ID_603 = 0.24f, ID_20;
ID_604 = ID_603 : *;
ID_605 = (ID_604 : float);
ID_606 = 1, ID_605;
ID_607 = (ID_606 : /);
ID_608 = 0.001f, ID_607;
ID_609 = (ID_608 : pow);
ID_610 = -2, ID_609;
ID_611 = (ID_610 : *);
ID_612 = ID_216, 2400;
ID_613 = (ID_612 : +);
ID_614 = 6.2831855f, ID_613;
ID_615 = (ID_614 : *);
ID_616 = ID_615, ID_20;
ID_617 = ID_616 : /;
ID_618 = (ID_617 : cos);
ID_619 = ID_611, ID_618;
ID_620 = (ID_619 : *);
ID_621 = _, ID_620;
ID_622 = (ID_621 : *);
ID_623 = ID_609, 2;
ID_624 = (ID_623 : pow);
ID_625 = _, ID_624;
ID_626 = ID_625 : *;
ID_627 = (ID_43 : ID_626);
ID_628 = ID_622, ID_627;
ID_629 = ID_628 :> _;
ID_630 = (_ <: ID_629);
ID_631 = \(x2).(\(x3).(x3,x2 : -)) ~ ID_630;
ID_632 = (ID_631 : ID_247);
ID_633 = ID_632, 0.00591716f;
ID_634 = (ID_633 : *);
ID_635 = 0.21f, ID_20;
ID_636 = ID_635 : *;
ID_637 = (ID_636 : float);
ID_638 = 1, ID_637;
ID_639 = (ID_638 : /);
ID_640 = 0.001f, ID_639;
ID_641 = (ID_640 : pow);
ID_642 = -2, ID_641;
ID_643 = (ID_642 : *);
ID_644 = ID_216, 2600;
ID_645 = (ID_644 : +);
ID_646 = 6.2831855f, ID_645;
ID_647 = (ID_646 : *);
ID_648 = ID_647, ID_20;
ID_649 = ID_648 : /;
ID_650 = (ID_649 : cos);
ID_651 = ID_643, ID_650;
ID_652 = (ID_651 : *);
ID_653 = _, ID_652;
ID_654 = (ID_653 : *);
ID_655 = ID_641, 2;
ID_656 = (ID_655 : pow);
ID_657 = _, ID_656;
ID_658 = ID_657 : *;
ID_659 = (ID_43 : ID_658);
ID_660 = ID_654, ID_659;
ID_661 = ID_660 :> _;
ID_662 = (_ <: ID_661);
ID_663 = \(x2).(\(x3).(x3,x2 : -)) ~ ID_662;
ID_664 = (ID_663 : ID_247);
ID_665 = ID_664, 0.0051020407f;
ID_666 = (ID_665 : *);
ID_667 = 0.18f, ID_20;
ID_668 = ID_667 : *;
ID_669 = (ID_668 : float);
ID_670 = 1, ID_669;
ID_671 = (ID_670 : /);
ID_672 = 0.001f, ID_671;
ID_673 = (ID_672 : pow);
ID_674 = -2, ID_673;
ID_675 = (ID_674 : *);
ID_676 = ID_216, 2800;
ID_677 = (ID_676 : +);
ID_678 = 6.2831855f, ID_677;
ID_679 = (ID_678 : *);
ID_680 = ID_679, ID_20;
ID_681 = ID_680 : /;
ID_682 = (ID_681 : cos);
ID_683 = ID_675, ID_682;
ID_684 = (ID_683 : *);
ID_685 = _, ID_684;
ID_686 = (ID_685 : *);
ID_687 = ID_673, 2;
ID_688 = (ID_687 : pow);
ID_689 = _, ID_688;
ID_690 = ID_689 : *;
ID_691 = (ID_43 : ID_690);
ID_692 = ID_686, ID_691;
ID_693 = ID_692 :> _;
ID_694 = (_ <: ID_693);
ID_695 = \(x2).(\(x3).(x3,x2 : -)) ~ ID_694;
ID_696 = (ID_695 : ID_247);
ID_697 = ID_696, 0.0044444446f;
ID_698 = (ID_697 : *);
ID_699 = 0.15f, ID_20;
ID_700 = ID_699 : *;
ID_701 = (ID_700 : float);
ID_702 = 1, ID_701;
ID_703 = (ID_702 : /);
ID_704 = 0.001f, ID_703;
ID_705 = (ID_704 : pow);
ID_706 = -2, ID_705;
ID_707 = (ID_706 : *);
ID_708 = ID_216, 3000;
ID_709 = (ID_708 : +);
ID_710 = 6.2831855f, ID_709;
ID_711 = (ID_710 : *);
ID_712 = ID_711, ID_20;
ID_713 = ID_712 : /;
ID_714 = (ID_713 : cos);
ID_715 = ID_707, ID_714;
ID_716 = (ID_715 : *);
ID_717 = _, ID_716;
ID_718 = (ID_717 : *);
ID_719 = ID_705, 2;
ID_720 = (ID_719 : pow);
ID_721 = _, ID_720;
ID_722 = ID_721 : *;
ID_723 = (ID_43 : ID_722);
ID_724 = ID_718, ID_723;
ID_725 = ID_724 :> _;
ID_726 = (_ <: ID_725);
ID_727 = \(x2).(\(x3).(x3,x2 : -)) ~ ID_726;
ID_728 = (ID_727 : ID_247);
ID_729 = ID_728, 0.00390625f;
ID_730 = (ID_729 : *);
ID_731 = 0.12f, ID_20;
ID_732 = ID_731 : *;
ID_733 = (ID_732 : float);
ID_734 = 1, ID_733;
ID_735 = (ID_734 : /);
ID_736 = 0.001f, ID_735;
ID_737 = (ID_736 : pow);
ID_738 = -2, ID_737;
ID_739 = (ID_738 : *);
ID_740 = ID_216, 3200;
ID_741 = (ID_740 : +);
ID_742 = 6.2831855f, ID_741;
ID_743 = (ID_742 : *);
ID_744 = ID_743, ID_20;
ID_745 = ID_744 : /;
ID_746 = (ID_745 : cos);
ID_747 = ID_739, ID_746;
ID_748 = (ID_747 : *);
ID_749 = _, ID_748;
ID_750 = (ID_749 : *);
ID_751 = ID_737, 2;
ID_752 = (ID_751 : pow);
ID_753 = _, ID_752;
ID_754 = ID_753 : *;
ID_755 = (ID_43 : ID_754);
ID_756 = ID_750, ID_755;
ID_757 = ID_756 :> _;
ID_758 = (_ <: ID_757);
ID_759 = \(x2).(\(x3).(x3,x2 : -)) ~ ID_758;
ID_760 = (ID_759 : ID_247);
ID_761 = ID_760, 0.0034602077f;
ID_762 = (ID_761 : *);
ID_763 = 0.09f, ID_20;
ID_764 = ID_763 : *;
ID_765 = (ID_764 : float);
ID_766 = 1, ID_765;
ID_767 = (ID_766 : /);
ID_768 = 0.001f, ID_767;
ID_769 = (ID_768 : pow);
ID_770 = -2, ID_769;
ID_771 = (ID_770 : *);
ID_772 = ID_216, 3400;
ID_773 = (ID_772 : +);
ID_774 = 6.2831855f, ID_773;
ID_775 = (ID_774 : *);
ID_776 = ID_775, ID_20;
ID_777 = ID_776 : /;
ID_778 = (ID_777 : cos);
ID_779 = ID_771, ID_778;
ID_780 = (ID_779 : *);
ID_781 = _, ID_780;
ID_782 = (ID_781 : *);
ID_783 = ID_769, 2;
ID_784 = (ID_783 : pow);
ID_785 = _, ID_784;
ID_786 = ID_785 : *;
ID_787 = (ID_43 : ID_786);
ID_788 = ID_782, ID_787;
ID_789 = ID_788 :> _;
ID_790 = (_ <: ID_789);
ID_791 = \(x2).(\(x3).(x3,x2 : -)) ~ ID_790;
ID_792 = (ID_791 : ID_247);
ID_793 = ID_792, 0.0030864198f;
ID_794 = (ID_793 : *);
ID_795 = 0.06f, ID_20;
ID_796 = ID_795 : *;
ID_797 = (ID_796 : float);
ID_798 = 1, ID_797;
ID_799 = (ID_798 : /);
ID_800 = 0.001f, ID_799;
ID_801 = (ID_800 : pow);
ID_802 = -2, ID_801;
ID_803 = (ID_802 : *);
ID_804 = ID_216, 3600;
ID_805 = (ID_804 : +);
ID_806 = 6.2831855f, ID_805;
ID_807 = (ID_806 : *);
ID_808 = ID_807, ID_20;
ID_809 = ID_808 : /;
ID_810 = (ID_809 : cos);
ID_811 = ID_803, ID_810;
ID_812 = (ID_811 : *);
ID_813 = _, ID_812;
ID_814 = (ID_813 : *);
ID_815 = ID_801, 2;
ID_816 = (ID_815 : pow);
ID_817 = _, ID_816;
ID_818 = ID_817 : *;
ID_819 = (ID_43 : ID_818);
ID_820 = ID_814, ID_819;
ID_821 = ID_820 :> _;
ID_822 = (_ <: ID_821);
ID_823 = \(x2).(\(x3).(x3,x2 : -)) ~ ID_822;
ID_824 = (ID_823 : ID_247);
ID_825 = ID_824, 0.002770083f;
ID_826 = (ID_825 : *);
ID_827 = 0.03f, ID_20;
ID_828 = ID_827 : *;
ID_829 = (ID_828 : float);
ID_830 = 1, ID_829;
ID_831 = (ID_830 : /);
ID_832 = 0.001f, ID_831;
ID_833 = (ID_832 : pow);
ID_834 = -2, ID_833;
ID_835 = (ID_834 : *);
ID_836 = ID_216, 3800;
ID_837 = (ID_836 : +);
ID_838 = 6.2831855f, ID_837;
ID_839 = (ID_838 : *);
ID_840 = ID_839, ID_20;
ID_841 = ID_840 : /;
ID_842 = (ID_841 : cos);
ID_843 = ID_835, ID_842;
ID_844 = (ID_843 : *);
ID_845 = _, ID_844;
ID_846 = (ID_845 : *);
ID_847 = ID_833, 2;
ID_848 = (ID_847 : pow);
ID_849 = _, ID_848;
ID_850 = ID_849 : *;
ID_851 = (ID_43 : ID_850);
ID_852 = ID_846, ID_851;
ID_853 = ID_852 :> _;
ID_854 = (_ <: ID_853);
ID_855 = \(x2).(\(x3).(x3,x2 : -)) ~ ID_854;
ID_856 = (ID_855 : ID_247);
ID_857 = ID_856, 0.0025f;
ID_858 = (ID_857 : *);
ID_859 = ID_826, ID_858;
ID_860 = ID_794, ID_859;
ID_861 = ID_762, ID_860;
ID_862 = ID_730, ID_861;
ID_863 = ID_698, ID_862;
ID_864 = ID_666, ID_863;
ID_865 = ID_634, ID_864;
ID_866 = ID_602, ID_865;
ID_867 = ID_570, ID_866;
ID_868 = ID_538, ID_867;
ID_869 = ID_506, ID_868;
ID_870 = ID_474, ID_869;
ID_871 = ID_442, ID_870;
ID_872 = ID_410, ID_871;
ID_873 = ID_378, ID_872;
ID_874 = ID_346, ID_873;
ID_875 = ID_314, ID_874;
ID_876 = ID_282, ID_875;
ID_877 = ID_250, ID_876;
ID_878 = _, 20;
ID_879 = ID_878 : /;
ID_880 = ID_877 :> ID_879;
ID_881 = _ <: ID_880;
ID_882 = (ID_206 : ID_881);
ID_883 = hslider("gain", 0.5f, 0.0f, 1.0f, 0.001f);
ID_884 = ID_882, ID_883;
ID_885 = ID_884 : *;
process = ID_885;
