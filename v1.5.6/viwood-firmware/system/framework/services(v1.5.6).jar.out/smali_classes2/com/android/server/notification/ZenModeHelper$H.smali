.class public final Lcom/android/server/notification/ZenModeHelper$H;
.super Landroid/os/Handler;
.source "ZenModeHelper.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method public static bridge synthetic -$$Nest$mpostApplyDeviceEffects(Lcom/android/server/notification/ZenModeHelper$H;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper$H;->postApplyDeviceEffects(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostDispatchOnZenModeChanged(Lcom/android/server/notification/ZenModeHelper$H;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper$H;->postDispatchOnZenModeChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostMetricsTimer(Lcom/android/server/notification/ZenModeHelper$H;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper$H;->postMetricsTimer()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostUpdateRingerAndAudio(Lcom/android/server/notification/ZenModeHelper$H;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper$H;->postUpdateRingerAndAudio(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;)V
    .locals 0

    .line 2959
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    .line 2960
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;Lcom/android/server/notification/ZenModeHelper-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ZenModeHelper$H;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 2990
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/4 p1, 0x7

    if-eq v0, p1, :cond_1

    const/16 p1, 0x8

    if-eq v0, p1, :cond_0

    return-void

    .line 3001
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$mupdateRingerAndAudio(Lcom/android/server/notification/ZenModeHelper;Z)V

    return-void

    .line 2998
    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {p0, v1}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$mupdateRingerAndAudio(Lcom/android/server/notification/ZenModeHelper;Z)V

    return-void

    .line 3004
    :cond_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 3005
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$mapplyConsolidatedDeviceEffects(Lcom/android/server/notification/ZenModeHelper;I)V

    return-void

    .line 2995
    :cond_3
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {p0}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$fgetmMetrics(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$Metrics;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->-$$Nest$memit(Lcom/android/server/notification/ZenModeHelper$Metrics;)V

    return-void

    .line 2992
    :cond_4
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {p0}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$mdispatchOnZenModeChanged(Lcom/android/server/notification/ZenModeHelper;)V

    return-void
.end method

.method public final postApplyDeviceEffects(I)V
    .locals 2

    const/4 v0, 0x6

    .line 2984
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    .line 2985
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final postDispatchOnZenModeChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 2964
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2965
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final postMetricsTimer()V
    .locals 3

    const/4 v0, 0x2

    .line 2969
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/32 v1, 0x1499700

    .line 2970
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final postUpdateRingerAndAudio(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    .line 2975
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2976
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    const/16 p1, 0x8

    .line 2978
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2979
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
