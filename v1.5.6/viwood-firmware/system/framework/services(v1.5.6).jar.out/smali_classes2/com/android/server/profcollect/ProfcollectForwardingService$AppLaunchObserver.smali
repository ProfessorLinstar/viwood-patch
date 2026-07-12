.class public Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;
.super Lcom/android/server/wm/ActivityMetricsLaunchObserver;
.source "ProfcollectForwardingService.java"


# direct methods
.method public constructor <init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V
    .locals 0

    .line 383
    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/profcollect/ProfcollectForwardingService;Lcom/android/server/profcollect/ProfcollectForwardingService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    return-void
.end method


# virtual methods
.method public onIntentStarted(Landroid/content/Intent;J)V
    .locals 0

    .line 386
    const-string p0, "applaunch_trace_freq"

    const/4 p1, 0x5

    invoke-static {p0, p1}, Lcom/android/server/profcollect/Utils;->withFrequency(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 387
    invoke-static {}, Lcom/android/server/profcollect/ProfcollectForwardingService;->-$$Nest$sfgetsIProfcollect()Lcom/android/server/profcollect/IProfCollectd;

    move-result-object p0

    const-string p1, "applaunch"

    invoke-static {p0, p1}, Lcom/android/server/profcollect/Utils;->traceSystem(Lcom/android/server/profcollect/IProfCollectd;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
