.class public abstract Lcom/android/server/am/BaseAppStatePolicy;
.super Ljava/lang/Object;
.source "BaseAppStatePolicy.java"


# instance fields
.field public final mDefaultTrackerEnabled:Z

.field public final mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

.field public final mKeyTrackerEnabled:Ljava/lang/String;

.field public final mTracker:Lcom/android/server/am/BaseAppStateTracker;

.field public volatile mTrackerEnabled:Z


# direct methods
.method public constructor <init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/BaseAppStateTracker;Ljava/lang/String;Z)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/server/am/BaseAppStatePolicy;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 59
    iput-object p2, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 60
    iput-object p3, p0, Lcom/android/server/am/BaseAppStatePolicy;->mKeyTrackerEnabled:Ljava/lang/String;

    .line 61
    iput-boolean p4, p0, Lcom/android/server/am/BaseAppStatePolicy;->mDefaultTrackerEnabled:Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    .line 129
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 130
    iget-object p2, p0, Lcom/android/server/am/BaseAppStatePolicy;->mKeyTrackerEnabled:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p2, 0x3d

    .line 131
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(C)V

    .line 132
    iget-boolean p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public getProposedRestrictionLevel(Ljava/lang/String;II)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 109
    iget-boolean p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    return p0
.end method

.method public onPropertiesChanged(Ljava/lang/String;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mKeyTrackerEnabled:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStatePolicy;->updateTrackerEnabled()V

    :cond_0
    return-void
.end method

.method public onSystemReady()V
    .locals 0

    .line 102
    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStatePolicy;->updateTrackerEnabled()V

    return-void
.end method

.method public abstract onTrackerEnabled(Z)V
.end method

.method public shouldExemptUid(I)I
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->getBackgroundRestrictionExemptionReason(I)I

    move-result p0

    return p0
.end method

.method public updateTrackerEnabled()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mKeyTrackerEnabled:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/server/am/BaseAppStatePolicy;->mDefaultTrackerEnabled:Z

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 68
    iget-boolean v1, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    if-eq v0, v1, :cond_0

    .line 69
    iput-boolean v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    .line 70
    invoke-virtual {p0, v0}, Lcom/android/server/am/BaseAppStatePolicy;->onTrackerEnabled(Z)V

    :cond_0
    return-void
.end method
