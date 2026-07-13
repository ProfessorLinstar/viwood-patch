.class public final Lcom/android/server/am/AppMediaSessionTracker$AppMediaSessionPolicy;
.super Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;
.source "AppMediaSessionTracker.java"


# direct methods
.method public static synthetic $r8$lambda$vU9Y6O_Ak5yd1fFgiQvvDQnuaxQ(Lcom/android/server/am/AppMediaSessionTracker;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/am/AppMediaSessionTracker;->-$$Nest$mtrimDurations(Lcom/android/server/am/AppMediaSessionTracker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/AppMediaSessionTracker;)V
    .locals 8

    .line 202
    const-string v5, "bg_media_session_monitor_max_tracking_duration"

    const-wide/32 v6, 0x14997000

    const-string v3, "bg_media_session_monitor_enabled"

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/BaseAppStateEventsTracker;Ljava/lang/String;ZLjava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 227
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 228
    const-string v0, "APP MEDIA SESSION TRACKER POLICY SETTINGS:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public getExemptionReasonString(Ljava/lang/String;II)Ljava/lang/String;
    .locals 0

    .line 222
    const-string/jumbo p0, "n/a"

    return-object p0
.end method

.method public onMaxTrackingDurationChanged(J)V
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    move-object p1, p0

    check-cast p1, Lcom/android/server/am/AppMediaSessionTracker;

    iget-object p1, p1, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Landroid/os/Handler;

    check-cast p0, Lcom/android/server/am/AppMediaSessionTracker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/android/server/am/AppMediaSessionTracker$AppMediaSessionPolicy$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/am/AppMediaSessionTracker$AppMediaSessionPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppMediaSessionTracker;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTrackerEnabled(Z)V
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast p0, Lcom/android/server/am/AppMediaSessionTracker;

    invoke-static {p0, p1}, Lcom/android/server/am/AppMediaSessionTracker;->-$$Nest$monBgMediaSessionMonitorEnabled(Lcom/android/server/am/AppMediaSessionTracker;Z)V

    return-void
.end method
