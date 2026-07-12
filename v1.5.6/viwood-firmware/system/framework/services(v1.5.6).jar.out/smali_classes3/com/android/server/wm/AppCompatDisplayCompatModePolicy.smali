.class public Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;
.super Ljava/lang/Object;
.source "AppCompatDisplayCompatModePolicy.java"


# instance fields
.field public mIsRestartMenuEnabledForDisplayMove:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isRestartMenuEnabledForDisplayMove()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onMovedToDisplay()V
    .locals 1

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;->mIsRestartMenuEnabledForDisplayMove:Z

    return-void
.end method

.method public onProcessRestarted()V
    .locals 1

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;->mIsRestartMenuEnabledForDisplayMove:Z

    return-void
.end method
