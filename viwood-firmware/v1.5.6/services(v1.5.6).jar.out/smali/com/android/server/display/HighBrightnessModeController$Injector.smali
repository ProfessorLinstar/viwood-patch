.class public Lcom/android/server/display/HighBrightnessModeController$Injector;
.super Ljava/lang/Object;
.source "HighBrightnessModeController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClock()Lcom/android/server/display/DisplayManagerService$Clock;
    .locals 0

    .line 723
    new-instance p0, Lcom/android/server/display/HighBrightnessModeController$Injector$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController$Injector$$ExternalSyntheticLambda0;-><init>()V

    return-object p0
.end method

.method public reportHbmStateChange(III)V
    .locals 0

    const/16 p0, 0x1a0

    .line 727
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    return-void
.end method
