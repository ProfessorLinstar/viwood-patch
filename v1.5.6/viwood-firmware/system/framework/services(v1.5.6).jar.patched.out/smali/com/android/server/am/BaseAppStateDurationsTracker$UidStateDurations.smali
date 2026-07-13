.class public Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;
.super Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
.source "BaseAppStateDurationsTracker.java"


# direct methods
.method public constructor <init>(ILcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;)V
    .locals 1

    .line 263
    const-string v0, ""

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;-><init>(ILjava/lang/String;Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;)V

    return-void
.end method
