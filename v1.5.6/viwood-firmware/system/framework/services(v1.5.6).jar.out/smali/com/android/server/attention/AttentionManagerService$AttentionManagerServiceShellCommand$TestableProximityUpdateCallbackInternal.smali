.class public Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;
.super Ljava/lang/Object;
.source "AttentionManagerService.java"

# interfaces
.implements Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;


# instance fields
.field public mLastCallbackCode:D


# direct methods
.method public constructor <init>(Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;)V
    .locals 2

    .line 952
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 953
    iput-wide v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;->mLastCallbackCode:D

    return-void
.end method


# virtual methods
.method public getLastCallbackCode()D
    .locals 2

    .line 965
    iget-wide v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;->mLastCallbackCode:D

    return-wide v0
.end method

.method public onProximityUpdate(D)V
    .locals 0

    .line 957
    iput-wide p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;->mLastCallbackCode:D

    return-void
.end method

.method public reset()V
    .locals 2

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 961
    iput-wide v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableProximityUpdateCallbackInternal;->mLastCallbackCode:D

    return-void
.end method
