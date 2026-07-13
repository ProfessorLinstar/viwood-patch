.class public Lcom/android/server/UiModeManagerService$Injector;
.super Ljava/lang/Object;
.source "UiModeManagerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallingUid()I
    .locals 0

    .line 2466
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    return p0
.end method

.method public startDreamWhenDockedIfAppropriate(Landroid/content/Context;)V
    .locals 0

    .line 2470
    invoke-static {p1}, Landroid/service/dreams/Sandman;->startDreamWhenDockedIfAppropriate(Landroid/content/Context;)V

    return-void
.end method
