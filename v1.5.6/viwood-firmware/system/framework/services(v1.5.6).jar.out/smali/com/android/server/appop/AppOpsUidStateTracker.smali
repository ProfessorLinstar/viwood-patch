.class public interface abstract Lcom/android/server/appop/AppOpsUidStateTracker;
.super Ljava/lang/Object;
.source "AppOpsUidStateTracker.java"


# direct methods
.method public static processStateToUidState(I)I
    .locals 3

    .line 0
    const/4 v0, -0x1

    const/16 v1, 0x2bc

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-gt p0, v0, :cond_1

    const/16 p0, 0x64

    return p0

    :cond_1
    const/4 v0, 0x2

    if-gt p0, v0, :cond_2

    const/16 p0, 0xc8

    return p0

    :cond_2
    const/4 v0, 0x3

    const/16 v2, 0x1f4

    if-gt p0, v0, :cond_3

    return v2

    :cond_3
    const/4 v0, 0x4

    if-gt p0, v0, :cond_4

    const/16 p0, 0x190

    return p0

    :cond_4
    const/4 v0, 0x5

    if-gt p0, v0, :cond_5

    return v2

    :cond_5
    const/16 v0, 0xb

    if-gt p0, v0, :cond_6

    const/16 p0, 0x258

    return p0

    :cond_6
    const/16 v0, 0x14

    if-ge p0, v0, :cond_7

    return v1

    :cond_7
    const p0, 0x7fffffff

    return p0
.end method


# virtual methods
.method public abstract addUidStateChangedCallback(Ljava/util/concurrent/Executor;Lcom/android/server/appop/AppOpsUidStateTracker$UidStateChangedCallback;)V
.end method

.method public abstract dumpEvents(Ljava/io/PrintWriter;)V
.end method

.method public abstract dumpUidState(Ljava/io/PrintWriter;IJ)V
.end method

.method public abstract evalMode(III)I
.end method

.method public abstract getUidState(I)I
.end method

.method public abstract isUidInForeground(I)Z
.end method

.method public abstract updateAppWidgetVisibility(Landroid/util/SparseArray;Z)V
.end method

.method public abstract updateUidProcState(III)V
.end method
