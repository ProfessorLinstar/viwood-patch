.class public abstract Lorg/apache/commons/math/util/FastMath;
.super Ljava/lang/Object;
.source "FastMath.java"


# static fields
.field public static final CBRTTWO:[D

.field public static final COSINE_TABLE_A:[D

.field public static final COSINE_TABLE_B:[D

.field public static final EIGHTHS:[D

.field public static final EXP_FRAC_TABLE_A:[D

.field public static final EXP_FRAC_TABLE_B:[D

.field public static final EXP_INT_TABLE_A:[D

.field public static final EXP_INT_TABLE_B:[D

.field public static final FACT:[D

.field public static final LN_HI_PREC_COEF:[[D

.field public static final LN_MANT:[[D

.field public static final LN_QUICK_COEF:[[D

.field public static final LN_SPLIT_COEF:[[D

.field public static final PI_O_4_BITS:[J

.field public static final RECIP_2PI:[J

.field public static final SINE_TABLE_A:[D

.field public static final SINE_TABLE_B:[D

.field public static final TANGENT_TABLE_A:[D

.field public static final TANGENT_TABLE_B:[D


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const/16 v1, 0x5dc

    .line 55
    new-array v2, v1, [D

    sput-object v2, Lorg/apache/commons/math/util/FastMath;->EXP_INT_TABLE_A:[D

    .line 60
    new-array v1, v1, [D

    sput-object v1, Lorg/apache/commons/math/util/FastMath;->EXP_INT_TABLE_B:[D

    const/16 v1, 0x401

    .line 65
    new-array v2, v1, [D

    sput-object v2, Lorg/apache/commons/math/util/FastMath;->EXP_FRAC_TABLE_A:[D

    .line 70
    new-array v1, v1, [D

    sput-object v1, Lorg/apache/commons/math/util/FastMath;->EXP_FRAC_TABLE_B:[D

    const/16 v1, 0x14

    .line 73
    new-array v1, v1, [D

    sput-object v1, Lorg/apache/commons/math/util/FastMath;->FACT:[D

    const/16 v2, 0x400

    .line 76
    new-array v2, v2, [[D

    sput-object v2, Lorg/apache/commons/math/util/FastMath;->LN_MANT:[[D

    const/4 v2, 0x2

    .line 85
    new-array v3, v2, [D

    fill-array-data v3, :array_0

    new-array v4, v2, [D

    fill-array-data v4, :array_1

    new-array v5, v2, [D

    fill-array-data v5, :array_2

    new-array v6, v2, [D

    fill-array-data v6, :array_3

    new-array v7, v2, [D

    fill-array-data v7, :array_4

    new-array v8, v2, [D

    fill-array-data v8, :array_5

    new-array v9, v2, [D

    fill-array-data v9, :array_6

    new-array v10, v2, [D

    fill-array-data v10, :array_7

    new-array v11, v2, [D

    fill-array-data v11, :array_8

    new-array v12, v2, [D

    fill-array-data v12, :array_9

    new-array v13, v2, [D

    fill-array-data v13, :array_a

    new-array v14, v2, [D

    fill-array-data v14, :array_b

    new-array v15, v2, [D

    fill-array-data v15, :array_c

    new-array v0, v2, [D

    fill-array-data v0, :array_d

    move-object/from16 v16, v0

    new-array v0, v2, [D

    fill-array-data v0, :array_e

    move-object/from16 v17, v0

    new-array v0, v2, [D

    fill-array-data v0, :array_f

    move-object/from16 v18, v0

    filled-new-array/range {v3 .. v18}, [[D

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math/util/FastMath;->LN_SPLIT_COEF:[[D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 105
    new-array v5, v2, [D

    fill-array-data v5, :array_10

    new-array v6, v2, [D

    fill-array-data v6, :array_11

    new-array v7, v2, [D

    fill-array-data v7, :array_12

    new-array v8, v2, [D

    fill-array-data v8, :array_13

    new-array v9, v2, [D

    fill-array-data v9, :array_14

    new-array v10, v2, [D

    fill-array-data v10, :array_15

    new-array v11, v2, [D

    fill-array-data v11, :array_16

    new-array v12, v2, [D

    fill-array-data v12, :array_17

    new-array v13, v2, [D

    fill-array-data v13, :array_18

    filled-new-array/range {v5 .. v13}, [[D

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math/util/FastMath;->LN_QUICK_COEF:[[D

    .line 118
    new-array v5, v2, [D

    fill-array-data v5, :array_19

    new-array v6, v2, [D

    fill-array-data v6, :array_1a

    new-array v7, v2, [D

    fill-array-data v7, :array_1b

    new-array v8, v2, [D

    fill-array-data v8, :array_1c

    new-array v9, v2, [D

    fill-array-data v9, :array_1d

    new-array v10, v2, [D

    fill-array-data v10, :array_1e

    filled-new-array/range {v5 .. v10}, [[D

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math/util/FastMath;->LN_HI_PREC_COEF:[[D

    const/16 v0, 0xe

    .line 128
    new-array v5, v0, [D

    sput-object v5, Lorg/apache/commons/math/util/FastMath;->SINE_TABLE_A:[D

    .line 131
    new-array v5, v0, [D

    sput-object v5, Lorg/apache/commons/math/util/FastMath;->SINE_TABLE_B:[D

    .line 134
    new-array v5, v0, [D

    sput-object v5, Lorg/apache/commons/math/util/FastMath;->COSINE_TABLE_A:[D

    .line 137
    new-array v5, v0, [D

    sput-object v5, Lorg/apache/commons/math/util/FastMath;->COSINE_TABLE_B:[D

    .line 140
    new-array v5, v0, [D

    sput-object v5, Lorg/apache/commons/math/util/FastMath;->TANGENT_TABLE_A:[D

    .line 143
    new-array v5, v0, [D

    sput-object v5, Lorg/apache/commons/math/util/FastMath;->TANGENT_TABLE_B:[D

    const/16 v5, 0x12

    .line 146
    new-array v5, v5, [J

    fill-array-data v5, :array_1f

    sput-object v5, Lorg/apache/commons/math/util/FastMath;->RECIP_2PI:[J

    .line 167
    new-array v5, v2, [J

    fill-array-data v5, :array_20

    sput-object v5, Lorg/apache/commons/math/util/FastMath;->PI_O_4_BITS:[J

    .line 175
    new-array v0, v0, [D

    fill-array-data v0, :array_21

    sput-object v0, Lorg/apache/commons/math/util/FastMath;->EIGHTHS:[D

    const/4 v0, 0x5

    .line 178
    new-array v0, v0, [D

    fill-array-data v0, :array_22

    sput-object v0, Lorg/apache/commons/math/util/FastMath;->CBRTTWO:[D

    const/4 v0, 0x0

    .line 208
    aput-wide v3, v1, v0

    const/4 v1, 0x1

    move v3, v1

    .line 209
    :goto_0
    sget-object v4, Lorg/apache/commons/math/util/FastMath;->FACT:[D

    array-length v5, v4

    if-ge v3, v5, :cond_0

    add-int/lit8 v5, v3, -0x1

    .line 210
    aget-wide v5, v4, v5

    int-to-double v7, v3

    mul-double/2addr v5, v7

    aput-wide v5, v4, v3

    add-int/2addr v3, v1

    goto :goto_0

    .line 213
    :cond_0
    new-array v3, v2, [D

    .line 214
    new-array v2, v2, [D

    move v4, v0

    const/16 v5, 0x2ee

    :goto_1
    if-ge v4, v5, :cond_2

    .line 218
    invoke-static {v4, v3}, Lorg/apache/commons/math/util/FastMath;->expint(I[D)D

    .line 219
    sget-object v6, Lorg/apache/commons/math/util/FastMath;->EXP_INT_TABLE_A:[D

    add-int/lit16 v7, v4, 0x2ee

    aget-wide v8, v3, v0

    aput-wide v8, v6, v7

    .line 220
    sget-object v8, Lorg/apache/commons/math/util/FastMath;->EXP_INT_TABLE_B:[D

    aget-wide v9, v3, v1

    aput-wide v9, v8, v7

    if-eqz v4, :cond_1

    .line 224
    invoke-static {v3, v2}, Lorg/apache/commons/math/util/FastMath;->splitReciprocal([D[D)V

    rsub-int v7, v4, 0x2ee

    .line 225
    aget-wide v9, v2, v0

    aput-wide v9, v6, v7

    .line 226
    aget-wide v9, v2, v1

    aput-wide v9, v8, v7

    :cond_1
    add-int/2addr v4, v1

    goto :goto_1

    :cond_2
    move v2, v0

    .line 231
    :goto_2
    sget-object v4, Lorg/apache/commons/math/util/FastMath;->EXP_FRAC_TABLE_A:[D

    array-length v5, v4

    if-ge v2, v5, :cond_3

    int-to-double v5, v2

    const-wide/high16 v7, 0x4090000000000000L    # 1024.0

    div-double/2addr v5, v7

    .line 232
    invoke-static {v5, v6, v3}, Lorg/apache/commons/math/util/FastMath;->slowexp(D[D)D

    .line 233
    aget-wide v5, v3, v0

    aput-wide v5, v4, v2

    .line 234
    sget-object v4, Lorg/apache/commons/math/util/FastMath;->EXP_FRAC_TABLE_B:[D

    aget-wide v5, v3, v1

    aput-wide v5, v4, v2

    add-int/2addr v2, v1

    goto :goto_2

    .line 238
    :cond_3
    :goto_3
    sget-object v2, Lorg/apache/commons/math/util/FastMath;->LN_MANT:[[D

    array-length v3, v2

    if-ge v0, v3, :cond_4

    int-to-long v3, v0

    const/16 v5, 0x2a

    shl-long/2addr v3, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    or-long/2addr v3, v5

    .line 239
    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    .line 240
    invoke-static {v3, v4}, Lorg/apache/commons/math/util/FastMath;->slowLog(D)[D

    move-result-object v3

    aput-object v3, v2, v0

    add-int/2addr v0, v1

    goto :goto_3

    .line 244
    :cond_4
    invoke-static {}, Lorg/apache/commons/math/util/FastMath;->buildSinCosTables()V

    return-void

    nop

    :array_0
    .array-data 8
        0x4000000000000000L    # 2.0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x3fe5555540000000L    # 0.6666666269302368
        0x3e65555555555575L    # 3.9736429850260626E-8
    .end array-data

    :array_2
    .array-data 8
        0x3fd9999980000000L    # 0.3999999761581421
        0x3e5999999998f89bL    # 2.3841857910019882E-8
    .end array-data

    :array_3
    .array-data 8
        0x3fd2492480000000L    # 0.2857142686843872
        0x3e52492492f04decL    # 1.7029898543501842E-8
    .end array-data

    :array_4
    .array-data 8
        0x3fcc71c700000000L    # 0.2222222089767456
        0x3e4c71c65d4f9f93L    # 1.3245471311735498E-8
    .end array-data

    :array_5
    .array-data 8
        0x3fc745d140000000L    # 0.1818181574344635
        0x3e5a2eadbefa2565L    # 2.4384203044354907E-8
    .end array-data

    :array_6
    .array-data 8
        0x3fc3b13b00000000L    # 0.1538461446762085
        0x3e43a0e93f3d8b15L    # 9.140260083262505E-9
    .end array-data

    :array_7
    .array-data 8
        0x3fc1111100000000L
        0x3e43cd12b7438617L    # 9.220590270857665E-9
    .end array-data

    :array_8
    .array-data 8
        0x3fbe1e1d40000000L    # 0.11764700710773468
        0x3e4a9d505e323f26L    # 1.2393345855018391E-8
    .end array-data

    :array_9
    .array-data 8
        0x3fbaf29580000000L    # 0.10526403784751892
        0x3e41b855b8f7ea77L    # 8.251545029714408E-9
    .end array-data

    :array_a
    .array-data 8
        0x3fb8608e40000000L    # 0.0952233225107193
        0x3e4b38ab3aca7380L    # 1.2675934823758863E-8
    .end array-data

    :array_b
    .array-data 8
        0x3fb64e8f40000000L    # 0.08713622391223907
        0x3e488bd8ad726e7fL    # 1.1430250008909141E-8
    .end array-data

    :array_c
    .array-data 8
        0x3fb41380c0000000L    # 0.07842259109020233
        0x3e24a721115060edL    # 2.404307984052299E-9
    .end array-data

    :array_d
    .array-data 8
        0x3fb56e9340000000L    # 0.08371849358081818
        0x3e494302f4f7069bL    # 1.176342548272881E-8
    .end array-data

    :array_e
    .array-data 8
        0x3f9f52e000000000L    # 0.030589580535888672
        0x3e164345ef031be1L    # 1.2958646899018938E-9
    .end array-data

    :array_f
    .array-data 8
        0x3fc32d66c0000000L    # 0.14982303977012634
        0x3e4a5298001e0c82L    # 1.225743062930824E-8
    .end array-data

    :array_10
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3b1b6a1c267a4b13L    # 5.669184079525E-24
    .end array-data

    :array_11
    .array-data 8
        -0x4030000000000000L    # -0.25
        -0x4030000000000000L    # -0.25
    .end array-data

    :array_12
    .array-data 8
        0x3fd5555540000000L    # 0.3333333134651184
        0x3e555555554bc4dfL    # 1.986821492305628E-8
    .end array-data

    :array_13
    .array-data 8
        -0x4030000000000000L    # -0.25
        -0x42cd3e694bd1e228L    # -6.663542893624021E-14
    .end array-data

    :array_14
    .array-data 8
        0x3fc9999980000000L    # 0.19999998807907104
        0x3e4999ab97c05f95L    # 1.1921056801463227E-8
    .end array-data

    :array_15
    .array-data 8
        -0x403aaaaac0000000L    # -0.1666666567325592
        -0x41bf3fad3df74b94L    # -7.800414592973399E-9
    .end array-data

    :array_16
    .array-data 8
        0x3fc2492480000000L    # 0.1428571343421936
        0x3e38443f9cfb0f62L    # 5.650007086920087E-9
    .end array-data

    :array_17
    .array-data 8
        -0x403fff2bc0000000L    # -0.12502530217170715
        -0x422b8a4dddba2203L    # -7.44321345601866E-11
    .end array-data

    :array_18
    .array-data 8
        0x3fbc738b80000000L    # 0.11113807559013367
        0x3e43cc7f8d7f1d27L    # 9.219544613762692E-9
    .end array-data

    :array_19
    .array-data 8
        0x3ff0000000000000L    # 1.0
        -0x44adc4d4b7a5f493L    # -6.032174644509064E-23
    .end array-data

    :array_1a
    .array-data 8
        -0x4030000000000000L    # -0.25
        -0x4030000000000000L    # -0.25
    .end array-data

    :array_1b
    .array-data 8
        0x3fd5555540000000L    # 0.3333333134651184
        0x3e55555197ea2f51L    # 1.9868161777724352E-8
    .end array-data

    :array_1c
    .array-data 8
        -0x4030000040000000L    # -0.2499999701976776
        -0x41a03fd729481089L    # -2.957007209750105E-8
    .end array-data

    :array_1d
    .array-data 8
        0x3fc99995c0000000L    # 0.19999954104423523
        0x3de5c2091d0952dfL    # 1.5830993332061267E-10
    .end array-data

    :array_1e
    .array-data 8
        -0x403ab85c00000000L    # -0.16624879837036133
        -0x41a40be07956f7d9L    # -2.6033824355191673E-8
    .end array-data

    :array_1f
    .array-data 8
        0x28be60db9391054aL
        0x7f09d5f47d4d3770L    # 8.858637187045085E303
        0x36d8a5664f10e410L    # 1.726826568726609E-44
        0x7f9458eaf7aef158L    # 3.5720961930666036E306
        0x6dc91b8e909374b8L    # 7.090433745230334E220
        0x1924bba82746487L
        0x3f877ac72c4a69cfL    # 0.011464649237770267
        -0x45df7282b4512edfL    # -1.044621797628068E-28
        0x3a671c09ad17df90L    # 2.333465466106487E-27
        0x4e64758e60d4ce7dL    # 4.412632339855038E69
        0x272117e2ef7e4a0eL    # 3.309770029673895E-120
        -0x3801da00087e99fdL    # -6.4118634369864365E38
        -0x4343b9d297d64b9L    # -2.114058060274595E288
        -0x24b2604c360d3d93L    # -6.5709692303435024E131
        -0x2c2e702658680575L    # -5.861253522665201E95
        0x5d49eeb1faf97c5eL    # 2.470533517408828E141
        -0x30be31821d6b5b46L    # -6.292310740746215E73
        -0x6501281400000000L    # -1.189283686241432E-178
    .end array-data

    :array_20
    .array-data 8
        -0x36f0255dde973dccL    # -8.879609370493449E43
        -0x3b399d747f23e32fL    # -2.114197916374807E23
    .end array-data

    :array_21
    .array-data 8
        0x0
        0x3fc0000000000000L    # 0.125
        0x3fd0000000000000L    # 0.25
        0x3fd8000000000000L    # 0.375
        0x3fe0000000000000L    # 0.5
        0x3fe4000000000000L    # 0.625
        0x3fe8000000000000L    # 0.75
        0x3fec000000000000L    # 0.875
        0x3ff0000000000000L    # 1.0
        0x3ff2000000000000L    # 1.125
        0x3ff4000000000000L    # 1.25
        0x3ff6000000000000L    # 1.375
        0x3ff8000000000000L    # 1.5
        0x3ffa000000000000L    # 1.625
    .end array-data

    :array_22
    .array-data 8
        0x3fe428a2f98d728bL    # 0.6299605249474366
        0x3fe965fea53d6e3dL    # 0.7937005259840998
        0x3ff0000000000000L    # 1.0
        0x3ff428a2f98d728bL    # 1.2599210498948732
        0x3ff965fea53d6e3cL    # 1.5874010519681994
    .end array-data
.end method

.method public static abs(D)D
    .locals 3

    .line 0
    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    neg-double p0, p0

    return-wide p0

    :cond_0
    cmpl-double v2, p0, v0

    if-nez v2, :cond_1

    return-wide v0

    :cond_1
    return-wide p0
.end method

.method public static buildSinCosTables()V
    .locals 18

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 1847
    new-array v2, v1, [D

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x7

    if-ge v4, v5, :cond_0

    int-to-double v5, v4

    const-wide/high16 v7, 0x4020000000000000L    # 8.0

    div-double/2addr v5, v7

    .line 1853
    invoke-static {v5, v6, v2}, Lorg/apache/commons/math/util/FastMath;->slowSin(D[D)D

    .line 1854
    sget-object v7, Lorg/apache/commons/math/util/FastMath;->SINE_TABLE_A:[D

    aget-wide v8, v2, v3

    aput-wide v8, v7, v4

    .line 1855
    sget-object v7, Lorg/apache/commons/math/util/FastMath;->SINE_TABLE_B:[D

    aget-wide v8, v2, v0

    aput-wide v8, v7, v4

    .line 1857
    invoke-static {v5, v6, v2}, Lorg/apache/commons/math/util/FastMath;->slowCos(D[D)D

    .line 1858
    sget-object v5, Lorg/apache/commons/math/util/FastMath;->COSINE_TABLE_A:[D

    aget-wide v6, v2, v3

    aput-wide v6, v5, v4

    .line 1859
    sget-object v5, Lorg/apache/commons/math/util/FastMath;->COSINE_TABLE_B:[D

    aget-wide v6, v2, v0

    aput-wide v6, v5, v4

    add-int/2addr v4, v0

    goto :goto_0

    :cond_0
    :goto_1
    const/16 v4, 0xe

    if-ge v5, v4, :cond_2

    .line 1864
    new-array v4, v1, [D

    .line 1865
    new-array v6, v1, [D

    .line 1866
    new-array v7, v1, [D

    .line 1868
    new-array v8, v1, [D

    and-int/lit8 v9, v5, 0x1

    if-nez v9, :cond_1

    .line 1872
    sget-object v9, Lorg/apache/commons/math/util/FastMath;->SINE_TABLE_A:[D

    div-int/lit8 v10, v5, 0x2

    aget-wide v11, v9, v10

    aput-wide v11, v4, v3

    .line 1873
    sget-object v11, Lorg/apache/commons/math/util/FastMath;->SINE_TABLE_B:[D

    aget-wide v12, v11, v10

    aput-wide v12, v4, v0

    .line 1874
    sget-object v12, Lorg/apache/commons/math/util/FastMath;->COSINE_TABLE_A:[D

    aget-wide v13, v12, v10

    aput-wide v13, v6, v3

    .line 1875
    sget-object v13, Lorg/apache/commons/math/util/FastMath;->COSINE_TABLE_B:[D

    aget-wide v14, v13, v10

    aput-wide v14, v6, v0

    .line 1878
    invoke-static {v4, v6, v2}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 1879
    aget-wide v14, v2, v3

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v14, v14, v16

    aput-wide v14, v9, v5

    .line 1880
    aget-wide v9, v2, v0

    mul-double v9, v9, v16

    aput-wide v9, v11, v5

    .line 1883
    invoke-static {v6, v6, v7}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 1884
    invoke-static {v4, v4, v8}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 1885
    aget-wide v9, v8, v3

    neg-double v9, v9

    aput-wide v9, v8, v3

    .line 1886
    aget-wide v9, v8, v0

    neg-double v9, v9

    aput-wide v9, v8, v0

    .line 1887
    invoke-static {v7, v8, v2}, Lorg/apache/commons/math/util/FastMath;->splitAdd([D[D[D)V

    .line 1888
    aget-wide v6, v2, v3

    aput-wide v6, v12, v5

    .line 1889
    aget-wide v6, v2, v0

    aput-wide v6, v13, v5

    goto :goto_2

    .line 1891
    :cond_1
    sget-object v9, Lorg/apache/commons/math/util/FastMath;->SINE_TABLE_A:[D

    div-int/lit8 v10, v5, 0x2

    aget-wide v11, v9, v10

    aput-wide v11, v4, v3

    .line 1892
    sget-object v11, Lorg/apache/commons/math/util/FastMath;->SINE_TABLE_B:[D

    aget-wide v12, v11, v10

    aput-wide v12, v4, v0

    .line 1893
    sget-object v12, Lorg/apache/commons/math/util/FastMath;->COSINE_TABLE_A:[D

    aget-wide v13, v12, v10

    aput-wide v13, v6, v3

    .line 1894
    sget-object v13, Lorg/apache/commons/math/util/FastMath;->COSINE_TABLE_B:[D

    aget-wide v14, v13, v10

    aput-wide v14, v6, v0

    add-int/2addr v10, v0

    .line 1895
    aget-wide v14, v9, v10

    aput-wide v14, v7, v3

    .line 1896
    aget-wide v14, v11, v10

    aput-wide v14, v7, v0

    .line 1897
    aget-wide v14, v12, v10

    .line 1898
    aget-wide v16, v13, v10

    new-array v10, v1, [D

    aput-wide v14, v10, v3

    aput-wide v16, v10, v0

    .line 1901
    invoke-static {v4, v10, v8}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 1902
    invoke-static {v6, v7, v2}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 1903
    invoke-static {v2, v8, v2}, Lorg/apache/commons/math/util/FastMath;->splitAdd([D[D[D)V

    .line 1904
    aget-wide v14, v2, v3

    aput-wide v14, v9, v5

    .line 1905
    aget-wide v14, v2, v0

    aput-wide v14, v11, v5

    .line 1908
    invoke-static {v6, v10, v2}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 1909
    invoke-static {v4, v7, v8}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 1910
    aget-wide v6, v8, v3

    neg-double v6, v6

    aput-wide v6, v8, v3

    .line 1911
    aget-wide v6, v8, v0

    neg-double v6, v6

    aput-wide v6, v8, v0

    .line 1912
    invoke-static {v2, v8, v2}, Lorg/apache/commons/math/util/FastMath;->splitAdd([D[D[D)V

    .line 1913
    aget-wide v6, v2, v3

    aput-wide v6, v12, v5

    .line 1914
    aget-wide v6, v2, v0

    aput-wide v6, v13, v5

    :goto_2
    add-int/2addr v5, v0

    goto/16 :goto_1

    :cond_2
    move v2, v3

    :goto_3
    if-ge v2, v4, :cond_3

    .line 1921
    new-array v5, v1, [D

    .line 1924
    sget-object v6, Lorg/apache/commons/math/util/FastMath;->COSINE_TABLE_A:[D

    aget-wide v6, v6, v2

    .line 1925
    sget-object v8, Lorg/apache/commons/math/util/FastMath;->COSINE_TABLE_B:[D

    aget-wide v8, v8, v2

    new-array v10, v1, [D

    aput-wide v6, v10, v3

    aput-wide v8, v10, v0

    .line 1927
    invoke-static {v10, v5}, Lorg/apache/commons/math/util/FastMath;->splitReciprocal([D[D)V

    .line 1929
    sget-object v6, Lorg/apache/commons/math/util/FastMath;->SINE_TABLE_A:[D

    aget-wide v6, v6, v2

    .line 1930
    sget-object v8, Lorg/apache/commons/math/util/FastMath;->SINE_TABLE_B:[D

    aget-wide v8, v8, v2

    new-array v11, v1, [D

    aput-wide v6, v11, v3

    aput-wide v8, v11, v0

    .line 1932
    invoke-static {v11, v5, v10}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 1934
    sget-object v5, Lorg/apache/commons/math/util/FastMath;->TANGENT_TABLE_A:[D

    aget-wide v6, v10, v3

    aput-wide v6, v5, v2

    .line 1935
    sget-object v5, Lorg/apache/commons/math/util/FastMath;->TANGENT_TABLE_B:[D

    aget-wide v6, v10, v0

    aput-wide v6, v5, v2

    add-int/2addr v2, v0

    goto :goto_3

    :cond_3
    return-void
.end method

.method public static exp(D)D
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 697
    invoke-static {p0, p1, v0, v1, v2}, Lorg/apache/commons/math/util/FastMath;->exp(DD[D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static exp(DD[D)D
    .locals 24

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    const-wide/16 v5, 0x0

    cmpg-double v7, v0, v5

    const/16 v8, 0x2c5

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-gez v7, :cond_6

    neg-double v11, v0

    double-to-int v7, v11

    const/16 v11, 0x2ea

    if-le v7, v11, :cond_1

    if-eqz v4, :cond_0

    .line 721
    aput-wide v5, v4, v9

    .line 722
    aput-wide v5, v4, v10

    :cond_0
    return-wide v5

    :cond_1
    if-le v7, v8, :cond_3

    const-wide v5, 0x4044188000000000L    # 40.19140625

    add-double/2addr v0, v5

    .line 729
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/commons/math/util/FastMath;->exp(DD[D)D

    move-result-wide v0

    const-wide v2, 0x438fa553a68e6b40L    # 2.8504009514401178E17

    div-double/2addr v0, v2

    if-eqz v4, :cond_2

    .line 731
    aget-wide v5, v4, v9

    div-double/2addr v5, v2

    aput-wide v5, v4, v9

    .line 732
    aget-wide v5, v4, v10

    div-double/2addr v5, v2

    aput-wide v5, v4, v10

    :cond_2
    return-wide v0

    :cond_3
    if-ne v7, v8, :cond_5

    const-wide v5, 0x3ff7e80000000000L    # 1.494140625

    add-double/2addr v0, v5

    .line 739
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/commons/math/util/FastMath;->exp(DD[D)D

    move-result-wide v0

    const-wide v2, 0x4011d270274c83abL    # 4.455505956692757

    div-double/2addr v0, v2

    if-eqz v4, :cond_4

    .line 741
    aget-wide v5, v4, v9

    div-double/2addr v5, v2

    aput-wide v5, v4, v9

    .line 742
    aget-wide v5, v4, v10

    div-double/2addr v5, v2

    aput-wide v5, v4, v10

    :cond_4
    return-wide v0

    :cond_5
    add-int/2addr v7, v10

    .line 749
    sget-object v8, Lorg/apache/commons/math/util/FastMath;->EXP_INT_TABLE_A:[D

    rsub-int v11, v7, 0x2ee

    aget-wide v12, v8, v11

    .line 750
    sget-object v8, Lorg/apache/commons/math/util/FastMath;->EXP_INT_TABLE_B:[D

    aget-wide v14, v8, v11

    neg-int v7, v7

    goto :goto_0

    :cond_6
    double-to-int v7, v0

    if-le v7, v8, :cond_8

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-eqz v4, :cond_7

    .line 758
    aput-wide v0, v4, v9

    .line 759
    aput-wide v5, v4, v10

    :cond_7
    return-wide v0

    .line 764
    :cond_8
    sget-object v8, Lorg/apache/commons/math/util/FastMath;->EXP_INT_TABLE_A:[D

    add-int/lit16 v11, v7, 0x2ee

    aget-wide v12, v8, v11

    .line 765
    sget-object v8, Lorg/apache/commons/math/util/FastMath;->EXP_INT_TABLE_B:[D

    aget-wide v14, v8, v11

    :goto_0
    int-to-double v7, v7

    sub-double v16, v0, v7

    const-wide/high16 v18, 0x4090000000000000L    # 1024.0

    move-wide/from16 v20, v5

    mul-double v5, v16, v18

    double-to-int v5, v5

    .line 773
    sget-object v6, Lorg/apache/commons/math/util/FastMath;->EXP_FRAC_TABLE_A:[D

    aget-wide v16, v6, v5

    .line 774
    sget-object v6, Lorg/apache/commons/math/util/FastMath;->EXP_FRAC_TABLE_B:[D

    aget-wide v22, v6, v5

    int-to-double v5, v5

    div-double v5, v5, v18

    add-double/2addr v7, v5

    sub-double/2addr v0, v7

    const-wide v5, 0x3fa5580030b20837L    # 0.04168701738764507

    mul-double/2addr v5, v0

    const-wide v7, 0x3fc55555329ee223L    # 0.1666666505023083

    add-double/2addr v5, v7

    mul-double/2addr v5, v0

    const-wide v7, 0x3fe0000000009631L    # 0.5000000000042687

    add-double/2addr v5, v7

    mul-double/2addr v5, v0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double/2addr v5, v7

    mul-double/2addr v5, v0

    const-wide v0, -0x4418bd44dd9ed4efL    # -3.940510424527919E-20

    add-double/2addr v5, v0

    mul-double v0, v12, v16

    mul-double v12, v12, v22

    mul-double v16, v16, v14

    add-double v12, v12, v16

    mul-double v14, v14, v22

    add-double/2addr v12, v14

    add-double v7, v12, v0

    cmpl-double v11, v2, v20

    if-eqz v11, :cond_9

    mul-double v14, v7, v2

    mul-double v16, v14, v5

    add-double v16, v16, v14

    mul-double v14, v7, v5

    add-double v16, v16, v14

    add-double v16, v16, v12

    add-double v16, v16, v0

    goto :goto_1

    :cond_9
    mul-double v14, v7, v5

    add-double/2addr v14, v12

    add-double v16, v14, v0

    :goto_1
    if-eqz v4, :cond_a

    .line 817
    aput-wide v0, v4, v9

    mul-double v0, v7, v2

    mul-double v2, v0, v5

    add-double/2addr v2, v0

    mul-double/2addr v7, v5

    add-double/2addr v2, v7

    add-double/2addr v2, v12

    .line 818
    aput-wide v2, v4, v10

    :cond_a
    return-wide v16
.end method

.method public static expint(I[D)D
    .locals 7

    const/4 v0, 0x2

    .line 1185
    new-array v1, v0, [D

    .line 1186
    new-array v2, v0, [D

    .line 1187
    new-array v0, v0, [D

    const-wide v3, 0x4005bf0a8b145769L    # Math.E

    const/4 v5, 0x0

    .line 1196
    aput-wide v3, v1, v5

    const-wide v3, 0x3ca4d57ee2b1013aL

    const/4 v6, 0x1

    .line 1197
    aput-wide v3, v1, v6

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 1199
    invoke-static {v3, v4, v0}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    :goto_0
    if-lez p0, :cond_1

    and-int/lit8 v3, p0, 0x1

    if-eqz v3, :cond_0

    .line 1203
    invoke-static {v0, v1, v2}, Lorg/apache/commons/math/util/FastMath;->quadMult([D[D[D)V

    .line 1204
    aget-wide v3, v2, v5

    aput-wide v3, v0, v5

    aget-wide v3, v2, v6

    aput-wide v3, v0, v6

    .line 1207
    :cond_0
    invoke-static {v1, v1, v2}, Lorg/apache/commons/math/util/FastMath;->quadMult([D[D[D)V

    .line 1208
    aget-wide v3, v2, v5

    aput-wide v3, v1, v5

    aget-wide v3, v2, v6

    aput-wide v3, v1, v6

    shr-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 1214
    aget-wide v1, v0, v5

    aput-wide v1, p1, v5

    .line 1215
    aget-wide v1, v0, v6

    aput-wide v1, p1, v6

    .line 1217
    invoke-static {p1}, Lorg/apache/commons/math/util/FastMath;->resplit([D)V

    .line 1220
    :cond_2
    aget-wide p0, v0, v5

    aget-wide v0, v0, v6

    add-double/2addr p0, v0

    return-wide p0
.end method

.method public static log(D)D
    .locals 1

    const/4 v0, 0x0

    .line 1231
    invoke-static {p0, p1, v0}, Lorg/apache/commons/math/util/FastMath;->log(D[D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static log(D[D)D
    .locals 23

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    const-wide/high16 v3, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    if-nez v2, :cond_0

    return-wide v3

    .line 1244
    :cond_0
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    const-wide/high16 v7, -0x8000000000000000L

    and-long/2addr v7, v5

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    const/4 v8, 0x0

    if-nez v7, :cond_1

    cmpl-double v7, p0, p0

    if-eqz v7, :cond_3

    :cond_1
    if-eqz v2, :cond_3

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    if-eqz p2, :cond_2

    .line 1250
    aput-wide v0, p2, v8

    :cond_2
    return-wide v0

    :cond_3
    const-wide/high16 v11, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v7, p0, v11

    if-nez v7, :cond_5

    if-eqz p2, :cond_4

    .line 1260
    aput-wide v11, p2, v8

    :cond_4
    return-wide v11

    :cond_5
    const/16 v7, 0x34

    shr-long v11, v5, v7

    long-to-int v7, v11

    add-int/lit16 v7, v7, -0x3ff

    const-wide/high16 v11, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v11, v5

    cmp-long v11, v11, v9

    const/4 v12, 0x1

    if-nez v11, :cond_8

    if-nez v2, :cond_7

    if-eqz p2, :cond_6

    .line 1274
    aput-wide v3, p2, v8

    :cond_6
    return-wide v3

    :cond_7
    shl-long v2, v5, v12

    move-wide v5, v2

    :goto_0
    const-wide/high16 v2, 0x10000000000000L

    and-long/2addr v2, v5

    cmp-long v2, v2, v9

    if-nez v2, :cond_8

    add-int/lit8 v7, v7, -0x1

    shl-long/2addr v5, v12

    goto :goto_0

    :cond_8
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v4, -0x1

    const-wide/high16 v9, 0x41d0000000000000L    # 1.073741824E9

    if-eq v7, v4, :cond_9

    if-nez v7, :cond_b

    :cond_9
    const-wide v13, 0x3ff028f5c28f5c29L    # 1.01

    cmpg-double v4, p0, v13

    if-gez v4, :cond_b

    const-wide v13, 0x3fefae147ae147aeL    # 0.99

    cmpl-double v4, p0, v13

    if-lez v4, :cond_b

    if-nez p2, :cond_b

    sub-double v0, p0, v2

    mul-double v2, v0, v9

    add-double v4, v0, v2

    sub-double/2addr v4, v2

    sub-double/2addr v0, v4

    .line 1303
    sget-object v2, Lorg/apache/commons/math/util/FastMath;->LN_QUICK_COEF:[[D

    array-length v3, v2

    sub-int/2addr v3, v12

    aget-object v3, v2, v3

    aget-wide v6, v3, v8

    .line 1304
    array-length v3, v2

    sub-int/2addr v3, v12

    aget-object v3, v2, v3

    aget-wide v13, v3, v12

    .line 1306
    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    :goto_1
    if-ltz v2, :cond_a

    mul-double v15, v6, v4

    mul-double/2addr v6, v0

    mul-double v17, v13, v4

    add-double v6, v6, v17

    mul-double/2addr v13, v0

    add-double/2addr v6, v13

    mul-double v13, v15, v9

    add-double v17, v15, v13

    sub-double v17, v17, v13

    sub-double v15, v15, v17

    add-double/2addr v15, v6

    .line 1316
    sget-object v3, Lorg/apache/commons/math/util/FastMath;->LN_QUICK_COEF:[[D

    aget-object v3, v3, v2

    aget-wide v6, v3, v8

    add-double v17, v17, v6

    .line 1317
    aget-wide v6, v3, v12

    add-double/2addr v15, v6

    mul-double v6, v17, v9

    add-double v13, v17, v6

    sub-double v6, v13, v6

    sub-double v17, v17, v6

    add-double v13, v17, v15

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_a
    mul-double v2, v6, v4

    mul-double/2addr v6, v0

    mul-double/2addr v4, v13

    add-double/2addr v6, v4

    mul-double/2addr v13, v0

    add-double/2addr v6, v13

    mul-double/2addr v9, v2

    add-double v0, v2, v9

    sub-double/2addr v0, v9

    sub-double/2addr v2, v0

    add-double/2addr v2, v6

    add-double/2addr v0, v2

    return-wide v0

    .line 1337
    :cond_b
    sget-object v4, Lorg/apache/commons/math/util/FastMath;->LN_MANT:[[D

    const-wide v13, 0xffc0000000000L

    and-long/2addr v13, v5

    const/16 v11, 0x2a

    move-wide v15, v0

    shr-long v0, v13, v11

    long-to-int v0, v0

    aget-object v0, v4, v0

    const-wide v17, 0x3ffffffffffL

    and-long v4, v5, v17

    long-to-double v4, v4

    const-wide/high16 v17, 0x4330000000000000L    # 4.503599627370496E15

    long-to-double v13, v13

    add-double v13, v13, v17

    div-double v17, v4, v13

    if-eqz p2, :cond_d

    mul-double v1, v17, v9

    add-double v19, v17, v1

    sub-double v19, v19, v1

    sub-double v17, v17, v19

    mul-double v1, v19, v13

    sub-double/2addr v4, v1

    mul-double v1, v17, v13

    sub-double/2addr v4, v1

    div-double/2addr v4, v13

    add-double v17, v17, v4

    .line 1368
    sget-object v1, Lorg/apache/commons/math/util/FastMath;->LN_HI_PREC_COEF:[[D

    array-length v2, v1

    sub-int/2addr v2, v12

    aget-object v2, v1, v2

    aget-wide v2, v2, v8

    .line 1369
    array-length v4, v1

    sub-int/2addr v4, v12

    aget-object v4, v1, v4

    aget-wide v4, v4, v12

    .line 1371
    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    :goto_2
    if-ltz v1, :cond_c

    mul-double v13, v2, v19

    mul-double v2, v2, v17

    mul-double v21, v4, v19

    add-double v2, v2, v21

    mul-double v4, v4, v17

    add-double/2addr v2, v4

    mul-double v4, v13, v9

    add-double v21, v13, v4

    sub-double v21, v21, v4

    sub-double v13, v13, v21

    add-double/2addr v13, v2

    .line 1381
    sget-object v2, Lorg/apache/commons/math/util/FastMath;->LN_HI_PREC_COEF:[[D

    aget-object v2, v2, v1

    aget-wide v3, v2, v8

    add-double v21, v21, v3

    .line 1382
    aget-wide v2, v2, v12

    add-double/2addr v13, v2

    mul-double v2, v21, v9

    add-double v4, v21, v2

    sub-double v2, v4, v2

    sub-double v21, v21, v2

    add-double v4, v21, v13

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_c
    mul-double v9, v2, v19

    mul-double v2, v2, v17

    mul-double v19, v19, v4

    add-double v2, v2, v19

    mul-double v4, v4, v17

    add-double/2addr v2, v4

    add-double v4, v9, v2

    sub-double v9, v4, v9

    sub-double/2addr v9, v2

    neg-double v1, v9

    goto :goto_3

    :cond_d
    const-wide v4, -0x403ab85bc817c0f3L    # -0.16624882440418567

    mul-double v4, v4, v17

    const-wide v9, 0x3fc99995c0570824L    # 0.19999954120254515

    add-double/2addr v4, v9

    mul-double v4, v4, v17

    const-wide v9, -0x40300000007fae53L    # -0.2499999997677497

    add-double/2addr v4, v9

    mul-double v4, v4, v17

    const-wide v9, 0x3fd5555555555198L    # 0.3333333333332802

    add-double/2addr v4, v9

    mul-double v4, v4, v17

    const-wide/high16 v9, -0x4020000000000000L    # -0.5

    add-double/2addr v4, v9

    mul-double v4, v4, v17

    add-double/2addr v4, v2

    mul-double v4, v4, v17

    move-wide v1, v15

    :goto_3
    int-to-double v6, v7

    const-wide v9, 0x3fe62e42c0000000L    # 0.6931470632553101

    mul-double/2addr v9, v6

    .line 1429
    aget-wide v13, v0, v8

    add-double v17, v9, v13

    sub-double v9, v17, v9

    sub-double/2addr v9, v13

    neg-double v9, v9

    add-double/2addr v9, v15

    add-double v13, v17, v4

    sub-double v15, v13, v17

    sub-double v3, v15, v4

    neg-double v3, v3

    add-double/2addr v9, v3

    const-wide v3, 0x3e7f7d1cf79abc9eL    # 1.1730463525082348E-7

    mul-double/2addr v6, v3

    add-double v3, v13, v6

    sub-double v13, v3, v13

    sub-double/2addr v13, v6

    neg-double v5, v13

    add-double/2addr v9, v5

    .line 1444
    aget-wide v5, v0, v12

    add-double v13, v3, v5

    sub-double v3, v13, v3

    sub-double/2addr v3, v5

    neg-double v3, v3

    add-double/2addr v9, v3

    add-double v3, v13, v1

    sub-double v5, v3, v13

    sub-double/2addr v5, v1

    neg-double v0, v5

    add-double/2addr v9, v0

    if-eqz p2, :cond_e

    .line 1455
    aput-wide v3, p2, v8

    .line 1456
    aput-wide v9, p2, v12

    :cond_e
    add-double/2addr v3, v9

    return-wide v3
.end method

.method public static max(DD)D
    .locals 4

    cmpl-double v0, p0, p2

    if-lez v0, :cond_0

    goto :goto_1

    :cond_0
    cmpg-double v1, p0, p2

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0

    .line 3907
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    :goto_0
    return-wide p2

    :cond_3
    :goto_1
    return-wide p0
.end method

.method public static min(DD)D
    .locals 4

    cmpl-double v0, p0, p2

    if-lez v0, :cond_0

    goto :goto_1

    :cond_0
    cmpg-double v1, p0, p2

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0

    .line 3839
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    :goto_0
    return-wide p0

    :cond_3
    :goto_1
    return-wide p2
.end method

.method public static quadMult([D[D[D)V
    .locals 13

    const/4 v0, 0x2

    .line 1130
    new-array v1, v0, [D

    .line 1131
    new-array v2, v0, [D

    .line 1132
    new-array v0, v0, [D

    const/4 v3, 0x0

    .line 1135
    aget-wide v4, p0, v3

    invoke-static {v4, v5, v1}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    .line 1136
    aget-wide v4, p1, v3

    invoke-static {v4, v5, v2}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    .line 1137
    invoke-static {v1, v2, v0}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 1139
    aget-wide v4, v0, v3

    aput-wide v4, p2, v3

    const/4 v4, 0x1

    .line 1140
    aget-wide v5, v0, v4

    aput-wide v5, p2, v4

    .line 1143
    aget-wide v5, p1, v4

    invoke-static {v5, v6, v2}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    .line 1144
    invoke-static {v1, v2, v0}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 1146
    aget-wide v5, p2, v3

    aget-wide v7, v0, v3

    add-double v9, v5, v7

    .line 1147
    aget-wide v11, p2, v4

    sub-double v5, v9, v5

    sub-double/2addr v5, v7

    sub-double/2addr v11, v5

    aput-wide v11, p2, v4

    .line 1148
    aput-wide v9, p2, v3

    .line 1149
    aget-wide v5, v0, v4

    add-double v7, v9, v5

    sub-double v9, v7, v9

    sub-double/2addr v9, v5

    sub-double/2addr v11, v9

    .line 1150
    aput-wide v11, p2, v4

    .line 1151
    aput-wide v7, p2, v3

    .line 1154
    aget-wide v5, p0, v4

    invoke-static {v5, v6, v1}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    .line 1155
    aget-wide v5, p1, v3

    invoke-static {v5, v6, v2}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    .line 1156
    invoke-static {v1, v2, v0}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 1158
    aget-wide v5, p2, v3

    aget-wide v7, v0, v3

    add-double v9, v5, v7

    .line 1159
    aget-wide v11, p2, v4

    sub-double v5, v9, v5

    sub-double/2addr v5, v7

    sub-double/2addr v11, v5

    aput-wide v11, p2, v4

    .line 1160
    aput-wide v9, p2, v3

    .line 1161
    aget-wide v5, v0, v4

    add-double v7, v9, v5

    sub-double v9, v7, v9

    sub-double/2addr v9, v5

    sub-double/2addr v11, v9

    .line 1162
    aput-wide v11, p2, v4

    .line 1163
    aput-wide v7, p2, v3

    .line 1166
    aget-wide v5, p0, v4

    invoke-static {v5, v6, v1}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    .line 1167
    aget-wide p0, p1, v4

    invoke-static {p0, p1, v2}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    .line 1168
    invoke-static {v1, v2, v0}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 1170
    aget-wide p0, p2, v3

    aget-wide v1, v0, v3

    add-double v5, p0, v1

    .line 1171
    aget-wide v7, p2, v4

    sub-double p0, v5, p0

    sub-double/2addr p0, v1

    sub-double/2addr v7, p0

    aput-wide v7, p2, v4

    .line 1172
    aput-wide v5, p2, v3

    .line 1173
    aget-wide p0, v0, v4

    add-double v0, v5, p0

    sub-double v5, v0, v5

    sub-double/2addr v5, p0

    sub-double/2addr v7, v5

    .line 1174
    aput-wide v7, p2, v4

    .line 1175
    aput-wide v0, p2, v3

    return-void
.end method

.method public static resplit([D)V
    .locals 10

    const/4 v0, 0x0

    .line 1037
    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    add-double v6, v1, v4

    sub-double v1, v6, v1

    sub-double/2addr v1, v4

    neg-double v1, v1

    const-wide v4, 0x7dfe94c85c298c4cL    # 8.0E298

    cmpg-double v4, v6, v4

    const-wide/high16 v8, 0x41d0000000000000L    # 1.073741824E9

    if-gez v4, :cond_0

    const-wide v4, -0x2016b37a3d673b4L    # -8.0E298

    cmpl-double v4, v6, v4

    if-lez v4, :cond_0

    mul-double/2addr v8, v6

    add-double v4, v6, v8

    sub-double/2addr v4, v8

    .line 1042
    aput-wide v4, p0, v0

    sub-double/2addr v6, v4

    add-double/2addr v6, v1

    .line 1043
    aput-wide v6, p0, v3

    return-void

    :cond_0
    const-wide/high16 v4, 0x3e10000000000000L    # 9.313225746154785E-10

    mul-double/2addr v4, v6

    add-double/2addr v4, v6

    sub-double/2addr v4, v6

    mul-double/2addr v4, v8

    .line 1046
    aput-wide v4, p0, v0

    sub-double/2addr v6, v4

    add-double/2addr v6, v1

    .line 1047
    aput-wide v6, p0, v3

    return-void
.end method

.method public static slowCos(D[D)D
    .locals 7

    const/4 v0, 0x2

    .line 1809
    new-array v1, v0, [D

    .line 1810
    new-array v2, v0, [D

    .line 1811
    new-array v3, v0, [D

    .line 1812
    new-array v0, v0, [D

    .line 1813
    invoke-static {p0, p1, v1}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    const/4 p0, 0x1

    const-wide/16 v4, 0x0

    .line 1814
    aput-wide v4, v2, p0

    const/4 p1, 0x0

    aput-wide v4, v2, p1

    const/16 v4, 0x13

    :goto_0
    if-ltz v4, :cond_2

    .line 1817
    invoke-static {v1, v2, v0}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 1818
    aget-wide v5, v0, p1

    aput-wide v5, v2, p1

    aget-wide v5, v0, p0

    aput-wide v5, v2, p0

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_0

    goto :goto_1

    .line 1824
    :cond_0
    sget-object v5, Lorg/apache/commons/math/util/FastMath;->FACT:[D

    aget-wide v5, v5, v4

    invoke-static {v5, v6, v0}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    .line 1825
    invoke-static {v0, v3}, Lorg/apache/commons/math/util/FastMath;->splitReciprocal([D[D)V

    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_1

    .line 1828
    aget-wide v5, v3, p1

    neg-double v5, v5

    aput-wide v5, v3, p1

    .line 1829
    aget-wide v5, v3, p0

    neg-double v5, v5

    aput-wide v5, v3, p0

    .line 1832
    :cond_1
    invoke-static {v2, v3, v0}, Lorg/apache/commons/math/util/FastMath;->splitAdd([D[D[D)V

    .line 1833
    aget-wide v5, v0, p1

    aput-wide v5, v2, p1

    aget-wide v5, v0, p0

    aput-wide v5, v2, p0

    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 1837
    aget-wide v0, v2, p1

    aput-wide v0, p2, p1

    .line 1838
    aget-wide v0, v2, p0

    aput-wide v0, p2, p0

    .line 1841
    :cond_3
    aget-wide p1, v2, p1

    aget-wide v0, v2, p0

    add-double/2addr p1, v0

    return-wide p1
.end method

.method public static slowLog(D)[D
    .locals 9

    const/4 v0, 0x2

    .line 1716
    new-array v1, v0, [D

    .line 1717
    new-array v2, v0, [D

    .line 1718
    new-array v3, v0, [D

    .line 1719
    new-array v4, v0, [D

    .line 1721
    invoke-static {p0, p1, v1}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    const/4 p0, 0x0

    .line 1724
    aget-wide v5, v1, p0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double/2addr v5, v7

    aput-wide v5, v1, p0

    .line 1725
    invoke-static {v1}, Lorg/apache/commons/math/util/FastMath;->resplit([D)V

    .line 1726
    invoke-static {v1, v4}, Lorg/apache/commons/math/util/FastMath;->splitReciprocal([D[D)V

    .line 1727
    aget-wide v5, v1, p0

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    sub-double/2addr v5, v7

    aput-wide v5, v1, p0

    .line 1728
    invoke-static {v1}, Lorg/apache/commons/math/util/FastMath;->resplit([D)V

    .line 1729
    invoke-static {v1, v4, v3}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 1730
    aget-wide v5, v3, p0

    aput-wide v5, v1, p0

    const/4 p1, 0x1

    .line 1731
    aget-wide v5, v3, p1

    aput-wide v5, v1, p1

    .line 1734
    invoke-static {v1, v1, v2}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 1740
    sget-object v5, Lorg/apache/commons/math/util/FastMath;->LN_SPLIT_COEF:[[D

    array-length v6, v5

    sub-int/2addr v6, p1

    aget-object v6, v5, v6

    aget-wide v6, v6, p0

    aput-wide v6, v3, p0

    .line 1741
    array-length v6, v5

    sub-int/2addr v6, p1

    aget-object v6, v5, v6

    aget-wide v6, v6, p1

    aput-wide v6, v3, p1

    .line 1743
    array-length v5, v5

    sub-int/2addr v5, v0

    :goto_0
    if-ltz v5, :cond_0

    .line 1744
    invoke-static {v3, v2, v4}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 1745
    aget-wide v6, v4, p0

    aput-wide v6, v3, p0

    .line 1746
    aget-wide v6, v4, p1

    aput-wide v6, v3, p1

    .line 1747
    sget-object v0, Lorg/apache/commons/math/util/FastMath;->LN_SPLIT_COEF:[[D

    aget-object v0, v0, v5

    invoke-static {v3, v0, v4}, Lorg/apache/commons/math/util/FastMath;->splitAdd([D[D[D)V

    .line 1748
    aget-wide v6, v4, p0

    aput-wide v6, v3, p0

    .line 1749
    aget-wide v6, v4, p1

    aput-wide v6, v3, p1

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 1752
    :cond_0
    invoke-static {v3, v1, v4}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 1753
    aget-wide v0, v4, p0

    aput-wide v0, v3, p0

    .line 1754
    aget-wide v0, v4, p1

    aput-wide v0, v3, p1

    return-object v3
.end method

.method public static slowSin(D[D)D
    .locals 7

    const/4 v0, 0x2

    .line 1766
    new-array v1, v0, [D

    .line 1767
    new-array v2, v0, [D

    .line 1768
    new-array v3, v0, [D

    .line 1769
    new-array v0, v0, [D

    .line 1770
    invoke-static {p0, p1, v1}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    const/4 p0, 0x1

    const-wide/16 v4, 0x0

    .line 1771
    aput-wide v4, v2, p0

    const/4 p1, 0x0

    aput-wide v4, v2, p1

    const/16 v4, 0x13

    :goto_0
    if-ltz v4, :cond_2

    .line 1774
    invoke-static {v1, v2, v0}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 1775
    aget-wide v5, v0, p1

    aput-wide v5, v2, p1

    aget-wide v5, v0, p0

    aput-wide v5, v2, p0

    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_0

    goto :goto_1

    .line 1781
    :cond_0
    sget-object v5, Lorg/apache/commons/math/util/FastMath;->FACT:[D

    aget-wide v5, v5, v4

    invoke-static {v5, v6, v0}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    .line 1782
    invoke-static {v0, v3}, Lorg/apache/commons/math/util/FastMath;->splitReciprocal([D[D)V

    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_1

    .line 1785
    aget-wide v5, v3, p1

    neg-double v5, v5

    aput-wide v5, v3, p1

    .line 1786
    aget-wide v5, v3, p0

    neg-double v5, v5

    aput-wide v5, v3, p0

    .line 1789
    :cond_1
    invoke-static {v2, v3, v0}, Lorg/apache/commons/math/util/FastMath;->splitAdd([D[D[D)V

    .line 1790
    aget-wide v5, v0, p1

    aput-wide v5, v2, p1

    aget-wide v5, v0, p0

    aput-wide v5, v2, p0

    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 1794
    aget-wide v0, v2, p1

    aput-wide v0, p2, p1

    .line 1795
    aget-wide v0, v2, p0

    aput-wide v0, p2, p0

    .line 1798
    :cond_3
    aget-wide p1, v2, p1

    aget-wide v0, v2, p0

    add-double/2addr p1, v0

    return-wide p1
.end method

.method public static slowexp(D[D)D
    .locals 7

    const/4 v0, 0x2

    .line 987
    new-array v1, v0, [D

    .line 988
    new-array v2, v0, [D

    .line 989
    new-array v3, v0, [D

    .line 990
    new-array v0, v0, [D

    .line 991
    invoke-static {p0, p1, v1}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    const/4 p0, 0x1

    const-wide/16 v4, 0x0

    .line 992
    aput-wide v4, v2, p0

    const/4 p1, 0x0

    aput-wide v4, v2, p1

    const/16 v4, 0x13

    :goto_0
    if-ltz v4, :cond_0

    .line 995
    invoke-static {v1, v2, v0}, Lorg/apache/commons/math/util/FastMath;->splitMult([D[D[D)V

    .line 996
    aget-wide v5, v0, p1

    aput-wide v5, v2, p1

    .line 997
    aget-wide v5, v0, p0

    aput-wide v5, v2, p0

    .line 999
    sget-object v5, Lorg/apache/commons/math/util/FastMath;->FACT:[D

    aget-wide v5, v5, v4

    invoke-static {v5, v6, v0}, Lorg/apache/commons/math/util/FastMath;->split(D[D)V

    .line 1000
    invoke-static {v0, v3}, Lorg/apache/commons/math/util/FastMath;->splitReciprocal([D[D)V

    .line 1002
    invoke-static {v2, v3, v0}, Lorg/apache/commons/math/util/FastMath;->splitAdd([D[D[D)V

    .line 1003
    aget-wide v5, v0, p1

    aput-wide v5, v2, p1

    .line 1004
    aget-wide v5, v0, p0

    aput-wide v5, v2, p0

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 1008
    aget-wide v0, v2, p1

    aput-wide v0, p2, p1

    .line 1009
    aget-wide v0, v2, p0

    aput-wide v0, p2, p0

    .line 1012
    :cond_1
    aget-wide p1, v2, p1

    aget-wide v0, v2, p0

    add-double/2addr p1, v0

    return-wide p1
.end method

.method public static split(D[D)V
    .locals 7

    const-wide v0, 0x7dfe94c85c298c4cL    # 8.0E298

    cmpg-double v0, p0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/high16 v3, 0x41d0000000000000L    # 1.073741824E9

    if-gez v0, :cond_0

    const-wide v5, -0x2016b37a3d673b4L    # -8.0E298

    cmpl-double v0, p0, v5

    if-lez v0, :cond_0

    mul-double/2addr v3, p0

    add-double v5, p0, v3

    sub-double/2addr v5, v3

    .line 1023
    aput-wide v5, p2, v2

    sub-double/2addr p0, v5

    .line 1024
    aput-wide p0, p2, v1

    return-void

    :cond_0
    const-wide/high16 v5, 0x3e10000000000000L    # 9.313225746154785E-10

    mul-double/2addr v5, p0

    add-double/2addr v5, p0

    sub-double/2addr v5, p0

    mul-double/2addr v5, v3

    .line 1027
    aput-wide v5, p2, v2

    sub-double/2addr p0, v5

    .line 1028
    aput-wide p0, p2, v1

    return-void
.end method

.method public static splitAdd([D[D[D)V
    .locals 5

    const/4 v0, 0x0

    .line 1070
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x1

    .line 1071
    aget-wide v1, p0, v0

    aget-wide p0, p1, v0

    add-double/2addr v1, p0

    aput-wide v1, p2, v0

    .line 1073
    invoke-static {p2}, Lorg/apache/commons/math/util/FastMath;->resplit([D)V

    return-void
.end method

.method public static splitMult([D[D[D)V
    .locals 8

    const/4 v0, 0x0

    .line 1057
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    mul-double/2addr v1, v3

    aput-wide v1, p2, v0

    .line 1058
    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p1, v3

    mul-double/2addr v1, v4

    aget-wide v6, p0, v3

    aget-wide p0, p1, v0

    mul-double/2addr p0, v6

    add-double/2addr v1, p0

    mul-double/2addr v6, v4

    add-double/2addr v1, v6

    aput-wide v1, p2, v3

    .line 1061
    invoke-static {p2}, Lorg/apache/commons/math/util/FastMath;->resplit([D)V

    return-void
.end method

.method public static splitReciprocal([D[D)V
    .locals 13

    const/4 v0, 0x0

    .line 1098
    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1099
    aget-wide v5, p0, v2

    aput-wide v5, p0, v0

    .line 1100
    aput-wide v3, p0, v2

    .line 1103
    :cond_0
    aget-wide v5, p0, v0

    const-wide v7, 0x3fefffff80000000L    # 0.9999997615814209

    div-double v5, v7, v5

    aput-wide v5, p1, v0

    .line 1104
    aget-wide v5, p0, v0

    const-wide/high16 v9, 0x3e90000000000000L    # 2.384185791015625E-7

    mul-double/2addr v9, v5

    aget-wide v11, p0, v2

    mul-double/2addr v7, v11

    sub-double/2addr v9, v7

    mul-double v7, v5, v5

    mul-double/2addr v5, v11

    add-double/2addr v7, v5

    div-double/2addr v9, v7

    aput-wide v9, p1, v2

    cmpl-double v1, v9, v9

    if-eqz v1, :cond_1

    .line 1107
    aput-wide v3, p1, v2

    .line 1111
    :cond_1
    invoke-static {p1}, Lorg/apache/commons/math/util/FastMath;->resplit([D)V

    move v1, v0

    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_2

    .line 1115
    aget-wide v3, p1, v0

    aget-wide v5, p0, v0

    mul-double v7, v3, v5

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v9, v7

    aget-wide v7, p0, v2

    mul-double v11, v3, v7

    sub-double/2addr v9, v11

    aget-wide v11, p1, v2

    mul-double/2addr v5, v11

    sub-double/2addr v9, v5

    mul-double/2addr v7, v11

    sub-double/2addr v9, v7

    add-double/2addr v3, v11

    mul-double/2addr v9, v3

    add-double/2addr v11, v9

    .line 1120
    aput-wide v11, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
