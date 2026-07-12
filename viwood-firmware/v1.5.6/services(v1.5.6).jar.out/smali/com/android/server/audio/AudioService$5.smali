.class public Lcom/android/server/audio/AudioService$5;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "AudioService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .line 1773
    iput-object p1, p0, Lcom/android/server/audio/AudioService$5;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 7

    .line 1776
    const-string v0, "AS.AudioService"

    const-string/jumbo v1, "onSubscriptionsChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    iget-object p0, p0, Lcom/android/server/audio/AudioService$5;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v1, 0x36

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method
