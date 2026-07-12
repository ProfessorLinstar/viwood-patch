.class public final Lcom/android/server/permission/access/permission/PermissionFlags;
.super Ljava/lang/Object;
.source "PermissionFlags.kt"


# static fields
.field public static final INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-direct {v0}, Lcom/android/server/permission/access/permission/PermissionFlags;-><init>()V

    sput-object v0, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final flagToString(I)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    sparse-switch p1, :sswitch_data_0

    .line 529
    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/UInt;->constructor-impl(I)I

    move-result p0

    const/16 p1, 0x10

    invoke-static {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/text/UStringsKt;->toString-V7xB4Y4(II)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "toUpperCase(...)"

    invoke-static {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 528
    :sswitch_0
    const-string p0, "USER_SELECTED"

    return-object p0

    .line 527
    :sswitch_1
    const-string p0, "HIBERNATION"

    return-object p0

    .line 526
    :sswitch_2
    const-string p0, "ONE_TIME"

    return-object p0

    .line 525
    :sswitch_3
    const-string p0, "APP_OP_REVOKED"

    return-object p0

    .line 524
    :sswitch_4
    const-string p0, "SOFT_RESTRICTED"

    return-object p0

    .line 523
    :sswitch_5
    const-string p0, "RESTRICTION_REVOKED"

    return-object p0

    .line 522
    :sswitch_6
    const-string p0, "UPGRADE_EXEMPT"

    return-object p0

    .line 521
    :sswitch_7
    const-string p0, "SYSTEM_EXEMPT"

    return-object p0

    .line 520
    :sswitch_8
    const-string p0, "INSTALLER_EXEMPT"

    return-object p0

    .line 519
    :sswitch_9
    const-string p0, "USER_SENSITIVE_WHEN_REVOKED"

    return-object p0

    .line 518
    :sswitch_a
    const-string p0, "USER_SENSITIVE_WHEN_GRANTED"

    return-object p0

    .line 517
    :sswitch_b
    const-string p0, "IMPLICIT"

    return-object p0

    .line 516
    :sswitch_c
    const-string p0, "IMPLICIT_GRANTED"

    return-object p0

    .line 515
    :sswitch_d
    const-string p0, "LEGACY_GRANTED"

    return-object p0

    .line 514
    :sswitch_e
    const-string p0, "PREGRANT"

    return-object p0

    .line 513
    :sswitch_f
    const-string p0, "SYSTEM_FIXED"

    return-object p0

    .line 512
    :sswitch_10
    const-string p0, "POLICY_FIXED"

    return-object p0

    .line 511
    :sswitch_11
    const-string p0, "USER_FIXED"

    return-object p0

    .line 510
    :sswitch_12
    const-string p0, "USER_SET"

    return-object p0

    .line 509
    :sswitch_13
    const-string p0, "RUNTIME_GRANTED"

    return-object p0

    .line 508
    :sswitch_14
    const-string p0, "ROLE"

    return-object p0

    .line 507
    :sswitch_15
    const-string p0, "PROTECTION_GRANTED"

    return-object p0

    .line 506
    :cond_0
    const-string p0, "INSTALL_REVOKED"

    return-object p0

    .line 505
    :cond_1
    const-string p0, "INSTALL_GRANTED"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_15
        0x8 -> :sswitch_14
        0x10 -> :sswitch_13
        0x20 -> :sswitch_12
        0x40 -> :sswitch_11
        0x80 -> :sswitch_10
        0x100 -> :sswitch_f
        0x200 -> :sswitch_e
        0x400 -> :sswitch_d
        0x800 -> :sswitch_c
        0x1000 -> :sswitch_b
        0x2000 -> :sswitch_a
        0x4000 -> :sswitch_9
        0x8000 -> :sswitch_8
        0x10000 -> :sswitch_7
        0x20000 -> :sswitch_6
        0x40000 -> :sswitch_5
        0x80000 -> :sswitch_4
        0x100000 -> :sswitch_3
        0x200000 -> :sswitch_2
        0x400000 -> :sswitch_1
        0x800000 -> :sswitch_0
    .end sparse-switch
.end method

.method public final fromApiFlags(ILcom/android/server/permission/access/permission/Permission;I)I
    .locals 5

    and-int/lit8 p0, p3, 0x7

    const v0, 0x8000

    .line 438
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 p0, p0, 0x8

    :cond_0
    and-int/lit8 v1, p3, 0x10

    or-int/2addr p0, v1

    const/4 v1, 0x1

    .line 442
    invoke-static {p1, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 p0, p0, 0x20

    :cond_1
    const/4 v1, 0x2

    .line 445
    invoke-static {p1, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 p0, p0, 0x40

    :cond_2
    const/4 v1, 0x4

    .line 448
    invoke-static {p1, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_3

    or-int/lit16 p0, p0, 0x80

    :cond_3
    const/16 v2, 0x10

    .line 451
    invoke-static {p1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_4

    or-int/lit16 p0, p0, 0x100

    :cond_4
    const/16 v2, 0x20

    .line 454
    invoke-static {p1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_5

    or-int/lit16 p0, p0, 0x200

    :cond_5
    and-int/lit16 v2, p3, 0x400

    or-int/2addr p0, v2

    const/16 v2, 0x800

    and-int/2addr p3, v2

    or-int/2addr p0, p3

    const/16 p3, 0x40

    .line 460
    invoke-static {p1, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p3

    if-nez p3, :cond_6

    const/16 p3, 0x80

    .line 461
    invoke-static {p1, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p3

    if-eqz p3, :cond_7

    :cond_6
    or-int/lit16 p0, p0, 0x1000

    :cond_7
    const/16 p3, 0x100

    .line 465
    invoke-static {p1, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p3

    if-eqz p3, :cond_8

    or-int/lit16 p0, p0, 0x2000

    :cond_8
    const/16 p3, 0x200

    .line 468
    invoke-static {p1, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p3

    if-eqz p3, :cond_9

    or-int/lit16 p0, p0, 0x4000

    .line 471
    :cond_9
    invoke-static {p1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p3

    if-eqz p3, :cond_a

    or-int/2addr p0, v0

    :cond_a
    const/16 p3, 0x1000

    .line 474
    invoke-static {p1, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p3

    const/high16 v0, 0x10000

    if-eqz p3, :cond_b

    or-int/2addr p0, v0

    :cond_b
    const/16 p3, 0x2000

    .line 477
    invoke-static {p1, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p3

    const/high16 v2, 0x20000

    if-eqz p3, :cond_c

    or-int/2addr p0, v2

    :cond_c
    const/16 p3, 0x4000

    .line 480
    invoke-static {p1, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p3

    const/high16 v3, 0x80000

    const/16 v4, 0x8

    if-eqz p3, :cond_e

    .line 132
    invoke-virtual {p2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p3

    iget p3, p3, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-static {p3, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p3

    if-eqz p3, :cond_d

    const/high16 p3, 0x40000

    or-int/2addr p0, p3

    .line 138
    :cond_d
    invoke-virtual {p2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-static {p2, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p2

    if-eqz p2, :cond_e

    or-int/2addr p0, v3

    .line 488
    :cond_e
    invoke-static {p1, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p2

    if-eqz p2, :cond_f

    const/high16 p2, 0x100000

    or-int/2addr p0, p2

    .line 491
    :cond_f
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p2

    if-eqz p2, :cond_10

    const/high16 p2, 0x200000

    or-int/2addr p0, p2

    .line 494
    :cond_10
    invoke-static {p1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p2

    if-eqz p2, :cond_11

    const/high16 p2, 0x400000

    or-int/2addr p0, p2

    .line 497
    :cond_11
    invoke-static {p1, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p1

    if-eqz p1, :cond_12

    const/high16 p1, 0x800000

    or-int/2addr p0, p1

    :cond_12
    return p0
.end method

.method public final isAppOpGranted(I)Z
    .locals 1

    .line 350
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/high16 p0, 0xc0000

    .line 353
    invoke-static {p1, p0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/high16 p0, 0x100000

    .line 356
    invoke-static {p1, p0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final isPermissionGranted(I)Z
    .locals 2

    const/4 p0, 0x1

    .line 331
    invoke-static {p1, p0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return p0

    :cond_0
    const/4 v0, 0x2

    .line 334
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x4

    .line 337
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_2

    return p0

    :cond_2
    const/16 v0, 0x400

    .line 340
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x800

    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/high16 p0, 0x40000

    .line 343
    invoke-static {p1, p0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/16 p0, 0x10

    .line 346
    invoke-static {p1, p0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    :cond_5
    :goto_0
    return p0
.end method

.method public final toApiFlags(I)I
    .locals 5

    const/16 p0, 0x20

    .line 364
    invoke-static {p1, p0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    const/16 v0, 0x40

    .line 367
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 p0, p0, 0x2

    :cond_0
    const/16 v1, 0x80

    .line 370
    invoke-static {p1, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_1

    or-int/lit8 p0, p0, 0x4

    :cond_1
    const/16 v2, 0x100

    .line 373
    invoke-static {p1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_2

    or-int/lit8 p0, p0, 0x10

    :cond_2
    const/16 v2, 0x200

    .line 376
    invoke-static {p1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_3

    or-int/lit8 p0, p0, 0x20

    :cond_3
    const/16 v2, 0x1000

    .line 379
    invoke-static {p1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x400

    .line 382
    invoke-static {p1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    or-int/2addr p0, v0

    :cond_5
    const/16 v0, 0x2000

    .line 388
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_6

    or-int/lit16 p0, p0, 0x100

    :cond_6
    const/16 v0, 0x4000

    .line 391
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_7

    or-int/lit16 p0, p0, 0x200

    :cond_7
    const v0, 0x8000

    .line 394
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_8

    or-int/lit16 p0, p0, 0x800

    :cond_8
    const/high16 v1, 0x10000

    .line 397
    invoke-static {p1, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_9

    or-int/lit16 p0, p0, 0x1000

    :cond_9
    const/high16 v2, 0x20000

    .line 400
    invoke-static {p1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-eqz v3, :cond_a

    or-int/lit16 p0, p0, 0x2000

    :cond_a
    const/high16 v3, 0x40000

    .line 403
    invoke-static {p1, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    const/high16 v4, 0x80000

    if-nez v3, :cond_b

    invoke-static {p1, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    or-int/lit16 p0, p0, 0x4000

    :cond_c
    const/16 v3, 0x8

    .line 406
    invoke-static {p1, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-eqz v3, :cond_d

    or-int/2addr p0, v0

    :cond_d
    const/high16 v0, 0x100000

    .line 409
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_e

    or-int/lit8 p0, p0, 0x8

    :cond_e
    const/high16 v0, 0x200000

    .line 412
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_f

    or-int/2addr p0, v1

    :cond_f
    const/high16 v0, 0x400000

    .line 415
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_10

    or-int/2addr p0, v2

    :cond_10
    const/high16 v0, 0x800000

    .line 418
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p1

    if-eqz p1, :cond_11

    or-int/2addr p0, v4

    :cond_11
    return p0
.end method

.method public final toString(I)Ljava/lang/String;
    .locals 2

    .line 27
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    shl-int/2addr v0, v1

    .line 31
    invoke-static {p1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result p1

    .line 532
    sget-object v1, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v1, v0}, Lcom/android/server/permission/access/permission/PermissionFlags;->flagToString(I)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/16 v0, 0x7c

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 37
    :cond_1
    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateFlags(Lcom/android/server/permission/access/permission/Permission;III)I
    .locals 1

    .line 428
    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/permission/PermissionFlags;->toApiFlags(I)I

    move-result v0

    .line 429
    invoke-static {v0, p3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v0

    and-int/2addr p3, p4

    or-int/2addr p3, v0

    .line 430
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/permission/access/permission/PermissionFlags;->fromApiFlags(ILcom/android/server/permission/access/permission/Permission;I)I

    move-result p0

    return p0
.end method

.method public final updateRuntimePermissionGranted(IZ)I
    .locals 0

    const/16 p0, 0x10

    if-eqz p2, :cond_0

    or-int/2addr p0, p1

    return p0

    .line 425
    :cond_0
    invoke-static {p1, p0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result p0

    return p0
.end method
