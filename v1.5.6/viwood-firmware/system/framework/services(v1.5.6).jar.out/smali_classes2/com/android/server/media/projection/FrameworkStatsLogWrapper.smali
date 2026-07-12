.class public Lcom/android/server/media/projection/FrameworkStatsLogWrapper;
.super Ljava/lang/Object;
.source "FrameworkStatsLogWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeStateChanged(IIIIIIIII)V
    .locals 0

    .line 35
    invoke-static/range {p1 .. p9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIIII)V

    return-void
.end method

.method public writeTargetChanged(IIIIIIIIIII)V
    .locals 0

    .line 60
    invoke-static/range {p1 .. p11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIIIIII)V

    return-void
.end method
