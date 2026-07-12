.class public abstract Lcom/android/server/ENotePopWindowManagerService$ENotePopWindowManagerServiceInternal;
.super Ljava/lang/Object;
.source "ENotePopWindowManagerService.java"


# direct methods
.method public constructor <init>(Lcom/android/server/ENotePopWindowManagerService;)V
    .locals 0

    .line 1071
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract dissmissPluggedInPopupWindowIfShowing()V
.end method

.method public abstract isSleepWallpaperShowed()Z
.end method

.method public abstract onConfigurationChanged()V
.end method

.method public abstract onKeyguardShowing(Z)V
.end method

.method public abstract showPluggedInPopupWindowAutoDissmiss()V
.end method

.method public abstract updateBatteryState(IIZ)V
.end method
