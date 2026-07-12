.class public Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;
.super Ljava/lang/Object;
.source "CriticalEventLog.java"


# instance fields
.field public mTraceProcessClassEnum:I

.field public mTraceProcessName:Ljava/lang/String;

.field public mTraceUid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput p1, p0, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->mTraceProcessClassEnum:I

    .line 483
    iput-object p2, p0, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->mTraceProcessName:Ljava/lang/String;

    .line 484
    iput p3, p0, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->mTraceUid:I

    return-void
.end method

.method public static sanitizeAnr(Lcom/android/server/criticalevents/nano/CriticalEventProto;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .locals 2

    .line 526
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;-><init>()V

    .line 528
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getAnr()Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    move-result-object v1

    iget v1, v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->processClass:I

    iput v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->processClass:I

    .line 529
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getAnr()Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    move-result-object v1

    iget v1, v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->uid:I

    iput v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->uid:I

    .line 530
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getAnr()Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    move-result-object v1

    iget v1, v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->pid:I

    iput v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->pid:I

    .line 532
    invoke-static {p0}, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->sanitizeCriticalEventProto(Lcom/android/server/criticalevents/nano/CriticalEventProto;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    move-result-object p0

    .line 533
    invoke-virtual {p0, v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setAnr(Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    return-object p0
.end method

.method public static sanitizeCriticalEventProto(Lcom/android/server/criticalevents/nano/CriticalEventProto;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .locals 3

    .line 562
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    .line 563
    iget-wide v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    iput-wide v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    return-object v0
.end method

.method public static sanitizeJavaCrash(Lcom/android/server/criticalevents/nano/CriticalEventProto;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .locals 2

    .line 538
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;-><init>()V

    .line 540
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getJavaCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    move-result-object v1

    iget v1, v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->processClass:I

    iput v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->processClass:I

    .line 541
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getJavaCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    move-result-object v1

    iget v1, v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->uid:I

    iput v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->uid:I

    .line 542
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getJavaCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    move-result-object v1

    iget v1, v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->pid:I

    iput v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->pid:I

    .line 544
    invoke-static {p0}, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->sanitizeCriticalEventProto(Lcom/android/server/criticalevents/nano/CriticalEventProto;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    move-result-object p0

    .line 545
    invoke-virtual {p0, v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setJavaCrash(Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    return-object p0
.end method

.method public static sanitizeNativeCrash(Lcom/android/server/criticalevents/nano/CriticalEventProto;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .locals 2

    .line 550
    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;-><init>()V

    .line 552
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getNativeCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    move-result-object v1

    iget v1, v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->processClass:I

    iput v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->processClass:I

    .line 553
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getNativeCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    move-result-object v1

    iget v1, v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->uid:I

    iput v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->uid:I

    .line 554
    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getNativeCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    move-result-object v1

    iget v1, v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->pid:I

    iput v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->pid:I

    .line 556
    invoke-static {p0}, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->sanitizeCriticalEventProto(Lcom/android/server/criticalevents/nano/CriticalEventProto;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    move-result-object p0

    .line 557
    invoke-virtual {p0, v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setNativeCrash(Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    return-object p0
.end method


# virtual methods
.method public process(Lcom/android/server/criticalevents/nano/CriticalEventProto;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .locals 3

    .line 494
    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->hasAnr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getAnr()Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    move-result-object v0

    .line 496
    iget v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->processClass:I

    iget-object v2, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->process:Ljava/lang/String;

    iget v0, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->uid:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->shouldSanitize(ILjava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 497
    invoke-static {p1}, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->sanitizeAnr(Lcom/android/server/criticalevents/nano/CriticalEventProto;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    move-result-object p0

    return-object p0

    .line 499
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->hasJavaCrash()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getJavaCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    move-result-object v0

    .line 501
    iget v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->processClass:I

    iget-object v2, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->process:Ljava/lang/String;

    iget v0, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;->uid:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->shouldSanitize(ILjava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 502
    invoke-static {p1}, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->sanitizeJavaCrash(Lcom/android/server/criticalevents/nano/CriticalEventProto;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    move-result-object p0

    return-object p0

    .line 504
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->hasNativeCrash()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 505
    invoke-virtual {p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->getNativeCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    move-result-object v0

    .line 506
    iget v1, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->processClass:I

    iget-object v2, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->process:Ljava/lang/String;

    iget v0, v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->uid:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->shouldSanitize(ILjava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 507
    invoke-static {p1}, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->sanitizeNativeCrash(Lcom/android/server/criticalevents/nano/CriticalEventProto;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p1
.end method

.method public final shouldSanitize(ILjava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 515
    iget-object v2, p0, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->mTraceProcessName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->mTraceUid:I

    if-ne p2, p3, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-ne p1, v1, :cond_1

    .line 520
    iget p0, p0, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->mTraceProcessClassEnum:I

    if-ne p0, v1, :cond_1

    if-nez p2, :cond_1

    return v1

    :cond_1
    return v0
.end method
