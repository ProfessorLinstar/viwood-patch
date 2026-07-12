.class public Lcom/android/server/power/WakeLockLog$Injector;
.super Ljava/lang/Object;
.source "WakeLockLog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 2

    .line 1430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateFormat()Ljava/text/SimpleDateFormat;
    .locals 0

    .line 1434
    invoke-static {}, Lcom/android/server/power/WakeLockLog;->-$$Nest$sfgetDATE_FORMAT()Ljava/text/SimpleDateFormat;

    move-result-object p0

    return-object p0
.end method

.method public getLogSize()I
    .locals 0

    .line 0
    const/16 p0, 0xc00

    return p0
.end method

.method public getTagDatabaseSize()I
    .locals 0

    .line 0
    const/16 p0, 0x40

    return p0
.end method

.method public getTagDatabaseStartingSize()I
    .locals 0

    .line 0
    const/16 p0, 0x10

    return p0
.end method
